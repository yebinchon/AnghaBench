; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_init_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_init_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioatdma_device = type { %struct.ioatdma_chan**, i64, %struct.dma_device }
%struct.dma_device = type { i32 }
%struct.ioatdma_chan = type { i32, i32, %struct.dma_chan, i32, i64, %struct.ioatdma_device* }
%struct.dma_chan = type { i32, %struct.dma_device* }

@ioat_timer_event = common dso_local global i32 0, align 4
@ioat_cleanup_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioatdma_device*, %struct.ioatdma_chan*, i32)* @ioat_init_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat_init_channel(%struct.ioatdma_device* %0, %struct.ioatdma_chan* %1, i32 %2) #0 {
  %4 = alloca %struct.ioatdma_device*, align 8
  %5 = alloca %struct.ioatdma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_device*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i64, align 8
  store %struct.ioatdma_device* %0, %struct.ioatdma_device** %4, align 8
  store %struct.ioatdma_chan* %1, %struct.ioatdma_chan** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ioatdma_device*, %struct.ioatdma_device** %4, align 8
  %11 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %10, i32 0, i32 2
  store %struct.dma_device* %11, %struct.dma_device** %7, align 8
  %12 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %5, align 8
  %13 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %12, i32 0, i32 2
  store %struct.dma_chan* %13, %struct.dma_chan** %8, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %15 = ptrtoint %struct.dma_chan* %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = load %struct.ioatdma_device*, %struct.ioatdma_device** %4, align 8
  %17 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %5, align 8
  %18 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %17, i32 0, i32 5
  store %struct.ioatdma_device* %16, %struct.ioatdma_device** %18, align 8
  %19 = load %struct.ioatdma_device*, %struct.ioatdma_device** %4, align 8
  %20 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  %24 = mul nsw i32 128, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %21, %25
  %27 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %5, align 8
  %28 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %27, i32 0, i32 4
  store i64 %26, i64* %28, align 8
  %29 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %5, align 8
  %30 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %29, i32 0, i32 3
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %33 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %5, align 8
  %34 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %34, i32 0, i32 1
  store %struct.dma_device* %32, %struct.dma_device** %35, align 8
  %36 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %5, align 8
  %37 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %36, i32 0, i32 2
  %38 = call i32 @dma_cookie_init(%struct.dma_chan* %37)
  %39 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %5, align 8
  %40 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %40, i32 0, i32 0
  %42 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %43 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %42, i32 0, i32 0
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %5, align 8
  %46 = load %struct.ioatdma_device*, %struct.ioatdma_device** %4, align 8
  %47 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %46, i32 0, i32 0
  %48 = load %struct.ioatdma_chan**, %struct.ioatdma_chan*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ioatdma_chan*, %struct.ioatdma_chan** %48, i64 %50
  store %struct.ioatdma_chan* %45, %struct.ioatdma_chan** %51, align 8
  %52 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %5, align 8
  %53 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %52, i32 0, i32 1
  %54 = load i32, i32* @ioat_timer_event, align 4
  %55 = call i32 @timer_setup(i32* %53, i32 %54, i32 0)
  %56 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %5, align 8
  %57 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %56, i32 0, i32 0
  %58 = load i32, i32* @ioat_cleanup_event, align 4
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @tasklet_init(i32* %57, i32 %58, i64 %59)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_cookie_init(%struct.dma_chan*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
