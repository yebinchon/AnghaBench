; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_alloc_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_alloc_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_tdma_desc = type { i32 }
%struct.mmp_tdma_chan = type { i32, %struct.mmp_tdma_desc*, i32, %struct.gen_pool* }
%struct.gen_pool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmp_tdma_desc* (%struct.mmp_tdma_chan*)* @mmp_tdma_alloc_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmp_tdma_desc* @mmp_tdma_alloc_descriptor(%struct.mmp_tdma_chan* %0) #0 {
  %2 = alloca %struct.mmp_tdma_desc*, align 8
  %3 = alloca %struct.mmp_tdma_chan*, align 8
  %4 = alloca %struct.gen_pool*, align 8
  %5 = alloca i32, align 4
  store %struct.mmp_tdma_chan* %0, %struct.mmp_tdma_chan** %3, align 8
  %6 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %12, i32 0, i32 3
  %14 = load %struct.gen_pool*, %struct.gen_pool** %13, align 8
  store %struct.gen_pool* %14, %struct.gen_pool** %4, align 8
  %15 = load %struct.gen_pool*, %struct.gen_pool** %4, align 8
  %16 = icmp ne %struct.gen_pool* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.mmp_tdma_desc* null, %struct.mmp_tdma_desc** %2, align 8
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.gen_pool*, %struct.gen_pool** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %22 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %21, i32 0, i32 2
  %23 = call %struct.mmp_tdma_desc* @gen_pool_dma_alloc(%struct.gen_pool* %19, i32 %20, i32* %22)
  %24 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %25 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %24, i32 0, i32 1
  store %struct.mmp_tdma_desc* %23, %struct.mmp_tdma_desc** %25, align 8
  %26 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %27 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %26, i32 0, i32 1
  %28 = load %struct.mmp_tdma_desc*, %struct.mmp_tdma_desc** %27, align 8
  store %struct.mmp_tdma_desc* %28, %struct.mmp_tdma_desc** %2, align 8
  br label %29

29:                                               ; preds = %18, %17
  %30 = load %struct.mmp_tdma_desc*, %struct.mmp_tdma_desc** %2, align 8
  ret %struct.mmp_tdma_desc* %30
}

declare dso_local %struct.mmp_tdma_desc* @gen_pool_dma_alloc(%struct.gen_pool*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
