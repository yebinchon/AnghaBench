; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_ieq_tx_compl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_ieq_tx_compl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_vsi = type { %struct.i40iw_puda_rsrc* }
%struct.i40iw_puda_rsrc = type { i32 }
%struct.i40iw_puda_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_sc_vsi*, i8*)* @i40iw_ieq_tx_compl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_ieq_tx_compl(%struct.i40iw_sc_vsi* %0, i8* %1) #0 {
  %3 = alloca %struct.i40iw_sc_vsi*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.i40iw_puda_rsrc*, align 8
  %6 = alloca %struct.i40iw_puda_buf*, align 8
  store %struct.i40iw_sc_vsi* %0, %struct.i40iw_sc_vsi** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %8 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %7, i32 0, i32 0
  %9 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %8, align 8
  store %struct.i40iw_puda_rsrc* %9, %struct.i40iw_puda_rsrc** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.i40iw_puda_buf*
  store %struct.i40iw_puda_buf* %11, %struct.i40iw_puda_buf** %6, align 8
  %12 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %5, align 8
  %13 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %6, align 8
  %14 = call i32 @i40iw_puda_ret_bufpool(%struct.i40iw_puda_rsrc* %12, %struct.i40iw_puda_buf* %13)
  ret void
}

declare dso_local i32 @i40iw_puda_ret_bufpool(%struct.i40iw_puda_rsrc*, %struct.i40iw_puda_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
