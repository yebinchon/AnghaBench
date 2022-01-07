; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_enable_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_enable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k3_dma_dev = type { i64 }

@CH_PRI = common dso_local global i64 0, align 8
@INT_TC1_MASK = common dso_local global i64 0, align 8
@INT_TC2_MASK = common dso_local global i64 0, align 8
@INT_ERR1_MASK = common dso_local global i64 0, align 8
@INT_ERR2_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k3_dma_dev*, i32)* @k3_dma_enable_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k3_dma_enable_dma(%struct.k3_dma_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.k3_dma_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.k3_dma_dev* %0, %struct.k3_dma_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %3, align 8
  %9 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CH_PRI, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel_relaxed(i32 0, i64 %12)
  %14 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %3, align 8
  %15 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INT_TC1_MASK, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel_relaxed(i32 65535, i64 %18)
  %20 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %3, align 8
  %21 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INT_TC2_MASK, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel_relaxed(i32 65535, i64 %24)
  %26 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %3, align 8
  %27 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @INT_ERR1_MASK, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel_relaxed(i32 65535, i64 %30)
  %32 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %3, align 8
  %33 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @INT_ERR2_MASK, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel_relaxed(i32 65535, i64 %36)
  br label %63

38:                                               ; preds = %2
  %39 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %3, align 8
  %40 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @INT_TC1_MASK, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel_relaxed(i32 0, i64 %43)
  %45 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %3, align 8
  %46 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @INT_TC2_MASK, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel_relaxed(i32 0, i64 %49)
  %51 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %3, align 8
  %52 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @INT_ERR1_MASK, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel_relaxed(i32 0, i64 %55)
  %57 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %3, align 8
  %58 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @INT_ERR2_MASK, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel_relaxed(i32 0, i64 %61)
  br label %63

63:                                               ; preds = %38, %7
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
