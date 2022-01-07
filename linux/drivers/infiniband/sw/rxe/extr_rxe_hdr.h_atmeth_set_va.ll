; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_hdr.h_atmeth_set_va.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_hdr.h_atmeth_set_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.rxe_pkt_info = type { i64, i64, i64 }

@rxe_opcode = common dso_local global %struct.TYPE_2__* null, align 8
@RXE_ATMETH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxe_pkt_info*, i32)* @atmeth_set_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmeth_set_va(%struct.rxe_pkt_info* %0, i32 %1) #0 {
  %3 = alloca %struct.rxe_pkt_info*, align 8
  %4 = alloca i32, align 4
  store %struct.rxe_pkt_info* %0, %struct.rxe_pkt_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %6 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %9 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rxe_opcode, align 8
  %13 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %3, align 8
  %14 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @RXE_ATMETH, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %11, %21
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @__atmeth_set_va(i64 %22, i32 %23)
  ret void
}

declare dso_local i32 @__atmeth_set_va(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
