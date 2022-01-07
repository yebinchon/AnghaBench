; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_flush_ir_buffer_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_flush_ir_buffer_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_context = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_10__*, i64, i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iso_context*)* @flush_ir_buffer_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_ir_buffer_fill(%struct.iso_context* %0) #0 {
  %2 = alloca %struct.iso_context*, align 8
  store %struct.iso_context* %0, %struct.iso_context** %2, align 8
  %3 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %4 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %11 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PAGE_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %16 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PAGE_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %22 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %25 = call i32 @dma_sync_single_range_for_cpu(i32 %9, i32 %14, i32 %20, i64 %23, i32 %24)
  %26 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %27 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_10__*, i64, i32)*, i32 (%struct.TYPE_10__*, i64, i32)** %29, align 8
  %31 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %32 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %31, i32 0, i32 2
  %33 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %34 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %38 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %42 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %30(%struct.TYPE_10__* %32, i64 %40, i32 %44)
  %46 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %47 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  ret void
}

declare dso_local i32 @dma_sync_single_range_for_cpu(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
