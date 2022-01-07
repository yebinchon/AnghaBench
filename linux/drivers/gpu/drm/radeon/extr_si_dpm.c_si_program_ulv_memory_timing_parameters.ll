; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_program_ulv_memory_timing_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_program_ulv_memory_timing_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.si_power_info = type { i32, i64, %struct.si_ulv_param }
%struct.si_ulv_param = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SI_SMC_SOFT_REGISTER_ulv_volt_change_delay = common dso_local global i32 0, align 4
@SMC_SIslands_MCArbDramTimingRegisters = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@SISLANDS_ULV_STATE_ARB_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_program_ulv_memory_timing_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_program_ulv_memory_timing_parameters(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.si_power_info*, align 8
  %5 = alloca %struct.si_ulv_param*, align 8
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.si_power_info* @si_get_pi(%struct.radeon_device* %8)
  store %struct.si_power_info* %9, %struct.si_power_info** %4, align 8
  %10 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %11 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %10, i32 0, i32 2
  store %struct.si_ulv_param* %11, %struct.si_ulv_param** %5, align 8
  %12 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = load %struct.si_ulv_param*, %struct.si_ulv_param** %5, align 8
  %15 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %14, i32 0, i32 1
  %16 = call i32 @si_populate_memory_timing_parameters(%struct.radeon_device* %13, i32* %15, %struct.TYPE_3__* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %46

21:                                               ; preds = %1
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = load i32, i32* @SI_SMC_SOFT_REGISTER_ulv_volt_change_delay, align 4
  %24 = load %struct.si_ulv_param*, %struct.si_ulv_param** %5, align 8
  %25 = getelementptr inbounds %struct.si_ulv_param, %struct.si_ulv_param* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @si_write_smc_soft_register(%struct.radeon_device* %22, i32 %23, i32 %26)
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %30 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @SMC_SIslands_MCArbDramTimingRegisters, align 4
  %33 = load i32, i32* @data, align 4
  %34 = call i64 @offsetof(i32 %32, i32 %33)
  %35 = add nsw i64 %31, %34
  %36 = load i32, i32* @SISLANDS_ULV_STATE_ARB_INDEX, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = add i64 %35, %38
  %40 = bitcast %struct.TYPE_3__* %6 to i32*
  %41 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %42 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @si_copy_bytes_to_smc(%struct.radeon_device* %28, i64 %39, i32* %40, i32 4, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %21, %19
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.radeon_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @si_populate_memory_timing_parameters(%struct.radeon_device*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @si_write_smc_soft_register(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @si_copy_bytes_to_smc(%struct.radeon_device*, i64, i32*, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
