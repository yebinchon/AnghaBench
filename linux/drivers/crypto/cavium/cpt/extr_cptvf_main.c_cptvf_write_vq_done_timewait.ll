; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_write_vq_done_timewait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_write_vq_done_timewait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { i32 }
%union.cptx_vqx_done_wait = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_vf*, i32)* @cptvf_write_vq_done_timewait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cptvf_write_vq_done_timewait(%struct.cpt_vf* %0, i32 %1) #0 {
  %3 = alloca %struct.cpt_vf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.cptx_vqx_done_wait, align 4
  store %struct.cpt_vf* %0, %struct.cpt_vf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %7 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @CPTX_VQX_DONE_WAIT(i32 0, i32 0)
  %10 = call i32 @cpt_read_csr64(i32 %8, i32 %9)
  %11 = bitcast %union.cptx_vqx_done_wait* %5 to i32*
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = bitcast %union.cptx_vqx_done_wait* %5 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %16 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CPTX_VQX_DONE_WAIT(i32 0, i32 0)
  %19 = bitcast %union.cptx_vqx_done_wait* %5 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cpt_write_csr64(i32 %17, i32 %18, i32 %20)
  ret void
}

declare dso_local i32 @cpt_read_csr64(i32, i32) #1

declare dso_local i32 @CPTX_VQX_DONE_WAIT(i32, i32) #1

declare dso_local i32 @cpt_write_csr64(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
