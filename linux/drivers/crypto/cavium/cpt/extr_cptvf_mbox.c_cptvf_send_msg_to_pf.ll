; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_mbox.c_cptvf_send_msg_to_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_mbox.c_cptvf_send_msg_to_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_vf = type { i32 }
%struct.cpt_mbox = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_vf*, %struct.cpt_mbox*)* @cptvf_send_msg_to_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cptvf_send_msg_to_pf(%struct.cpt_vf* %0, %struct.cpt_mbox* %1) #0 {
  %3 = alloca %struct.cpt_vf*, align 8
  %4 = alloca %struct.cpt_mbox*, align 8
  store %struct.cpt_vf* %0, %struct.cpt_vf** %3, align 8
  store %struct.cpt_mbox* %1, %struct.cpt_mbox** %4, align 8
  %5 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %6 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @CPTX_VFX_PF_MBOXX(i32 0, i32 0, i32 0)
  %9 = load %struct.cpt_mbox*, %struct.cpt_mbox** %4, align 8
  %10 = getelementptr inbounds %struct.cpt_mbox, %struct.cpt_mbox* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cpt_write_csr64(i32 %7, i32 %8, i32 %11)
  %13 = load %struct.cpt_vf*, %struct.cpt_vf** %3, align 8
  %14 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CPTX_VFX_PF_MBOXX(i32 0, i32 0, i32 1)
  %17 = load %struct.cpt_mbox*, %struct.cpt_mbox** %4, align 8
  %18 = getelementptr inbounds %struct.cpt_mbox, %struct.cpt_mbox* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cpt_write_csr64(i32 %15, i32 %16, i32 %19)
  ret void
}

declare dso_local i32 @cpt_write_csr64(i32, i32, i32) #1

declare dso_local i32 @CPTX_VFX_PF_MBOXX(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
