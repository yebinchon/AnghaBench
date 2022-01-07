; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_recycle_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_recycle_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar_context*, i32)* @ar_recycle_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar_recycle_buffers(%struct.ar_context* %0, i32 %1) #0 {
  %3 = alloca %struct.ar_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ar_context* %0, %struct.ar_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %7 = call i32 @ar_first_buffer_index(%struct.ar_context* %6)
  store i32 %7, i32* %5, align 4
  br label %8

8:                                                ; preds = %12, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %14 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ar_buffer_bus(%struct.ar_context* %19, i32 %20)
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %24 = call i32 @dma_sync_single_for_device(i32 %18, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.ar_context*, %struct.ar_context** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ar_context_link_page(%struct.ar_context* %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ar_next_buffer_index(i32 %28)
  store i32 %29, i32* %5, align 4
  br label %8

30:                                               ; preds = %8
  ret void
}

declare dso_local i32 @ar_first_buffer_index(%struct.ar_context*) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @ar_buffer_bus(%struct.ar_context*, i32) #1

declare dso_local i32 @ar_context_link_page(%struct.ar_context*, i32) #1

declare dso_local i32 @ar_next_buffer_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
