; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_shdma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_shdma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32*, i32 }
%struct.shdma_chan = type { i64, i32, i32, i64, i32, i64, i32 }
%struct.shdma_dev = type { %struct.shdma_ops* }
%struct.shdma_ops = type { i32 (%struct.shdma_chan.0*)* }
%struct.shdma_chan.0 = type opaque

@list = common dso_local global i32 0, align 4
@shdma_slave_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @shdma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shdma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.shdma_chan*, align 8
  %4 = alloca %struct.shdma_dev*, align 8
  %5 = alloca %struct.shdma_ops*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %7 = call %struct.shdma_chan* @to_shdma_chan(%struct.dma_chan* %6)
  store %struct.shdma_chan* %7, %struct.shdma_chan** %3, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %9 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.shdma_dev* @to_shdma_dev(i32 %10)
  store %struct.shdma_dev* %11, %struct.shdma_dev** %4, align 8
  %12 = load %struct.shdma_dev*, %struct.shdma_dev** %4, align 8
  %13 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %12, i32 0, i32 0
  %14 = load %struct.shdma_ops*, %struct.shdma_ops** %13, align 8
  store %struct.shdma_ops* %14, %struct.shdma_ops** %5, align 8
  %15 = load i32, i32* @list, align 4
  %16 = call i32 @LIST_HEAD(i32 %15)
  %17 = load %struct.shdma_chan*, %struct.shdma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %17, i32 0, i32 2
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.shdma_ops*, %struct.shdma_ops** %5, align 8
  %21 = getelementptr inbounds %struct.shdma_ops, %struct.shdma_ops* %20, i32 0, i32 0
  %22 = load i32 (%struct.shdma_chan.0*)*, i32 (%struct.shdma_chan.0*)** %21, align 8
  %23 = load %struct.shdma_chan*, %struct.shdma_chan** %3, align 8
  %24 = bitcast %struct.shdma_chan* %23 to %struct.shdma_chan.0*
  %25 = call i32 %22(%struct.shdma_chan.0* %24)
  %26 = load %struct.shdma_chan*, %struct.shdma_chan** %3, align 8
  %27 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %26, i32 0, i32 2
  %28 = call i32 @spin_unlock_irq(i32* %27)
  %29 = load %struct.shdma_chan*, %struct.shdma_chan** %3, align 8
  %30 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %29, i32 0, i32 6
  %31 = call i32 @list_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load %struct.shdma_chan*, %struct.shdma_chan** %3, align 8
  %35 = call i32 @shdma_chan_ld_cleanup(%struct.shdma_chan* %34, i32 1)
  br label %36

36:                                               ; preds = %33, %1
  %37 = load %struct.shdma_chan*, %struct.shdma_chan** %3, align 8
  %38 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.shdma_chan*, %struct.shdma_chan** %3, align 8
  %43 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @shdma_slave_used, align 4
  %46 = call i32 @clear_bit(i64 %44, i32 %45)
  %47 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %48 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.shdma_chan*, %struct.shdma_chan** %3, align 8
  %51 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load %struct.shdma_chan*, %struct.shdma_chan** %3, align 8
  %53 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %52, i32 0, i32 2
  %54 = call i32 @spin_lock_irq(i32* %53)
  %55 = load %struct.shdma_chan*, %struct.shdma_chan** %3, align 8
  %56 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %55, i32 0, i32 4
  %57 = call i32 @list_splice_init(i32* %56, i32* @list)
  %58 = load %struct.shdma_chan*, %struct.shdma_chan** %3, align 8
  %59 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.shdma_chan*, %struct.shdma_chan** %3, align 8
  %61 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %60, i32 0, i32 2
  %62 = call i32 @spin_unlock_irq(i32* %61)
  %63 = load %struct.shdma_chan*, %struct.shdma_chan** %3, align 8
  %64 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @kfree(i32 %65)
  ret void
}

declare dso_local %struct.shdma_chan* @to_shdma_chan(%struct.dma_chan*) #1

declare dso_local %struct.shdma_dev* @to_shdma_dev(i32) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @shdma_chan_ld_cleanup(%struct.shdma_chan*, i32) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
