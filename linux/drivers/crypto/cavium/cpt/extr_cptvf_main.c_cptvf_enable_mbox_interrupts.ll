; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_enable_mbox_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_enable_mbox_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { i32 }
%union.cptx_vqx_misc_ena_w1s = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_vf*)* @cptvf_enable_mbox_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cptvf_enable_mbox_interrupts(%struct.cpt_vf* %0) #0 {
  %2 = alloca %struct.cpt_vf*, align 8
  %3 = alloca %union.cptx_vqx_misc_ena_w1s, align 4
  store %struct.cpt_vf* %0, %struct.cpt_vf** %2, align 8
  %4 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %5 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @CPTX_VQX_MISC_ENA_W1S(i32 0, i32 0)
  %8 = call i32 @cpt_read_csr64(i32 %6, i32 %7)
  %9 = bitcast %union.cptx_vqx_misc_ena_w1s* %3 to i32*
  store i32 %8, i32* %9, align 4
  %10 = bitcast %union.cptx_vqx_misc_ena_w1s* %3 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.cpt_vf*, %struct.cpt_vf** %2, align 8
  %13 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CPTX_VQX_MISC_ENA_W1S(i32 0, i32 0)
  %16 = bitcast %union.cptx_vqx_misc_ena_w1s* %3 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpt_write_csr64(i32 %14, i32 %15, i32 %17)
  ret void
}

declare dso_local i32 @cpt_read_csr64(i32, i32) #1

declare dso_local i32 @CPTX_VQX_MISC_ENA_W1S(i32, i32) #1

declare dso_local i32 @cpt_write_csr64(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
