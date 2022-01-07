; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table2.c_get_smu_clock_info_v3_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_command_table2.c_get_smu_clock_info_v3_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_parser = type { i32 }
%struct.atom_get_smu_clock_info_parameters_v3_1 = type { i32, i32, i32 }
%struct.atom_get_smu_clock_info_output_parameters_v3_1 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GET_SMU_CLOCK_INFO_V3_1_GET_PLLVCO_FREQ = common dso_local global i32 0, align 4
@getsmuclockinfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bios_parser*, i32)* @get_smu_clock_info_v3_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_smu_clock_info_v3_1(%struct.bios_parser* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bios_parser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atom_get_smu_clock_info_parameters_v3_1, align 4
  %7 = alloca %struct.atom_get_smu_clock_info_output_parameters_v3_1, align 4
  %8 = alloca { i64, i32 }, align 4
  store %struct.bios_parser* %0, %struct.bios_parser** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 12, i1 false)
  %10 = load i32, i32* @GET_SMU_CLOCK_INFO_V3_1_GET_PLLVCO_FREQ, align 4
  %11 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %6, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %struct.atom_get_smu_clock_info_parameters_v3_1, %struct.atom_get_smu_clock_info_parameters_v3_1* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @getsmuclockinfo, align 4
  %15 = bitcast { i64, i32 }* %8 to i8*
  %16 = bitcast %struct.atom_get_smu_clock_info_parameters_v3_1* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 0
  %18 = load i64, i64* %17, align 4
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %8, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @EXEC_BIOS_CMD_TABLE(i32 %14, i64 %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = call i32 @memmove(%struct.atom_get_smu_clock_info_output_parameters_v3_1* %7, %struct.atom_get_smu_clock_info_parameters_v3_1* %6, i32 12)
  %25 = getelementptr inbounds %struct.atom_get_smu_clock_info_output_parameters_v3_1, %struct.atom_get_smu_clock_info_output_parameters_v3_1* %7, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @EXEC_BIOS_CMD_TABLE(i32, i64, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memmove(%struct.atom_get_smu_clock_info_output_parameters_v3_1*, %struct.atom_get_smu_clock_info_parameters_v3_1*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
