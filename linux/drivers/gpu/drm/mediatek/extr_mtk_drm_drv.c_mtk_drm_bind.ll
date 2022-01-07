; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_drv.c_mtk_drm_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_drv.c_mtk_drm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mtk_drm_private = type { %struct.drm_device* }
%struct.drm_device = type { %struct.mtk_drm_private* }

@mtk_drm_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to initialize fbdev: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mtk_drm_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_drm_bind(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mtk_drm_private*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.mtk_drm_private* @dev_get_drvdata(%struct.device* %7)
  store %struct.mtk_drm_private* %8, %struct.mtk_drm_private** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.drm_device* @drm_dev_alloc(i32* @mtk_drm_driver, %struct.device* %9)
  store %struct.drm_device* %10, %struct.drm_device** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = call i64 @IS_ERR(%struct.drm_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = call i32 @PTR_ERR(%struct.drm_device* %15)
  store i32 %16, i32* %2, align 4
  br label %51

17:                                               ; preds = %1
  %18 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  store %struct.mtk_drm_private* %18, %struct.mtk_drm_private** %20, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %4, align 8
  %23 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %22, i32 0, i32 0
  store %struct.drm_device* %21, %struct.drm_device** %23, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %25 = call i32 @mtk_drm_kms_init(%struct.drm_device* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %47

29:                                               ; preds = %17
  %30 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %31 = call i32 @drm_dev_register(%struct.drm_device* %30, i32 0)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %44

35:                                               ; preds = %29
  %36 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %37 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %36, i32 32)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %35
  store i32 0, i32* %2, align 4
  br label %51

44:                                               ; preds = %34
  %45 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %46 = call i32 @mtk_drm_kms_deinit(%struct.drm_device* %45)
  br label %47

47:                                               ; preds = %44, %28
  %48 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %49 = call i32 @drm_dev_put(%struct.drm_device* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %43, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.mtk_drm_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @mtk_drm_kms_init(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @mtk_drm_kms_deinit(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
