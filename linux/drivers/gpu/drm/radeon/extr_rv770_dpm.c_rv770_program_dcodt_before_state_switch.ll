; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_program_dcodt_before_state_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_program_dcodt_before_state_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i64 }
%struct.rv7xx_ps = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CHIP_RV730 = common dso_local global i64 0, align 8
@CHIP_RV710 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @rv770_program_dcodt_before_state_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv770_program_dcodt_before_state_switch(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.rv7xx_power_info*, align 8
  %8 = alloca %struct.rv7xx_ps*, align 8
  %9 = alloca %struct.rv7xx_ps*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %6, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %12)
  store %struct.rv7xx_power_info* %13, %struct.rv7xx_power_info** %7, align 8
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %15 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %14)
  store %struct.rv7xx_ps* %15, %struct.rv7xx_ps** %8, align 8
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %17 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %16)
  store %struct.rv7xx_ps* %17, %struct.rv7xx_ps** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %7, align 8
  %19 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %71

23:                                               ; preds = %3
  %24 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %9, align 8
  %25 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %7, align 8
  %29 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1, i32* %10, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %8, align 8
  %35 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %7, align 8
  %39 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %71

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %71

55:                                               ; preds = %51, %48
  %56 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CHIP_RV730, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @CHIP_RV710, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61, %55
  %68 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @rv730_program_dcodt(%struct.radeon_device* %68, i32 %69)
  br label %71

71:                                               ; preds = %22, %47, %54, %67, %61
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @rv730_program_dcodt(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
