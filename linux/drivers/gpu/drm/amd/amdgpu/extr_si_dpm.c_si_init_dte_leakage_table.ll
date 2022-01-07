; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_init_dte_leakage_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_init_dte_leakage_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.TYPE_7__ = type { i32** }
%struct.si_power_info = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SMC_SISLANDS_LKGE_LUT_NUM_OF_TEMP_ENTRIES = common dso_local global i32 0, align 4
@SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.TYPE_7__*, i32, i32, i32, i32, i32)* @si_init_dte_leakage_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_init_dte_leakage_table(%struct.amdgpu_device* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.si_power_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %24 = call %struct.si_power_info* @si_get_pi(%struct.amdgpu_device* %23)
  store %struct.si_power_info* %24, %struct.si_power_info** %15, align 8
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %26 = call i32 @si_get_smc_power_scaling_factor(%struct.amdgpu_device* %25)
  store i32 %26, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %87, %7
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* @SMC_SISLANDS_LKGE_LUT_NUM_OF_TEMP_ENTRIES, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %27
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %14, align 4
  %34 = mul i32 %32, %33
  %35 = load i32, i32* %13, align 4
  %36 = add i32 %34, %35
  %37 = mul i32 1000, %36
  store i32 %37, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %38

38:                                               ; preds = %83, %31
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* @SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %18, align 4
  %46 = mul i32 %44, %45
  %47 = sub i32 %43, %46
  store i32 %47, i32* %22, align 4
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %49 = load %struct.si_power_info*, %struct.si_power_info** %15, align 8
  %50 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %19, align 4
  %55 = load %struct.si_power_info*, %struct.si_power_info** %15, align 8
  %56 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @si_calculate_leakage_for_v_and_t(%struct.amdgpu_device* %48, i32* %52, i32 %53, i32 %54, i32 %58, i32* %16)
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %21, align 4
  %62 = call i32 @si_scale_power_for_smc(i32 %60, i32 %61)
  %63 = sdiv i32 %62, 4
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %20, align 4
  %65 = icmp sgt i32 %64, 65535
  br i1 %65, label %66, label %67

66:                                               ; preds = %42
  store i32 65535, i32* %20, align 4
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i32, i32* %20, align 4
  %69 = call i32 @cpu_to_be16(i32 %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %17, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @SMC_SISLANDS_LKGE_LUT_NUM_OF_VOLT_ENTRIES, align 4
  %78 = sub i32 %77, 1
  %79 = load i32, i32* %18, align 4
  %80 = sub i32 %78, %79
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  store i32 %69, i32* %82, align 4
  br label %83

83:                                               ; preds = %67
  %84 = load i32, i32* %18, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %18, align 4
  br label %38

86:                                               ; preds = %38
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %17, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %27

90:                                               ; preds = %27
  ret i32 0
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @si_get_smc_power_scaling_factor(%struct.amdgpu_device*) #1

declare dso_local i32 @si_calculate_leakage_for_v_and_t(%struct.amdgpu_device*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @si_scale_power_for_smc(i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
