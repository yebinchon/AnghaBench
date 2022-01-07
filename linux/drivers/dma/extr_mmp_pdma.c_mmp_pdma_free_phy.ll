; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_free_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_free_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_pdma_chan = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.mmp_pdma_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmp_pdma_chan*)* @mmp_pdma_free_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmp_pdma_free_phy(%struct.mmp_pdma_chan* %0) #0 {
  %2 = alloca %struct.mmp_pdma_chan*, align 8
  %3 = alloca %struct.mmp_pdma_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mmp_pdma_chan* %0, %struct.mmp_pdma_chan** %2, align 8
  %6 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mmp_pdma_device* @to_mmp_pdma_dev(i32 %9)
  store %struct.mmp_pdma_device* %10, %struct.mmp_pdma_device** %3, align 8
  %11 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %2, align 8
  %12 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %2, align 8
  %18 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @DRCMR(i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %2, align 8
  %22 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 0, i64 %27)
  %29 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %3, align 8
  %30 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %29, i32 0, i32 0
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %2, align 8
  %34 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.mmp_pdma_chan*, %struct.mmp_pdma_chan** %2, align 8
  %38 = getelementptr inbounds %struct.mmp_pdma_chan, %struct.mmp_pdma_chan* %37, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %38, align 8
  %39 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %3, align 8
  %40 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %39, i32 0, i32 0
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  br label %43

43:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.mmp_pdma_device* @to_mmp_pdma_dev(i32) #1

declare dso_local i64 @DRCMR(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
