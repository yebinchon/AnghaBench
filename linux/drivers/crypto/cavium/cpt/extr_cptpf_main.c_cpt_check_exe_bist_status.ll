; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_check_exe_bist_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_check_exe_bist_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_device = type { i32 }
%union.cptx_pf_exe_bist_status = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpt_device*)* @cpt_check_exe_bist_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpt_check_exe_bist_status(%struct.cpt_device* %0) #0 {
  %2 = alloca %struct.cpt_device*, align 8
  %3 = alloca %union.cptx_pf_exe_bist_status, align 4
  store %struct.cpt_device* %0, %struct.cpt_device** %2, align 8
  %4 = bitcast %union.cptx_pf_exe_bist_status* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 4, i1 false)
  %5 = load %struct.cpt_device*, %struct.cpt_device** %2, align 8
  %6 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @CPTX_PF_EXE_BIST_STATUS(i32 0)
  %9 = call i32 @cpt_read_csr64(i32 %7, i32 %8)
  %10 = bitcast %union.cptx_pf_exe_bist_status* %3 to i32*
  store i32 %9, i32* %10, align 4
  %11 = bitcast %union.cptx_pf_exe_bist_status* %3 to i32*
  %12 = load i32, i32* %11, align 4
  ret i32 %12
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpt_read_csr64(i32, i32) #2

declare dso_local i32 @CPTX_PF_EXE_BIST_STATUS(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
