; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_terminate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mmp_pdma_chan = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mmp_pdma_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_pdma_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.mmp_pdma_chan*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %7 = call %struct.mmp_pdma_chan* @to_mmp_pdma_chan(%struct.dma_chan* %6)
  store %struct.mmp_pdma_chan* %7, %struct.mmp_pdma_chan** %4, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %9 = icmp ne %struct.dma_chan* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %4, align 8
  %15 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @disable_chan(i32 %16)
  %18 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %4, align 8
  %19 = call i32 @mmp_pdma_free_phy(%struct.mmp_pdma_chan* %18)
  %20 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %4, align 8
  %21 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %4, align 8
  %25 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %4, align 8
  %26 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %25, i32 0, i32 3
  %27 = call i32 @mmp_pdma_free_desc_list(%struct.mmp_pdma_chan* %24, i32* %26)
  %28 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %4, align 8
  %29 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %4, align 8
  %30 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %29, i32 0, i32 2
  %31 = call i32 @mmp_pdma_free_desc_list(%struct.mmp_pdma_chan* %28, i32* %30)
  %32 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %4, align 8
  %33 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %32, i32 0, i32 1
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %4, align 8
  %37 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %13, %10
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.mmp_pdma_chan* @to_mmp_pdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @disable_chan(i32) #1

declare dso_local i32 @mmp_pdma_free_phy(%struct.mmp_pdma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mmp_pdma_free_desc_list(%struct.mmp_pdma_chan*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
