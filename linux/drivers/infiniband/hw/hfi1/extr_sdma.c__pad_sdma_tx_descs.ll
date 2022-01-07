; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c__pad_sdma_tx_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c__pad_sdma_tx_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.sdma_txreq = type { i64, i64, i32 }

@SDMA_MAP_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pad_sdma_tx_descs(%struct.hfi1_devdata* %0, %struct.sdma_txreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.sdma_txreq*, align 8
  %6 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store %struct.sdma_txreq* %1, %struct.sdma_txreq** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %8 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %12 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %15 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %23 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %24 = call i32 @_extend_sdma_tx_descs(%struct.hfi1_devdata* %22, %struct.sdma_txreq* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %29 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %30 = call i32 @__sdma_txclean(%struct.hfi1_devdata* %28, %struct.sdma_txreq* %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %35 = load i32, i32* @SDMA_MAP_NONE, align 4
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %37 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %40 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = and i64 %42, 3
  %44 = sub i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @make_tx_sdma_desc(%struct.sdma_txreq* %34, i32 %35, i32 %38, i32 %45)
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %48 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %49 = call i32 @_sdma_close_tx(%struct.hfi1_devdata* %47, %struct.sdma_txreq* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %33, %27
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @_extend_sdma_tx_descs(%struct.hfi1_devdata*, %struct.sdma_txreq*) #1

declare dso_local i32 @__sdma_txclean(%struct.hfi1_devdata*, %struct.sdma_txreq*) #1

declare dso_local i32 @make_tx_sdma_desc(%struct.sdma_txreq*, i32, i32, i32) #1

declare dso_local i32 @_sdma_close_tx(%struct.hfi1_devdata*, %struct.sdma_txreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
