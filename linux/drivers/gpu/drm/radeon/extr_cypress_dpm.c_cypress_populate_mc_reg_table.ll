; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_populate_mc_reg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_populate_mc_reg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.rv7xx_power_info = type { i32 }
%struct.evergreen_power_info = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.rv7xx_ps = type { i32 }
%struct.TYPE_6__ = type { i32*, i32 }

@RV770_SMC_SOFT_REGISTER_seq_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cypress_populate_mc_reg_table(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.rv7xx_power_info*, align 8
  %6 = alloca %struct.evergreen_power_info*, align 8
  %7 = alloca %struct.rv7xx_ps*, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %9)
  store %struct.rv7xx_power_info* %10, %struct.rv7xx_power_info** %5, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %11)
  store %struct.evergreen_power_info* %12, %struct.evergreen_power_info** %6, align 8
  %13 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %14 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %13)
  store %struct.rv7xx_ps* %14, %struct.rv7xx_ps** %7, align 8
  %15 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = load i32, i32* @RV770_SMC_SOFT_REGISTER_seq_index, align 4
  %18 = call i32 @rv770_write_smc_soft_register(%struct.radeon_device* %16, i32 %17, i32 1)
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = call i32 @cypress_populate_mc_reg_addresses(%struct.radeon_device* %19, %struct.TYPE_6__* %8)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %7, align 8
  %23 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = call i32 @cypress_convert_mc_reg_table_entry_to_smc(%struct.radeon_device* %21, i32* %23, i32* %26)
  %28 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %29 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %37 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %41 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @cypress_convert_mc_registers(i32* %32, i32* %35, i32 %39, i32 %43)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %47 = call i32 @cypress_convert_mc_reg_table_to_smc(%struct.radeon_device* %45, %struct.radeon_ps* %46, %struct.TYPE_6__* %8)
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %50 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = bitcast %struct.TYPE_6__* %8 to i32*
  %53 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %54 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rv770_copy_bytes_to_smc(%struct.radeon_device* %48, i32 %51, i32* %52, i32 16, i32 %55)
  ret i32 %56
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rv770_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @cypress_populate_mc_reg_addresses(%struct.radeon_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @cypress_convert_mc_reg_table_entry_to_smc(%struct.radeon_device*, i32*, i32*) #1

declare dso_local i32 @cypress_convert_mc_registers(i32*, i32*, i32, i32) #1

declare dso_local i32 @cypress_convert_mc_reg_table_to_smc(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_6__*) #1

declare dso_local i32 @rv770_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
