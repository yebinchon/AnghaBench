; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__, %struct.malidp_drm* }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32, i32, i32, i32 }
%struct.malidp_drm = type { %struct.malidp_hw_device* }
%struct.malidp_hw_device = type { i32, i32 }

@malidp_mode_config_funcs = common dso_local global i32 0, align 4
@malidp_mode_config_helpers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @malidp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.malidp_drm*, align 8
  %6 = alloca %struct.malidp_hw_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 1
  %9 = load %struct.malidp_drm*, %struct.malidp_drm** %8, align 8
  store %struct.malidp_drm* %9, %struct.malidp_drm** %5, align 8
  %10 = load %struct.malidp_drm*, %struct.malidp_drm** %5, align 8
  %11 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %10, i32 0, i32 0
  %12 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %11, align 8
  store %struct.malidp_hw_device* %12, %struct.malidp_hw_device** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call i32 @drm_mode_config_init(%struct.drm_device* %13)
  %15 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %16 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  store i32 %17, i32* %20, align 4
  %21 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %22 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i32 %23, i32* %26, align 8
  %27 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %28 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  store i32 %29, i32* %32, align 4
  %33 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %6, align 8
  %34 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 8
  %39 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32* @malidp_mode_config_funcs, i32** %41, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32* @malidp_mode_config_helpers, i32** %44, align 8
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %49 = call i32 @malidp_crtc_init(%struct.drm_device* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %1
  br label %60

53:                                               ; preds = %1
  %54 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %55 = call i32 @malidp_mw_connector_init(%struct.drm_device* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %60

59:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %64

60:                                               ; preds = %58, %52
  %61 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %62 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %61)
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %59
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @malidp_crtc_init(%struct.drm_device*) #1

declare dso_local i32 @malidp_mw_connector_init(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
