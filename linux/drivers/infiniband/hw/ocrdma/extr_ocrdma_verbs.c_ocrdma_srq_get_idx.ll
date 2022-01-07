; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_srq_get_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_srq_get_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_srq = type { i32, %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_srq*)* @ocrdma_srq_get_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_srq_get_idx(%struct.ocrdma_srq* %0) #0 {
  %2 = alloca %struct.ocrdma_srq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ocrdma_srq* %0, %struct.ocrdma_srq** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %46, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %2, align 8
  %8 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %5
  %12 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %2, align 8
  %13 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %12, i32 0, i32 2
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %11
  %21 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %2, align 8
  %22 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ffs(i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 %29, 32
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %31, 1
  %33 = add nsw i32 %30, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %2, align 8
  %36 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %34, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @ocrdma_srq_toggle_bit(%struct.ocrdma_srq* %42, i32 %43)
  br label %49

45:                                               ; preds = %11
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %5

49:                                               ; preds = %20, %5
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %2, align 8
  %52 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  ret i32 %58
}

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocrdma_srq_toggle_bit(%struct.ocrdma_srq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
