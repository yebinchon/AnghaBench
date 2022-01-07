; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c__extend_sdma_tx_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c__extend_sdma_tx_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.sdma_txreq = type { i32, i32, i32*, i32*, i64, i64, i64 }

@MAX_DESC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.sdma_txreq*)* @_extend_sdma_tx_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_extend_sdma_tx_descs(%struct.hfi1_devdata* %0, %struct.sdma_txreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.sdma_txreq*, align 8
  %6 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store %struct.sdma_txreq* %1, %struct.sdma_txreq** %5, align 8
  %7 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %8 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MAX_DESC, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp eq i32 %9, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %2
  %17 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %18 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @MAX_DESC, align 4
  %23 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %24 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %48

25:                                               ; preds = %16
  %26 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %27 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %25
  %31 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %32 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 4
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i64 @kmalloc(i64 %34, i32 %35)
  %37 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %38 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %37, i32 0, i32 5
  store i64 %36, i64* %38, align 8
  %39 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %40 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %30
  br label %99

44:                                               ; preds = %30
  %45 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %46 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %25
  br label %48

48:                                               ; preds = %47, %21
  store i32 0, i32* %3, align 4
  br label %105

49:                                               ; preds = %2
  %50 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %51 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MAX_DESC, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %99

59:                                               ; preds = %49
  %60 = load i32, i32* @MAX_DESC, align 4
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = call i32* @kmalloc_array(i32 %60, i32 4, i32 %61)
  %63 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %64 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %63, i32 0, i32 3
  store i32* %62, i32** %64, align 8
  %65 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %66 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %59
  br label %99

70:                                               ; preds = %59
  %71 = load i32, i32* @MAX_DESC, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %74 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %95, %70
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %78 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %75
  %82 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %83 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %90 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  br label %95

95:                                               ; preds = %81
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %75

98:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %105

99:                                               ; preds = %69, %58, %43
  %100 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %101 = load %struct.sdma_txreq*, %struct.sdma_txreq** %5, align 8
  %102 = call i32 @__sdma_txclean(%struct.hfi1_devdata* %100, %struct.sdma_txreq* %101)
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %99, %98, %48
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @kmalloc(i64, i32) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @__sdma_txclean(%struct.hfi1_devdata*, %struct.sdma_txreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
