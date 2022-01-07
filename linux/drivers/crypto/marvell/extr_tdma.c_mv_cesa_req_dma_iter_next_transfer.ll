; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_req_dma_iter_next_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_tdma.c_mv_cesa_req_dma_iter_next_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_dma_iter = type { i64 }
%struct.mv_cesa_sg_dma_iter = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv_cesa_req_dma_iter_next_transfer(%struct.mv_cesa_dma_iter* %0, %struct.mv_cesa_sg_dma_iter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv_cesa_dma_iter*, align 8
  %6 = alloca %struct.mv_cesa_sg_dma_iter*, align 8
  %7 = alloca i32, align 4
  store %struct.mv_cesa_dma_iter* %0, %struct.mv_cesa_dma_iter** %5, align 8
  store %struct.mv_cesa_sg_dma_iter* %1, %struct.mv_cesa_sg_dma_iter** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %6, align 8
  %9 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %6, align 8
  %17 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %6, align 8
  %23 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %6, align 8
  %27 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %6, align 8
  %30 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @sg_dma_len(i64 %31)
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %13
  %35 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %6, align 8
  %36 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @sg_is_last(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %60

41:                                               ; preds = %34
  %42 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %6, align 8
  %43 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %6, align 8
  %45 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @sg_next(i64 %46)
  %48 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %6, align 8
  %49 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %41, %13
  %51 = load %struct.mv_cesa_sg_dma_iter*, %struct.mv_cesa_sg_dma_iter** %6, align 8
  %52 = getelementptr inbounds %struct.mv_cesa_sg_dma_iter, %struct.mv_cesa_sg_dma_iter* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mv_cesa_dma_iter*, %struct.mv_cesa_dma_iter** %5, align 8
  %55 = getelementptr inbounds %struct.mv_cesa_dma_iter, %struct.mv_cesa_dma_iter* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %60

59:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %58, %40, %12
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @sg_dma_len(i64) #1

declare dso_local i64 @sg_is_last(i64) #1

declare dso_local i64 @sg_next(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
