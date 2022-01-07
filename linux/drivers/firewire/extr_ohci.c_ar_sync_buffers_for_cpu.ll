; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_sync_buffers_for_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_sync_buffers_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar_context*, i32, i32)* @ar_sync_buffers_for_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar_sync_buffers_for_cpu(%struct.ar_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ar_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ar_context* %0, %struct.ar_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %9 = call i32 @ar_first_buffer_index(%struct.ar_context* %8)
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %14, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %16 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ar_buffer_bus(%struct.ar_context* %21, i32 %22)
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %26 = call i32 @dma_sync_single_for_cpu(i32 %20, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ar_next_buffer_index(i32 %27)
  store i32 %28, i32* %7, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load i32, i32* %6, align 4
  %31 = icmp ugt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %34 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ar_context*, %struct.ar_context** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ar_buffer_bus(%struct.ar_context* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %44 = call i32 @dma_sync_single_for_cpu(i32 %38, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @ar_first_buffer_index(%struct.ar_context*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @ar_buffer_bus(%struct.ar_context*, i32) #1

declare dso_local i32 @ar_next_buffer_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
