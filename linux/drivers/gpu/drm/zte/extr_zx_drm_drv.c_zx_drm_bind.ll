; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_drm_drv.c_zx_drm_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_drm_drv.c_zx_drm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32* }

@zx_drm_driver = common dso_local global i32 0, align 4
@zx_drm_mode_config_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to bind all components: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to init vblank: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @zx_drm_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_drm_bind(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.drm_device* @drm_dev_alloc(i32* @zx_drm_driver, %struct.device* %6)
  store %struct.drm_device* %7, %struct.drm_device** %4, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = call i64 @IS_ERR(%struct.drm_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.drm_device* %12)
  store i32 %13, i32* %2, align 4
  br label %87

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = call i32 @dev_set_drvdata(%struct.device* %15, %struct.drm_device* %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = call i32 @drm_mode_config_init(%struct.drm_device* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 16, i32* %22, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 16, i32* %25, align 4
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 4096, i32* %28, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32 4096, i32* %31, align 4
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 5
  store i32* @zx_drm_mode_config_funcs, i32** %34, align 8
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = call i32 @component_bind_all(%struct.device* %35, %struct.drm_device* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %14
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @DRM_DEV_ERROR(%struct.device* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %81

44:                                               ; preds = %14
  %45 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @drm_vblank_init(%struct.drm_device* %45, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @DRM_DEV_ERROR(%struct.device* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %77

57:                                               ; preds = %44
  %58 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %61 = call i32 @drm_mode_config_reset(%struct.drm_device* %60)
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %62)
  %64 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %65 = call i32 @drm_dev_register(%struct.drm_device* %64, i32 0)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %72

69:                                               ; preds = %57
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %70, i32 32)
  store i32 0, i32* %2, align 4
  br label %87

72:                                               ; preds = %68
  %73 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %74 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %73)
  %75 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %76 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %75)
  br label %77

77:                                               ; preds = %72, %53
  %78 = load %struct.device*, %struct.device** %3, align 8
  %79 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %80 = call i32 @component_unbind_all(%struct.device* %78, %struct.drm_device* %79)
  br label %81

81:                                               ; preds = %77, %40
  %82 = load %struct.device*, %struct.device** %3, align 8
  %83 = call i32 @dev_set_drvdata(%struct.device* %82, %struct.drm_device* null)
  %84 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %85 = call i32 @drm_dev_put(%struct.drm_device* %84)
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %81, %69, %11
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.drm_device* @drm_dev_alloc(i32*, %struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @component_bind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @component_unbind_all(%struct.device*, %struct.drm_device*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
