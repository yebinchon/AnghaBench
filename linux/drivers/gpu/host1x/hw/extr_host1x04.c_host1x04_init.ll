; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_host1x04.c_host1x04_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_host1x04.c_host1x04_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { i32*, i32*, i32*, i32*, i32*, i32* }

@host1x_channel_ops = common dso_local global i32 0, align 4
@host1x_cdma_ops = common dso_local global i32 0, align 4
@host1x_pushbuffer_ops = common dso_local global i32 0, align 4
@host1x_syncpt_ops = common dso_local global i32 0, align 4
@host1x_intr_ops = common dso_local global i32 0, align 4
@host1x_debug_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host1x04_init(%struct.host1x* %0) #0 {
  %2 = alloca %struct.host1x*, align 8
  store %struct.host1x* %0, %struct.host1x** %2, align 8
  %3 = load %struct.host1x*, %struct.host1x** %2, align 8
  %4 = getelementptr inbounds %struct.host1x, %struct.host1x* %3, i32 0, i32 5
  store i32* @host1x_channel_ops, i32** %4, align 8
  %5 = load %struct.host1x*, %struct.host1x** %2, align 8
  %6 = getelementptr inbounds %struct.host1x, %struct.host1x* %5, i32 0, i32 4
  store i32* @host1x_cdma_ops, i32** %6, align 8
  %7 = load %struct.host1x*, %struct.host1x** %2, align 8
  %8 = getelementptr inbounds %struct.host1x, %struct.host1x* %7, i32 0, i32 3
  store i32* @host1x_pushbuffer_ops, i32** %8, align 8
  %9 = load %struct.host1x*, %struct.host1x** %2, align 8
  %10 = getelementptr inbounds %struct.host1x, %struct.host1x* %9, i32 0, i32 2
  store i32* @host1x_syncpt_ops, i32** %10, align 8
  %11 = load %struct.host1x*, %struct.host1x** %2, align 8
  %12 = getelementptr inbounds %struct.host1x, %struct.host1x* %11, i32 0, i32 1
  store i32* @host1x_intr_ops, i32** %12, align 8
  %13 = load %struct.host1x*, %struct.host1x** %2, align 8
  %14 = getelementptr inbounds %struct.host1x, %struct.host1x* %13, i32 0, i32 0
  store i32* @host1x_debug_ops, i32** %14, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
