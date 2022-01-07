; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_free_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_free_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_tdma_chan = type { i32, i32*, %struct.gen_pool* }
%struct.gen_pool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmp_tdma_chan*)* @mmp_tdma_free_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmp_tdma_free_descriptor(%struct.mmp_tdma_chan* %0) #0 {
  %2 = alloca %struct.mmp_tdma_chan*, align 8
  %3 = alloca %struct.gen_pool*, align 8
  %4 = alloca i32, align 4
  store %struct.mmp_tdma_chan* %0, %struct.mmp_tdma_chan** %2, align 8
  %5 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %11, i32 0, i32 2
  %13 = load %struct.gen_pool*, %struct.gen_pool** %12, align 8
  store %struct.gen_pool* %13, %struct.gen_pool** %3, align 8
  %14 = load %struct.gen_pool*, %struct.gen_pool** %3, align 8
  %15 = icmp ne %struct.gen_pool* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %2, align 8
  %18 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.gen_pool*, %struct.gen_pool** %3, align 8
  %23 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %2, align 8
  %24 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = ptrtoint i32* %25 to i64
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @gen_pool_free(%struct.gen_pool* %22, i64 %26, i32 %27)
  br label %29

29:                                               ; preds = %21, %16, %1
  %30 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %2, align 8
  %31 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  ret void
}

declare dso_local i32 @gen_pool_free(%struct.gen_pool*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
