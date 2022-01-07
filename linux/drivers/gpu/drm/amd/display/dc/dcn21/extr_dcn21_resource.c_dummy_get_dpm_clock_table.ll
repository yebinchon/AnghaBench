; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_dummy_get_dpm_clock_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_resource.c_dummy_get_dpm_clock_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpm_clocks = type { i32 }
%struct.pp_smu = type { i32 }

@dummy_clocks = common dso_local global %struct.dpm_clocks zeroinitializer, align 4
@PP_SMU_RESULT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dummy_get_dpm_clock_table(%struct.pp_smu* %0, %struct.dpm_clocks* %1) #0 {
  %3 = alloca %struct.pp_smu*, align 8
  %4 = alloca %struct.dpm_clocks*, align 8
  store %struct.pp_smu* %0, %struct.pp_smu** %3, align 8
  store %struct.dpm_clocks* %1, %struct.dpm_clocks** %4, align 8
  %5 = load %struct.dpm_clocks*, %struct.dpm_clocks** %4, align 8
  %6 = bitcast %struct.dpm_clocks* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.dpm_clocks* @dummy_clocks to i8*), i64 4, i1 false)
  %7 = load i32, i32* @PP_SMU_RESULT_OK, align 4
  ret i32 %7
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
