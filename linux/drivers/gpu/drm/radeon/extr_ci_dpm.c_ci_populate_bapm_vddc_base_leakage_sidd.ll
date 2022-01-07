; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_bapm_vddc_base_leakage_sidd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_bapm_vddc_base_leakage_sidd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.radeon_cac_tdp_table* }
%struct.radeon_cac_tdp_table = type { i32, i32 }
%struct.ci_power_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_populate_bapm_vddc_base_leakage_sidd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_bapm_vddc_base_leakage_sidd(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.ci_power_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_cac_tdp_table*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %8 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %7)
  store %struct.ci_power_info* %8, %struct.ci_power_info** %3, align 8
  %9 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %10 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %14 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.radeon_cac_tdp_table*, %struct.radeon_cac_tdp_table** %21, align 8
  store %struct.radeon_cac_tdp_table* %22, %struct.radeon_cac_tdp_table** %6, align 8
  %23 = load %struct.radeon_cac_tdp_table*, %struct.radeon_cac_tdp_table** %6, align 8
  %24 = getelementptr inbounds %struct.radeon_cac_tdp_table, %struct.radeon_cac_tdp_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 100
  %27 = mul nsw i32 %26, 256
  store i32 %27, i32* %4, align 4
  %28 = load %struct.radeon_cac_tdp_table*, %struct.radeon_cac_tdp_table** %6, align 8
  %29 = getelementptr inbounds %struct.radeon_cac_tdp_table, %struct.radeon_cac_tdp_table* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 100
  %32 = mul nsw i32 %31, 256
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i8* @cpu_to_be16(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %37 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i8* @cpu_to_be16(i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.ci_power_info*, %struct.ci_power_info** %3, align 8
  %43 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  ret i32 0
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
