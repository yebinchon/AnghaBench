; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_alloc_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_alloc_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_edma_burst = type { i32 }
%struct.dw_edma_chunk = type { %struct.dw_edma_burst*, i64 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dw_edma_burst* (%struct.dw_edma_chunk*)* @dw_edma_alloc_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dw_edma_burst* @dw_edma_alloc_burst(%struct.dw_edma_chunk* %0) #0 {
  %2 = alloca %struct.dw_edma_burst*, align 8
  %3 = alloca %struct.dw_edma_chunk*, align 8
  %4 = alloca %struct.dw_edma_burst*, align 8
  store %struct.dw_edma_chunk* %0, %struct.dw_edma_chunk** %3, align 8
  %5 = load i32, i32* @GFP_NOWAIT, align 4
  %6 = call %struct.dw_edma_burst* @kzalloc(i32 4, i32 %5)
  store %struct.dw_edma_burst* %6, %struct.dw_edma_burst** %4, align 8
  %7 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %4, align 8
  %8 = icmp ne %struct.dw_edma_burst* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.dw_edma_burst* null, %struct.dw_edma_burst** %2, align 8
  br label %42

14:                                               ; preds = %1
  %15 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %4, align 8
  %16 = getelementptr inbounds %struct.dw_edma_burst, %struct.dw_edma_burst* %15, i32 0, i32 0
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %3, align 8
  %19 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %18, i32 0, i32 0
  %20 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %19, align 8
  %21 = icmp ne %struct.dw_edma_burst* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %3, align 8
  %24 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %4, align 8
  %28 = getelementptr inbounds %struct.dw_edma_burst, %struct.dw_edma_burst* %27, i32 0, i32 0
  %29 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %3, align 8
  %30 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %29, i32 0, i32 0
  %31 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %30, align 8
  %32 = getelementptr inbounds %struct.dw_edma_burst, %struct.dw_edma_burst* %31, i32 0, i32 0
  %33 = call i32 @list_add_tail(i32* %28, i32* %32)
  br label %40

34:                                               ; preds = %14
  %35 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %3, align 8
  %36 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %4, align 8
  %38 = load %struct.dw_edma_chunk*, %struct.dw_edma_chunk** %3, align 8
  %39 = getelementptr inbounds %struct.dw_edma_chunk, %struct.dw_edma_chunk* %38, i32 0, i32 0
  store %struct.dw_edma_burst* %37, %struct.dw_edma_burst** %39, align 8
  br label %40

40:                                               ; preds = %34, %22
  %41 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %4, align 8
  store %struct.dw_edma_burst* %41, %struct.dw_edma_burst** %2, align 8
  br label %42

42:                                               ; preds = %40, %13
  %43 = load %struct.dw_edma_burst*, %struct.dw_edma_burst** %2, align 8
  ret %struct.dw_edma_burst* %43
}

declare dso_local %struct.dw_edma_burst* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
