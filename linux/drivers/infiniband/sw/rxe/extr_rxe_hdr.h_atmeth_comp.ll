; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_hdr.h_atmeth_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_hdr.h_atmeth_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.rxe_pkt_info = type { i64, i64, i64 }

@rxe_opcode = common dso_local global %struct.TYPE_2__* null, align 8
@RXE_ATMETH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_pkt_info*)* @atmeth_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmeth_comp(%struct.rxe_pkt_info* %0) #0 {
  %2 = alloca %struct.rxe_pkt_info*, align 8
  store %struct.rxe_pkt_info* %0, %struct.rxe_pkt_info** %2, align 8
  %3 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %2, align 8
  %4 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %2, align 8
  %7 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %5, %8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxe_opcode, align 8
  %11 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %2, align 8
  %12 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @RXE_ATMETH, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %9, %19
  %21 = call i32 @__atmeth_comp(i64 %20)
  ret i32 %21
}

declare dso_local i32 @__atmeth_comp(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
