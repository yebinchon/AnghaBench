; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_chan = type { i64, %struct.TYPE_2__, i64, %struct.omap_desc* }
%struct.TYPE_2__ = type { i32 }
%struct.omap_desc = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @omap_dma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_dma_callback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.omap_chan*, align 8
  %8 = alloca %struct.omap_desc*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.omap_chan*
  store %struct.omap_chan* %11, %struct.omap_chan** %7, align 8
  %12 = load %struct.omap_chan*, %struct.omap_chan** %7, align 8
  %13 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.omap_chan*, %struct.omap_chan** %7, align 8
  %18 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %17, i32 0, i32 3
  %19 = load %struct.omap_desc*, %struct.omap_desc** %18, align 8
  store %struct.omap_desc* %19, %struct.omap_desc** %8, align 8
  %20 = load %struct.omap_desc*, %struct.omap_desc** %8, align 8
  %21 = icmp ne %struct.omap_desc* %20, null
  br i1 %21, label %22, label %56

22:                                               ; preds = %3
  %23 = load %struct.omap_chan*, %struct.omap_chan** %7, align 8
  %24 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.omap_desc*, %struct.omap_desc** %8, align 8
  %29 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %28, i32 0, i32 1
  %30 = call i32 @vchan_cyclic_callback(i32* %29)
  br label %55

31:                                               ; preds = %22
  %32 = load %struct.omap_desc*, %struct.omap_desc** %8, align 8
  %33 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load %struct.omap_chan*, %struct.omap_chan** %7, align 8
  %38 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.omap_desc*, %struct.omap_desc** %8, align 8
  %41 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36, %31
  %45 = load %struct.omap_chan*, %struct.omap_chan** %7, align 8
  %46 = call i32 @omap_dma_start_desc(%struct.omap_chan* %45)
  %47 = load %struct.omap_desc*, %struct.omap_desc** %8, align 8
  %48 = getelementptr inbounds %struct.omap_desc, %struct.omap_desc* %47, i32 0, i32 1
  %49 = call i32 @vchan_cookie_complete(i32* %48)
  br label %54

50:                                               ; preds = %36
  %51 = load %struct.omap_chan*, %struct.omap_chan** %7, align 8
  %52 = load %struct.omap_desc*, %struct.omap_desc** %8, align 8
  %53 = call i32 @omap_dma_start_sg(%struct.omap_chan* %51, %struct.omap_desc* %52)
  br label %54

54:                                               ; preds = %50, %44
  br label %55

55:                                               ; preds = %54, %27
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.omap_chan*, %struct.omap_chan** %7, align 8
  %58 = getelementptr inbounds %struct.omap_chan, %struct.omap_chan* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vchan_cyclic_callback(i32*) #1

declare dso_local i32 @omap_dma_start_desc(%struct.omap_chan*) #1

declare dso_local i32 @vchan_cookie_complete(i32*) #1

declare dso_local i32 @omap_dma_start_sg(%struct.omap_chan*, %struct.omap_desc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
