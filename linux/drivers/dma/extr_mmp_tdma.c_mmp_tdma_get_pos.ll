; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_get_pos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_get_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_tdma_chan = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@TDSAR = common dso_local global i64 0, align 8
@TDDAR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mmp_tdma_chan*)* @mmp_tdma_get_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmp_tdma_get_pos(%struct.mmp_tdma_chan* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mmp_tdma_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.mmp_tdma_chan* %0, %struct.mmp_tdma_chan** %3, align 8
  %5 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %6 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %11 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TDSAR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @__raw_readl(i64 %14)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = sub i64 %22, %21
  store i64 %23, i64* %4, align 8
  br label %48

24:                                               ; preds = %1
  %25 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %31 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TDDAR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i64 @__raw_readl(i64 %34)
  store i64 %35, i64* %4, align 8
  %36 = load %struct.mmp_tdma_chan*, %struct.mmp_tdma_chan** %3, align 8
  %37 = getelementptr inbounds %struct.mmp_tdma_chan, %struct.mmp_tdma_chan* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %4, align 8
  br label %47

44:                                               ; preds = %24
  %45 = load i64, i64* @EINVAL, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %2, align 8
  br label %50

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47, %9
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %2, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i64, i64* %2, align 8
  ret i64 %51
}

declare dso_local i64 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
