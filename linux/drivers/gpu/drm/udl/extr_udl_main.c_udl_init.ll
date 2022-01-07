; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_main.c_udl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_main.c_udl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_device = type { %struct.TYPE_2__, i32, i32, %struct.drm_device }
%struct.TYPE_2__ = type { i64 }
%struct.drm_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"firmware not recognized. Assume incompatible device\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Selecting channel failed\0A\00", align 1
@WRITES_IN_FLIGHT = common dso_local global i32 0, align 4
@MAX_TRANSFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"udl_alloc_urb_list failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udl_init(%struct.udl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udl_device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.udl_device* %0, %struct.udl_device** %3, align 8
  %6 = load %struct.udl_device*, %struct.udl_device** %3, align 8
  %7 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %6, i32 0, i32 3
  store %struct.drm_device* %7, %struct.drm_device** %4, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.udl_device*, %struct.udl_device** %3, align 8
  %12 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %11, i32 0, i32 2
  %13 = call i32 @mutex_init(i32* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = load %struct.udl_device*, %struct.udl_device** %3, align 8
  %16 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @udl_parse_vendor_descriptor(%struct.drm_device* %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  %23 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %54

24:                                               ; preds = %1
  %25 = load %struct.udl_device*, %struct.udl_device** %3, align 8
  %26 = call i64 @udl_select_std_channel(%struct.udl_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = load i32, i32* @WRITES_IN_FLIGHT, align 4
  %33 = load i32, i32* @MAX_TRANSFER, align 4
  %34 = call i32 @udl_alloc_urb_list(%struct.drm_device* %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %54

38:                                               ; preds = %30
  %39 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = call i32 @udl_modeset_init(%struct.drm_device* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %54

45:                                               ; preds = %38
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = call i32 @udl_fbdev_init(%struct.drm_device* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %54

51:                                               ; preds = %45
  %52 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %53 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %52)
  store i32 0, i32* %2, align 4
  br label %67

54:                                               ; preds = %50, %44, %36, %20
  %55 = load %struct.udl_device*, %struct.udl_device** %3, align 8
  %56 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %62 = call i32 @udl_free_urb_list(%struct.drm_device* %61)
  br label %63

63:                                               ; preds = %60, %54
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %51
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @udl_parse_vendor_descriptor(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i64 @udl_select_std_channel(%struct.udl_device*) #1

declare dso_local i32 @udl_alloc_urb_list(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @udl_modeset_init(%struct.drm_device*) #1

declare dso_local i32 @udl_fbdev_init(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @udl_free_urb_list(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
