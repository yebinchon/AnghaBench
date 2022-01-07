; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_writeback.c_create_writeback_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_writeback.c_create_writeback_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_property*, %struct.drm_property*, %struct.drm_property* }
%struct.drm_property = type { i32 }

@DRM_MODE_PROP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"WRITEBACK_FB_ID\00", align 1
@DRM_MODE_OBJECT_FB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MODE_PROP_BLOB = common dso_local global i32 0, align 4
@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"WRITEBACK_PIXEL_FORMATS\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"WRITEBACK_OUT_FENCE_PTR\00", align 1
@U64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @create_writeback_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_writeback_properties(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_property*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load %struct.drm_property*, %struct.drm_property** %7, align 8
  %9 = icmp ne %struct.drm_property* %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %1
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %13 = load i32, i32* @DRM_MODE_OBJECT_FB, align 4
  %14 = call %struct.drm_property* @drm_property_create_object(%struct.drm_device* %11, i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13)
  store %struct.drm_property* %14, %struct.drm_property** %4, align 8
  %15 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %16 = icmp ne %struct.drm_property* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %71

20:                                               ; preds = %10
  %21 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store %struct.drm_property* %21, %struct.drm_property** %24, align 8
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.drm_property*, %struct.drm_property** %28, align 8
  %30 = icmp ne %struct.drm_property* %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %25
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = load i32, i32* @DRM_MODE_PROP_BLOB, align 4
  %34 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %37 = or i32 %35, %36
  %38 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %32, i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.drm_property* %38, %struct.drm_property** %4, align 8
  %39 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %40 = icmp ne %struct.drm_property* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %71

44:                                               ; preds = %31
  %45 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %46 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store %struct.drm_property* %45, %struct.drm_property** %48, align 8
  br label %49

49:                                               ; preds = %44, %25
  %50 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.drm_property*, %struct.drm_property** %52, align 8
  %54 = icmp ne %struct.drm_property* %53, null
  br i1 %54, label %70, label %55

55:                                               ; preds = %49
  %56 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %57 = load i32, i32* @DRM_MODE_PROP_ATOMIC, align 4
  %58 = load i32, i32* @U64_MAX, align 4
  %59 = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %56, i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %58)
  store %struct.drm_property* %59, %struct.drm_property** %4, align 8
  %60 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %61 = icmp ne %struct.drm_property* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %71

65:                                               ; preds = %55
  %66 = load %struct.drm_property*, %struct.drm_property** %4, align 8
  %67 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %68 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store %struct.drm_property* %66, %struct.drm_property** %69, align 8
  br label %70

70:                                               ; preds = %65, %49
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %62, %41, %17
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.drm_property* @drm_property_create_object(%struct.drm_device*, i32, i8*, i32) #1

declare dso_local %struct.drm_property* @drm_property_create(%struct.drm_device*, i32, i8*, i32) #1

declare dso_local %struct.drm_property* @drm_property_create_range(%struct.drm_device*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
