; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_drv.c_fsl_dcu_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_drv.c_fsl_dcu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.fsl_dcu_drm_device*, i32, %struct.TYPE_2__ }
%struct.fsl_dcu_drm_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"failed to initialize mode setting\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to initialize vblank\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to install IRQ handler\0A\00", align 1
@legacyfb_depth = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Invalid legacyfb_depth.  Defaulting to 24bpp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i64)* @fsl_dcu_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_dcu_load(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fsl_dcu_drm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %9, align 8
  store %struct.fsl_dcu_drm_device* %10, %struct.fsl_dcu_drm_device** %6, align 8
  %11 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %6, align 8
  %12 = call i32 @fsl_dcu_drm_modeset_init(%struct.fsl_dcu_drm_device* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %73

21:                                               ; preds = %2
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @drm_vblank_init(%struct.drm_device* %22, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %63

35:                                               ; preds = %21
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %6, align 8
  %38 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @drm_irq_install(%struct.drm_device* %36, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %63

48:                                               ; preds = %35
  %49 = load i32, i32* @legacyfb_depth, align 4
  %50 = icmp ne i32 %49, 16
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32, i32* @legacyfb_depth, align 4
  %53 = icmp ne i32 %52, 24
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* @legacyfb_depth, align 4
  %56 = icmp ne i32 %55, 32
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %59 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_warn(i32 %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  store i32 24, i32* @legacyfb_depth, align 4
  br label %62

62:                                               ; preds = %57, %54, %51, %48
  store i32 0, i32* %3, align 4
  br label %73

63:                                               ; preds = %43, %30
  %64 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %65 = call i32 @drm_kms_helper_poll_fini(%struct.drm_device* %64)
  %66 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %67 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %66)
  %68 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %69 = call i32 @drm_irq_uninstall(%struct.drm_device* %68)
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %70, i32 0, i32 0
  store %struct.fsl_dcu_drm_device* null, %struct.fsl_dcu_drm_device** %71, align 8
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %63, %62, %15
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @fsl_dcu_drm_modeset_init(%struct.fsl_dcu_drm_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_irq_install(%struct.drm_device*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @drm_kms_helper_poll_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_irq_uninstall(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
