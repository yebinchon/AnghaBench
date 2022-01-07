; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_advance_dma_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_mr.c_advance_dma_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dma_info = type { i64, i32, i32, i64, %struct.rxe_sge* }
%struct.rxe_sge = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @advance_dma_data(%struct.rxe_dma_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_dma_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxe_sge*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rxe_dma_info* %0, %struct.rxe_dma_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %4, align 8
  %11 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %10, i32 0, i32 4
  %12 = load %struct.rxe_sge*, %struct.rxe_sge** %11, align 8
  %13 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %4, align 8
  %14 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %12, i64 %15
  store %struct.rxe_sge* %16, %struct.rxe_sge** %6, align 8
  %17 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %4, align 8
  %18 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %4, align 8
  %21 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %65, %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.rxe_sge*, %struct.rxe_sge** %6, align 8
  %29 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.rxe_sge*, %struct.rxe_sge** %6, align 8
  %34 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %33, i32 1
  store %struct.rxe_sge* %34, %struct.rxe_sge** %6, align 8
  %35 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %4, align 8
  %36 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %36, align 8
  store i32 0, i32* %7, align 4
  %39 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %4, align 8
  %40 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %4, align 8
  %43 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp uge i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %82

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.rxe_sge*, %struct.rxe_sge** %6, align 8
  %54 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %55, %56
  %58 = icmp ugt i32 %52, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load %struct.rxe_sge*, %struct.rxe_sge** %6, align 8
  %61 = getelementptr inbounds %struct.rxe_sge, %struct.rxe_sge* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %59, %50
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sub i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %5, align 4
  %74 = sub i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %23

75:                                               ; preds = %23
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %4, align 8
  %78 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.rxe_dma_info*, %struct.rxe_dma_info** %4, align 8
  %81 = getelementptr inbounds %struct.rxe_dma_info, %struct.rxe_dma_info* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %75, %46
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
