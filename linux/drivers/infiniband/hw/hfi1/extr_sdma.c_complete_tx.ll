; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_complete_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_complete_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i64, i32 }
%struct.sdma_txreq = type { i64, i32 (%struct.sdma_txreq*, i32)*, %struct.iowait* }
%struct.iowait = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_engine*, %struct.sdma_txreq*, i32)* @complete_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_tx(%struct.sdma_engine* %0, %struct.sdma_txreq* %1, i32 %2) #0 {
  %4 = alloca %struct.sdma_engine*, align 8
  %5 = alloca %struct.sdma_txreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iowait*, align 8
  %8 = alloca i32 (%struct.sdma_txreq*, i32)*, align 8
  store %struct.sdma_engine* %0, %struct.sdma_engine** %4, align 8
  store %struct.sdma_txreq* %1, %struct.sdma_txreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %10 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %9, i32 0, i32 2
  %11 = load %struct.iowait*, %struct.iowait** %10, align 8
  store %struct.iowait* %11, %struct.iowait** %7, align 8
  %12 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %13 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %12, i32 0, i32 1
  %14 = load i32 (%struct.sdma_txreq*, i32)*, i32 (%struct.sdma_txreq*, i32)** %13, align 8
  store i32 (%struct.sdma_txreq*, i32)* %14, i32 (%struct.sdma_txreq*, i32)** %8, align 8
  %15 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %16 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %19 = call i32 @__sdma_txclean(i32 %17, %struct.sdma_txreq* %18)
  %20 = load i32 (%struct.sdma_txreq*, i32)*, i32 (%struct.sdma_txreq*, i32)** %8, align 8
  %21 = icmp ne i32 (%struct.sdma_txreq*, i32)* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32 (%struct.sdma_txreq*, i32)*, i32 (%struct.sdma_txreq*, i32)** %8, align 8
  %24 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 %23(%struct.sdma_txreq* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %3
  %28 = load %struct.iowait*, %struct.iowait** %7, align 8
  %29 = call i64 @iowait_sdma_dec(%struct.iowait* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.iowait*, %struct.iowait** %7, align 8
  %33 = call i32 @iowait_drain_wakeup(%struct.iowait* %32)
  br label %34

34:                                               ; preds = %31, %27
  ret void
}

declare dso_local i32 @__sdma_txclean(i32, %struct.sdma_txreq*) #1

declare dso_local i64 @iowait_sdma_dec(%struct.iowait*) #1

declare dso_local i32 @iowait_drain_wakeup(%struct.iowait*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
