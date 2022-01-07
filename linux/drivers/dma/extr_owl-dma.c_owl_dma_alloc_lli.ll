; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_alloc_lli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_owl-dma.c_owl_dma_alloc_lli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_dma_lli = type { i32, i32 }
%struct.owl_dma = type { i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.owl_dma_lli* (%struct.owl_dma*)* @owl_dma_alloc_lli to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.owl_dma_lli* @owl_dma_alloc_lli(%struct.owl_dma* %0) #0 {
  %2 = alloca %struct.owl_dma_lli*, align 8
  %3 = alloca %struct.owl_dma*, align 8
  %4 = alloca %struct.owl_dma_lli*, align 8
  %5 = alloca i32, align 4
  store %struct.owl_dma* %0, %struct.owl_dma** %3, align 8
  %6 = load %struct.owl_dma*, %struct.owl_dma** %3, align 8
  %7 = getelementptr inbounds %struct.owl_dma, %struct.owl_dma* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_NOWAIT, align 4
  %10 = call %struct.owl_dma_lli* @dma_pool_alloc(i32 %8, i32 %9, i32* %5)
  store %struct.owl_dma_lli* %10, %struct.owl_dma_lli** %4, align 8
  %11 = load %struct.owl_dma_lli*, %struct.owl_dma_lli** %4, align 8
  %12 = icmp ne %struct.owl_dma_lli* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.owl_dma_lli* null, %struct.owl_dma_lli** %2, align 8
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.owl_dma_lli*, %struct.owl_dma_lli** %4, align 8
  %16 = getelementptr inbounds %struct.owl_dma_lli, %struct.owl_dma_lli* %15, i32 0, i32 1
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.owl_dma_lli*, %struct.owl_dma_lli** %4, align 8
  %20 = getelementptr inbounds %struct.owl_dma_lli, %struct.owl_dma_lli* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.owl_dma_lli*, %struct.owl_dma_lli** %4, align 8
  store %struct.owl_dma_lli* %21, %struct.owl_dma_lli** %2, align 8
  br label %22

22:                                               ; preds = %14, %13
  %23 = load %struct.owl_dma_lli*, %struct.owl_dma_lli** %2, align 8
  ret %struct.owl_dma_lli* %23
}

declare dso_local %struct.owl_dma_lli* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
