; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_populate_mc_reg_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_populate_mc_reg_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ps = type { i32 }
%struct.si_ps = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.si_power_info = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_8__, %struct.si_ulv_param }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { i32* }
%struct.si_ulv_param = type { %struct.TYPE_9__, i64 }

@SI_SMC_SOFT_REGISTER_seq_index = common dso_local global i32 0, align 4
@SISLANDS_MCREGISTERTABLE_INITIAL_SLOT = common dso_local global i64 0, align 8
@SISLANDS_MCREGISTERTABLE_ACPI_SLOT = common dso_local global i64 0, align 8
@SISLANDS_MCREGISTERTABLE_ULV_SLOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_ps*)* @si_populate_mc_reg_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_populate_mc_reg_table(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ps*, align 8
  %5 = alloca %struct.si_ps*, align 8
  %6 = alloca %struct.si_power_info*, align 8
  %7 = alloca %struct.si_ulv_param*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %4, align 8
  %9 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %10 = call %struct.si_ps* @si_get_ps(%struct.amdgpu_ps* %9)
  store %struct.si_ps* %10, %struct.si_ps** %5, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = call %struct.si_power_info* @si_get_pi(%struct.amdgpu_device* %11)
  store %struct.si_power_info* %12, %struct.si_power_info** %6, align 8
  %13 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %14 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %13, i32 0, i32 4
  store %struct.si_ulv_param* %14, %struct.si_ulv_param** %7, align 8
  %15 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %16 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %15, i32 0, i32 3
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = call i32 @memset(%struct.TYPE_8__* %17, i32 0, i32 8)
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = load i32, i32* @SI_SMC_SOFT_REGISTER_seq_index, align 4
  %21 = call i32 @si_write_smc_soft_register(%struct.amdgpu_device* %19, i32 %20, i32 1)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %24 = call i32 @si_populate_mc_reg_addresses(%struct.amdgpu_device* %22, %struct.TYPE_8__* %23)
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = load %struct.si_ps*, %struct.si_ps** %5, align 8
  %27 = getelementptr inbounds %struct.si_ps, %struct.si_ps* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @SISLANDS_MCREGISTERTABLE_INITIAL_SLOT, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call i32 @si_convert_mc_reg_table_entry_to_smc(%struct.amdgpu_device* %25, %struct.TYPE_9__* %29, i32* %34)
  %36 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %37 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @SISLANDS_MCREGISTERTABLE_ACPI_SLOT, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %47 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %51 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @si_convert_mc_registers(i32* %40, i32* %45, i32 %49, i32 %53)
  %55 = load %struct.si_ulv_param*, %struct.si_ulv_param** %7, align 8
  %56 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %2
  %60 = load %struct.si_ulv_param*, %struct.si_ulv_param** %7, align 8
  %61 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %67 = load %struct.si_ulv_param*, %struct.si_ulv_param** %7, align 8
  %68 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @SISLANDS_MCREGISTERTABLE_ULV_SLOT, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = call i32 @si_convert_mc_reg_table_entry_to_smc(%struct.amdgpu_device* %66, %struct.TYPE_9__* %68, i32* %73)
  br label %95

75:                                               ; preds = %59, %2
  %76 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %77 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @SISLANDS_MCREGISTERTABLE_ULV_SLOT, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %87 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %91 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @si_convert_mc_registers(i32* %80, i32* %85, i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %75, %65
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %97 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %4, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %99 = call i32 @si_convert_mc_reg_table_to_smc(%struct.amdgpu_device* %96, %struct.amdgpu_ps* %97, %struct.TYPE_8__* %98)
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %101 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %102 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %105 = bitcast %struct.TYPE_8__* %104 to i32*
  %106 = load %struct.si_power_info*, %struct.si_power_info** %6, align 8
  %107 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @amdgpu_si_copy_bytes_to_smc(%struct.amdgpu_device* %100, i32 %103, i32* %105, i32 8, i32 %108)
  ret i32 %109
}

declare dso_local %struct.si_ps* @si_get_ps(%struct.amdgpu_ps*) #1

declare dso_local %struct.si_power_info* @si_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @si_write_smc_soft_register(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @si_populate_mc_reg_addresses(%struct.amdgpu_device*, %struct.TYPE_8__*) #1

declare dso_local i32 @si_convert_mc_reg_table_entry_to_smc(%struct.amdgpu_device*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @si_convert_mc_registers(i32*, i32*, i32, i32) #1

declare dso_local i32 @si_convert_mc_reg_table_to_smc(%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.TYPE_8__*) #1

declare dso_local i32 @amdgpu_si_copy_bytes_to_smc(%struct.amdgpu_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
