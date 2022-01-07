; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.h__sdma_txadd_daddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.h__sdma_txadd_daddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.sdma_txreq = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i32, %struct.sdma_txreq*, i32, i64)* @_sdma_txadd_daddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sdma_txadd_daddr(%struct.hfi1_devdata* %0, i32 %1, %struct.sdma_txreq* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sdma_txreq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sdma_txreq* %2, %struct.sdma_txreq** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.sdma_txreq*, %struct.sdma_txreq** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i64, i64* %11, align 8
  %17 = call i32 @make_tx_sdma_desc(%struct.sdma_txreq* %13, i32 %14, i32 %15, i64 %16)
  %18 = load i64, i64* %11, align 8
  %19 = load %struct.sdma_txreq*, %struct.sdma_txreq** %9, align 8
  %20 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load i64, i64* %11, align 8
  %26 = load %struct.sdma_txreq*, %struct.sdma_txreq** %9, align 8
  %27 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load %struct.sdma_txreq*, %struct.sdma_txreq** %9, align 8
  %31 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %55, label %34

34:                                               ; preds = %5
  %35 = load %struct.sdma_txreq*, %struct.sdma_txreq** %9, align 8
  %36 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = and i64 %38, 3
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %43 = load %struct.sdma_txreq*, %struct.sdma_txreq** %9, align 8
  %44 = call i32 @_pad_sdma_tx_descs(%struct.hfi1_devdata* %42, %struct.sdma_txreq* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %61

49:                                               ; preds = %41
  br label %54

50:                                               ; preds = %34
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %52 = load %struct.sdma_txreq*, %struct.sdma_txreq** %9, align 8
  %53 = call i32 @_sdma_close_tx(%struct.hfi1_devdata* %51, %struct.sdma_txreq* %52)
  br label %54

54:                                               ; preds = %50, %49
  br label %55

55:                                               ; preds = %54, %5
  %56 = load %struct.sdma_txreq*, %struct.sdma_txreq** %9, align 8
  %57 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %55, %47
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @make_tx_sdma_desc(%struct.sdma_txreq*, i32, i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @_pad_sdma_tx_descs(%struct.hfi1_devdata*, %struct.sdma_txreq*) #1

declare dso_local i32 @_sdma_close_tx(%struct.hfi1_devdata*, %struct.sdma_txreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
