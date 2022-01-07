; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c___sdma_txclean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c___sdma_txclean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.sdma_txreq = type { i64, i64, i32*, i32, i32* }

@SDMA_AHG_APPLY_UPDATE1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__sdma_txclean(%struct.hfi1_devdata* %0, %struct.sdma_txreq* %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.sdma_txreq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store %struct.sdma_txreq* %1, %struct.sdma_txreq** %4, align 8
  %8 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %9 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %13 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %14 = call i32 @ahg_mode(%struct.sdma_txreq* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %16 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %17 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = call i32 @sdma_unmap_desc(%struct.hfi1_devdata* %15, i32* %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SDMA_AHG_APPLY_UPDATE1, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %12
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 1, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %45, %27
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %34 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %39 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %40 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = call i32 @sdma_unmap_desc(%struct.hfi1_devdata* %38, i32* %43)
  br label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %31

48:                                               ; preds = %31
  %49 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %50 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %2
  %52 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %53 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @kfree(i32* %54)
  %56 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %57 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %56, i32 0, i32 4
  store i32* null, i32** %57, align 8
  %58 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %59 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %62 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @ARRAY_SIZE(i32 %63)
  %65 = icmp sgt i64 %60, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %51
  %70 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %71 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @ARRAY_SIZE(i32 %72)
  %74 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %75 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.sdma_txreq*, %struct.sdma_txreq** %4, align 8
  %77 = getelementptr inbounds %struct.sdma_txreq, %struct.sdma_txreq* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @kfree(i32* %78)
  br label %80

80:                                               ; preds = %69, %51
  ret void
}

declare dso_local i32 @ahg_mode(%struct.sdma_txreq*) #1

declare dso_local i32 @sdma_unmap_desc(%struct.hfi1_devdata*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
