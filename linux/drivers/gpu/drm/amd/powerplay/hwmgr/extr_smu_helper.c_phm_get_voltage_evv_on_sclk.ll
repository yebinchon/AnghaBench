; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu_helper.c_phm_get_voltage_evv_on_sclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu_helper.c_phm_get_voltage_evv_on_sclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }

@CHIP_TONGA = common dso_local global i64 0, align 8
@CHIP_POLARIS10 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phm_get_voltage_evv_on_sclk(%struct.pp_hwmgr* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHIP_TONGA, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @atomctrl_get_voltage_evv(%struct.pp_hwmgr* %19, i32 %20, i32* %21)
  store i32 %22, i32* %12, align 4
  br label %56

23:                                               ; preds = %5
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %25 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CHIP_POLARIS10, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @atomctrl_get_voltage_evv_on_sclk(%struct.pp_hwmgr* %30, i32 %31, i32 %32, i32 %33, i32* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 2000
  br i1 %38, label %43, label %39

39:                                               ; preds = %29
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %29
  %44 = load i32*, i32** %10, align 8
  store i32 1150, i32* %44, align 4
  br label %45

45:                                               ; preds = %43, %39
  br label %55

46:                                               ; preds = %23
  %47 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @atomctrl_get_voltage_evv_on_sclk_ai(%struct.pp_hwmgr* %47, i32 %48, i32 %49, i32 %50, i32* %11)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = sdiv i32 %52, 100
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %46, %45
  br label %56

56:                                               ; preds = %55, %18
  %57 = load i32, i32* %12, align 4
  ret i32 %57
}

declare dso_local i32 @atomctrl_get_voltage_evv(%struct.pp_hwmgr*, i32, i32*) #1

declare dso_local i32 @atomctrl_get_voltage_evv_on_sclk(%struct.pp_hwmgr*, i32, i32, i32, i32*) #1

declare dso_local i32 @atomctrl_get_voltage_evv_on_sclk_ai(%struct.pp_hwmgr*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
