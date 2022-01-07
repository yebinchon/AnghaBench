; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_shdma_chan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdma-base.c_shdma_chan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shdma_dev = type { %struct.shdma_chan**, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.shdma_chan = type { i32, %struct.TYPE_4__, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }

@SHDMA_PM_ESTABLISHED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shdma_chan_probe(%struct.shdma_dev* %0, %struct.shdma_chan* %1, i32 %2) #0 {
  %4 = alloca %struct.shdma_dev*, align 8
  %5 = alloca %struct.shdma_chan*, align 8
  %6 = alloca i32, align 4
  store %struct.shdma_dev* %0, %struct.shdma_dev** %4, align 8
  store %struct.shdma_chan* %1, %struct.shdma_chan** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @SHDMA_PM_ESTABLISHED, align 4
  %8 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %9 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %8, i32 0, i32 7
  store i32 %7, i32* %9, align 4
  %10 = load %struct.shdma_dev*, %struct.shdma_dev** %4, align 8
  %11 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %10, i32 0, i32 1
  %12 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %13 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %14, align 8
  %15 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %16 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %15, i32 0, i32 1
  %17 = call i32 @dma_cookie_init(%struct.TYPE_4__* %16)
  %18 = load %struct.shdma_dev*, %struct.shdma_dev** %4, align 8
  %19 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %23 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %26 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %28 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %3
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %34 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %33, i32 0, i32 5
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %31, %3
  %36 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %37 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %36, i32 0, i32 4
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %40 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %39, i32 0, i32 3
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %43 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %42, i32 0, i32 2
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %46 = getelementptr inbounds %struct.shdma_chan, %struct.shdma_chan* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.shdma_dev*, %struct.shdma_dev** %4, align 8
  %49 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @list_add_tail(i32* %47, i32* %50)
  %52 = load %struct.shdma_chan*, %struct.shdma_chan** %5, align 8
  %53 = load %struct.shdma_dev*, %struct.shdma_dev** %4, align 8
  %54 = getelementptr inbounds %struct.shdma_dev, %struct.shdma_dev* %53, i32 0, i32 0
  %55 = load %struct.shdma_chan**, %struct.shdma_chan*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.shdma_chan*, %struct.shdma_chan** %55, i64 %57
  store %struct.shdma_chan* %52, %struct.shdma_chan** %58, align 8
  ret void
}

declare dso_local i32 @dma_cookie_init(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
