; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_init_simplified_leakage_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_init_simplified_leakage_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.TYPE_7__ = type { i32** }
%struct.si_power_info = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES = common dso_local global i32 0, align 4
@SMC_SISLANDS_LKGE_LUT_NUM_OF_TEMP_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.TYPE_7__*, i32, i32, i32)* @si_init_simplified_leakage_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_init_simplified_leakage_table(%struct.radeon_device* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.si_power_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %19 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %18)
  store %struct.si_power_info* %19, %struct.si_power_info** %11, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %21 = call i32 @si_get_smc_power_scaling_factor(%struct.radeon_device* %20)
  store i32 %21, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %80, %5
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* @SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %14, align 4
  %30 = mul i32 %28, %29
  %31 = sub i32 %27, %30
  store i32 %31, i32* %17, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %33 = load %struct.si_power_info*, %struct.si_power_info** %11, align 8
  %34 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.si_power_info*, %struct.si_power_info** %11, align 8
  %38 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load %struct.si_power_info*, %struct.si_power_info** %11, align 8
  %44 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @si_calculate_leakage_for_v(%struct.radeon_device* %32, i32* %36, i32 %41, i32 %42, i32 %46, i32* %12)
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @si_scale_power_for_smc(i32 %48, i32 %49)
  %51 = sdiv i32 %50, 4
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp sgt i32 %52, 65535
  br i1 %53, label %54, label %55

54:                                               ; preds = %26
  store i32 65535, i32* %15, align 4
  br label %55

55:                                               ; preds = %54, %26
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %76, %55
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @SMC_SISLANDS_LKGE_LUT_NUM_OF_TEMP_ENTRIES, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @cpu_to_be16(i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES, align 4
  %71 = sub i32 %70, 1
  %72 = load i32, i32* %14, align 4
  %73 = sub i32 %71, %72
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  store i32 %62, i32* %75, align 4
  br label %76

76:                                               ; preds = %60
  %77 = load i32, i32* %13, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %56

79:                                               ; preds = %56
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %14, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %22

83:                                               ; preds = %22
  ret i32 0
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @si_get_smc_power_scaling_factor(%struct.radeon_device*) #1

declare dso_local i32 @si_calculate_leakage_for_v(%struct.radeon_device*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @si_scale_power_for_smc(i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
