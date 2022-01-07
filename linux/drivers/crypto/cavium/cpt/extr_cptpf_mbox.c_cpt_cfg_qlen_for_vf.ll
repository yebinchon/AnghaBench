; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_mbox.c_cpt_cfg_qlen_for_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_mbox.c_cpt_cfg_qlen_for_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_device = type { i32 }
%union.cptx_pf_qx_ctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpt_device*, i32, i32)* @cpt_cfg_qlen_for_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpt_cfg_qlen_for_vf(%struct.cpt_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpt_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.cptx_pf_qx_ctl, align 4
  store %struct.cpt_device* %0, %struct.cpt_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %9 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @CPTX_PF_QX_CTL(i32 0, i32 %11)
  %13 = call i32 @cpt_read_csr64(i32 %10, i32 %12)
  %14 = bitcast %union.cptx_pf_qx_ctl* %7 to i32*
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = bitcast %union.cptx_pf_qx_ctl* %7 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = bitcast %union.cptx_pf_qx_ctl* %7 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %21 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @CPTX_PF_QX_CTL(i32 0, i32 %23)
  %25 = bitcast %union.cptx_pf_qx_ctl* %7 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpt_write_csr64(i32 %22, i32 %24, i32 %26)
  ret void
}

declare dso_local i32 @cpt_read_csr64(i32, i32) #1

declare dso_local i32 @CPTX_PF_QX_CTL(i32, i32) #1

declare dso_local i32 @cpt_write_csr64(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
