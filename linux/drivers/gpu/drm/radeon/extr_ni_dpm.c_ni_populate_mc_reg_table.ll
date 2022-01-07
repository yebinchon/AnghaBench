; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_mc_reg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_populate_mc_reg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i32 }
%struct.evergreen_power_info = type { i32 }
%struct.ni_power_info = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32* }
%struct.ni_ps = type { i32* }

@NI_SMC_SOFT_REGISTER_seq_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*)* @ni_populate_mc_reg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_populate_mc_reg_table(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.rv7xx_power_info*, align 8
  %6 = alloca %struct.evergreen_power_info*, align 8
  %7 = alloca %struct.ni_power_info*, align 8
  %8 = alloca %struct.ni_ps*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %10)
  store %struct.rv7xx_power_info* %11, %struct.rv7xx_power_info** %5, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %12)
  store %struct.evergreen_power_info* %13, %struct.evergreen_power_info** %6, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %14)
  store %struct.ni_power_info* %15, %struct.ni_power_info** %7, align 8
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %17 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %16)
  store %struct.ni_ps* %17, %struct.ni_ps** %8, align 8
  %18 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %19 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %18, i32 0, i32 1
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %9, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = call i32 @memset(%struct.TYPE_7__* %20, i32 0, i32 8)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = load i32, i32* @NI_SMC_SOFT_REGISTER_seq_index, align 4
  %24 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %22, i32 %23, i32 1)
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = call i32 @ni_populate_mc_reg_addresses(%struct.radeon_device* %25, %struct.TYPE_7__* %26)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = load %struct.ni_ps*, %struct.ni_ps** %8, align 8
  %30 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i32 @ni_convert_mc_reg_table_entry_to_smc(%struct.radeon_device* %28, i32* %32, i32* %36)
  %38 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %39 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %48 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ni_power_info*, %struct.ni_power_info** %7, align 8
  %52 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @ni_convert_mc_registers(i32* %42, i32* %46, i32 %50, i32 %54)
  %56 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %57 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = call i32 @ni_convert_mc_reg_table_to_smc(%struct.radeon_device* %56, %struct.radeon_ps* %57, %struct.TYPE_7__* %58)
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %62 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = bitcast %struct.TYPE_7__* %64 to i32*
  %66 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %67 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @rv770_copy_bytes_to_smc(%struct.radeon_device* %60, i32 %63, i32* %65, i32 8, i32 %68)
  ret i32 %69
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @rv770_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @ni_populate_mc_reg_addresses(%struct.radeon_device*, %struct.TYPE_7__*) #1

declare dso_local i32 @ni_convert_mc_reg_table_entry_to_smc(%struct.radeon_device*, i32*, i32*) #1

declare dso_local i32 @ni_convert_mc_registers(i32*, i32*, i32, i32) #1

declare dso_local i32 @ni_convert_mc_reg_table_to_smc(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_7__*) #1

declare dso_local i32 @rv770_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
