; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_drv.c_mcde_modeset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_drv.c_mcde_modeset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_mode_config, %struct.mcde* }
%struct.drm_mode_config = type { i32, i32, i32, i32, i32*, i32* }
%struct.mcde = type { i32, i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"no display output bridge yet\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@mcde_mode_config_funcs = common dso_local global i32 0, align 4
@mcde_mode_config_helpers = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to init vblank\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to init display\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to attach display output bridge\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @mcde_modeset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcde_modeset_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_mode_config*, align 8
  %5 = alloca %struct.mcde*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 2
  %9 = load %struct.mcde*, %struct.mcde** %8, align 8
  store %struct.mcde* %9, %struct.mcde** %5, align 8
  %10 = load %struct.mcde*, %struct.mcde** %5, align 8
  %11 = getelementptr inbounds %struct.mcde, %struct.mcde* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EPROBE_DEFER, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %86

21:                                               ; preds = %1
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 1
  store %struct.drm_mode_config* %23, %struct.drm_mode_config** %4, align 8
  %24 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %25 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %24, i32 0, i32 5
  store i32* @mcde_mode_config_funcs, i32** %25, align 8
  %26 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %27 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %26, i32 0, i32 4
  store i32* @mcde_mode_config_helpers, i32** %27, align 8
  %28 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %29 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %31 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %30, i32 0, i32 1
  store i32 1920, i32* %31, align 4
  %32 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %33 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %32, i32 0, i32 2
  store i32 1, i32* %33, align 8
  %34 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %35 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %34, i32 0, i32 3
  store i32 1080, i32* %35, align 4
  %36 = load %struct.mcde*, %struct.mcde** %5, align 8
  %37 = getelementptr inbounds %struct.mcde, %struct.mcde* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %21
  %41 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %42 = call i32 @drm_vblank_init(%struct.drm_device* %41, i32 1)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %82

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %53 = call i32 @mcde_display_init(%struct.drm_device* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %82

61:                                               ; preds = %51
  %62 = load %struct.mcde*, %struct.mcde** %5, align 8
  %63 = getelementptr inbounds %struct.mcde, %struct.mcde* %62, i32 0, i32 1
  %64 = load %struct.mcde*, %struct.mcde** %5, align 8
  %65 = getelementptr inbounds %struct.mcde, %struct.mcde* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @drm_simple_display_pipe_attach_bridge(i32* %63, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %72 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %82

75:                                               ; preds = %61
  %76 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %77 = call i32 @drm_mode_config_reset(%struct.drm_device* %76)
  %78 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %79 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %78)
  %80 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %81 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %80, i32 32)
  store i32 0, i32* %2, align 4
  br label %86

82:                                               ; preds = %70, %56, %45
  %83 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %84 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %75, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @mcde_display_init(%struct.drm_device*) #1

declare dso_local i32 @drm_simple_display_pipe_attach_bridge(i32*, i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
