; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c___rdma_block_iter_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c___rdma_block_iter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_block_iter = type { i32, i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rdma_block_iter_next(%struct.ib_block_iter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_block_iter*, align 8
  %4 = alloca i32, align 4
  store %struct.ib_block_iter* %0, %struct.ib_block_iter** %3, align 8
  %5 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %6 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %11 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %68

15:                                               ; preds = %9
  %16 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %17 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @sg_dma_address(i64 %18)
  %20 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %21 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  %24 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %25 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %27 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %30 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @BIT_ULL(i32 %31)
  %33 = sub i32 %32, 1
  %34 = and i32 %28, %33
  store i32 %34, i32* %4, align 4
  %35 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %36 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @BIT_ULL(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = sub i32 %38, %39
  %41 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %42 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %46 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %50 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @sg_dma_len(i64 %51)
  %53 = icmp sge i64 %48, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %15
  %55 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %56 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %58 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @sg_next(i64 %59)
  %61 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %62 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  %63 = load %struct.ib_block_iter*, %struct.ib_block_iter** %3, align 8
  %64 = getelementptr inbounds %struct.ib_block_iter, %struct.ib_block_iter* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %54, %15
  store i32 1, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %14
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @sg_dma_address(i64) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i64 @sg_dma_len(i64) #1

declare dso_local i64 @sg_next(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
