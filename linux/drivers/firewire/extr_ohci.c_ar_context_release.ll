; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_context_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_context_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_context = type { i64*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AR_BUFFERS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar_context*)* @ar_context_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar_context_release(%struct.ar_context* %0) #0 {
  %2 = alloca %struct.ar_context*, align 8
  %3 = alloca i32, align 4
  store %struct.ar_context* %0, %struct.ar_context** %2, align 8
  %4 = load %struct.ar_context*, %struct.ar_context** %2, align 8
  %5 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @vunmap(i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %43, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @AR_BUFFERS, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  %13 = load %struct.ar_context*, %struct.ar_context** %2, align 8
  %14 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %12
  %22 = load %struct.ar_context*, %struct.ar_context** %2, align 8
  %23 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ar_context*, %struct.ar_context** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @ar_buffer_bus(%struct.ar_context* %28, i32 %29)
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i32 @dma_unmap_page(i32 %27, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.ar_context*, %struct.ar_context** %2, align 8
  %35 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @__free_page(i64 %40)
  br label %42

42:                                               ; preds = %21, %12
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %8

46:                                               ; preds = %8
  ret void
}

declare dso_local i32 @vunmap(i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @ar_buffer_bus(%struct.ar_context*, i32) #1

declare dso_local i32 @__free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
