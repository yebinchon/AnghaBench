; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_cfg.c_xen_drm_front_cfg_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_cfg.c_xen_drm_front_cfg_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_info = type { %struct.xenbus_device* }
%struct.xenbus_device = type { i32 }
%struct.xen_drm_front_cfg = type { i32, i64, i32* }

@XENDISPL_FIELD_BE_ALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Backend can provide display buffers\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"No connector(s) configured at %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_drm_front_cfg_card(%struct.xen_drm_front_info* %0, %struct.xen_drm_front_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xen_drm_front_info*, align 8
  %5 = alloca %struct.xen_drm_front_cfg*, align 8
  %6 = alloca %struct.xenbus_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xen_drm_front_info* %0, %struct.xen_drm_front_info** %4, align 8
  store %struct.xen_drm_front_cfg* %1, %struct.xen_drm_front_cfg** %5, align 8
  %9 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %10 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %9, i32 0, i32 0
  %11 = load %struct.xenbus_device*, %struct.xenbus_device** %10, align 8
  store %struct.xenbus_device* %11, %struct.xenbus_device** %6, align 8
  %12 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %13 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %12, i32 0, i32 0
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %13, align 8
  %15 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @XENDISPL_FIELD_BE_ALLOC, align 4
  %18 = call i64 @xenbus_read_unsigned(i32 %16, i32 %17, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = call i32 @DRM_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.xen_drm_front_cfg*, %struct.xen_drm_front_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.xen_drm_front_cfg, %struct.xen_drm_front_cfg* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.xen_drm_front_cfg*, %struct.xen_drm_front_cfg** %5, align 8
  %26 = getelementptr inbounds %struct.xen_drm_front_cfg, %struct.xen_drm_front_cfg* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %55, %24
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.xen_drm_front_cfg*, %struct.xen_drm_front_cfg** %5, align 8
  %30 = getelementptr inbounds %struct.xen_drm_front_cfg, %struct.xen_drm_front_cfg* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @ARRAY_SIZE(i32* %31)
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %27
  %35 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %4, align 8
  %36 = load %struct.xen_drm_front_cfg*, %struct.xen_drm_front_cfg** %5, align 8
  %37 = getelementptr inbounds %struct.xen_drm_front_cfg, %struct.xen_drm_front_cfg* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %43 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @cfg_connector(%struct.xen_drm_front_info* %35, i32* %41, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %58

50:                                               ; preds = %34
  %51 = load %struct.xen_drm_front_cfg*, %struct.xen_drm_front_cfg** %5, align 8
  %52 = getelementptr inbounds %struct.xen_drm_front_cfg, %struct.xen_drm_front_cfg* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %27

58:                                               ; preds = %49, %27
  %59 = load %struct.xen_drm_front_cfg*, %struct.xen_drm_front_cfg** %5, align 8
  %60 = getelementptr inbounds %struct.xen_drm_front_cfg, %struct.xen_drm_front_cfg* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %58
  %64 = load %struct.xenbus_device*, %struct.xenbus_device** %6, align 8
  %65 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %63
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @xenbus_read_unsigned(i32, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cfg_connector(%struct.xen_drm_front_info*, i32*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
