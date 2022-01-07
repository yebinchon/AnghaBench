; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_exp_rcv.h_hfi1_tid_group_to_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_exp_rcv.h_hfi1_tid_group_to_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { %struct.tid_group* }
%struct.tid_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_ctxtdata*, %struct.tid_group*)* @hfi1_tid_group_to_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_tid_group_to_idx(%struct.hfi1_ctxtdata* %0, %struct.tid_group* %1) #0 {
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca %struct.tid_group*, align 8
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %3, align 8
  store %struct.tid_group* %1, %struct.tid_group** %4, align 8
  %5 = load %struct.tid_group*, %struct.tid_group** %4, align 8
  %6 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %7 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %6, i32 0, i32 0
  %8 = load %struct.tid_group*, %struct.tid_group** %7, align 8
  %9 = getelementptr inbounds %struct.tid_group, %struct.tid_group* %8, i64 0
  %10 = ptrtoint %struct.tid_group* %5 to i64
  %11 = ptrtoint %struct.tid_group* %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 4
  %14 = trunc i64 %13 to i32
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
