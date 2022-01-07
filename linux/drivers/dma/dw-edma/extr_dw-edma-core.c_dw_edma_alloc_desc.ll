; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_alloc_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_alloc_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_edma_desc = type { %struct.dw_edma_chan* }
%struct.dw_edma_chan = type { i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dw_edma_desc* (%struct.dw_edma_chan*)* @dw_edma_alloc_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dw_edma_desc* @dw_edma_alloc_desc(%struct.dw_edma_chan* %0) #0 {
  %2 = alloca %struct.dw_edma_desc*, align 8
  %3 = alloca %struct.dw_edma_chan*, align 8
  %4 = alloca %struct.dw_edma_desc*, align 8
  store %struct.dw_edma_chan* %0, %struct.dw_edma_chan** %3, align 8
  %5 = load i32, i32* @GFP_NOWAIT, align 4
  %6 = call %struct.dw_edma_desc* @kzalloc(i32 8, i32 %5)
  store %struct.dw_edma_desc* %6, %struct.dw_edma_desc** %4, align 8
  %7 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %4, align 8
  %8 = icmp ne %struct.dw_edma_desc* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.dw_edma_desc* null, %struct.dw_edma_desc** %2, align 8
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %16 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %4, align 8
  %17 = getelementptr inbounds %struct.dw_edma_desc, %struct.dw_edma_desc* %16, i32 0, i32 0
  store %struct.dw_edma_chan* %15, %struct.dw_edma_chan** %17, align 8
  %18 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %4, align 8
  %19 = call i32 @dw_edma_alloc_chunk(%struct.dw_edma_desc* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %4, align 8
  %23 = call i32 @kfree(%struct.dw_edma_desc* %22)
  store %struct.dw_edma_desc* null, %struct.dw_edma_desc** %2, align 8
  br label %26

24:                                               ; preds = %14
  %25 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %4, align 8
  store %struct.dw_edma_desc* %25, %struct.dw_edma_desc** %2, align 8
  br label %26

26:                                               ; preds = %24, %21, %13
  %27 = load %struct.dw_edma_desc*, %struct.dw_edma_desc** %2, align 8
  ret %struct.dw_edma_desc* %27
}

declare dso_local %struct.dw_edma_desc* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dw_edma_alloc_chunk(%struct.dw_edma_desc*) #1

declare dso_local i32 @kfree(%struct.dw_edma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
