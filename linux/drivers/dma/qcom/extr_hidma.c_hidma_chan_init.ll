; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma.c_hidma_chan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma.c_hidma_chan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidma_dev = type { %struct.dma_device }
%struct.dma_device = type { i32, i32, i32 }
%struct.hidma_chan = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, %struct.hidma_dev*, i32 }
%struct.TYPE_2__ = type { i32, %struct.dma_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidma_dev*, i32)* @hidma_chan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidma_chan_init(%struct.hidma_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hidma_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hidma_chan*, align 8
  %7 = alloca %struct.dma_device*, align 8
  store %struct.hidma_dev* %0, %struct.hidma_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hidma_dev*, %struct.hidma_dev** %4, align 8
  %9 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.hidma_chan* @devm_kzalloc(i32 %11, i32 56, i32 %12)
  store %struct.hidma_chan* %13, %struct.hidma_chan** %6, align 8
  %14 = load %struct.hidma_chan*, %struct.hidma_chan** %6, align 8
  %15 = icmp ne %struct.hidma_chan* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load %struct.hidma_dev*, %struct.hidma_dev** %4, align 8
  %21 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %20, i32 0, i32 0
  store %struct.dma_device* %21, %struct.dma_device** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.hidma_chan*, %struct.hidma_chan** %6, align 8
  %24 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 8
  %25 = load %struct.hidma_dev*, %struct.hidma_dev** %4, align 8
  %26 = load %struct.hidma_chan*, %struct.hidma_chan** %6, align 8
  %27 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %26, i32 0, i32 7
  store %struct.hidma_dev* %25, %struct.hidma_dev** %27, align 8
  %28 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %29 = load %struct.hidma_chan*, %struct.hidma_chan** %6, align 8
  %30 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store %struct.dma_device* %28, %struct.dma_device** %31, align 8
  %32 = load %struct.hidma_chan*, %struct.hidma_chan** %6, align 8
  %33 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %32, i32 0, i32 0
  %34 = call i32 @dma_cookie_init(%struct.TYPE_2__* %33)
  %35 = load %struct.hidma_chan*, %struct.hidma_chan** %6, align 8
  %36 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %35, i32 0, i32 6
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.hidma_chan*, %struct.hidma_chan** %6, align 8
  %39 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %38, i32 0, i32 5
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.hidma_chan*, %struct.hidma_chan** %6, align 8
  %42 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %41, i32 0, i32 4
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.hidma_chan*, %struct.hidma_chan** %6, align 8
  %45 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %44, i32 0, i32 3
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.hidma_chan*, %struct.hidma_chan** %6, align 8
  %48 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %47, i32 0, i32 2
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.hidma_chan*, %struct.hidma_chan** %6, align 8
  %51 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %50, i32 0, i32 1
  %52 = call i32 @spin_lock_init(i32* %51)
  %53 = load %struct.hidma_chan*, %struct.hidma_chan** %6, align 8
  %54 = getelementptr inbounds %struct.hidma_chan, %struct.hidma_chan* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %57 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %56, i32 0, i32 1
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  %59 = load %struct.hidma_dev*, %struct.hidma_dev** %4, align 8
  %60 = getelementptr inbounds %struct.hidma_dev, %struct.hidma_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %19, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.hidma_chan* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @dma_cookie_init(%struct.TYPE_2__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
