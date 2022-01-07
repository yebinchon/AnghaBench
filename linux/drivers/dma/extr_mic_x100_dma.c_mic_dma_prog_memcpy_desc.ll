; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_prog_memcpy_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_prog_memcpy_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_dma_chan = type { i64, i32* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mic_dma_chan*, i32, i32, i64)* @mic_dma_prog_memcpy_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_dma_prog_memcpy_desc(%struct.mic_dma_chan* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mic_dma_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mic_dma_chan* %0, %struct.mic_dma_chan** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %6, align 8
  %15 = call %struct.TYPE_2__* @to_mic_dma_dev(%struct.mic_dma_chan* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %11, align 8
  %20 = udiv i64 %18, %19
  %21 = add i64 %20, 3
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %11, align 8
  %25 = urem i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %27, %4
  %31 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %6, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @mic_dma_avail_desc_ring_space(%struct.mic_dma_chan* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %5, align 4
  br label %73

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %69, %38
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i64 @min(i64 %40, i64 %41)
  store i64 %42, i64* %10, align 8
  %43 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %6, align 8
  %44 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %6, align 8
  %47 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @mic_dma_memcpy_desc(i32* %49, i32 %50, i32 %51, i64 %52)
  %54 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %6, align 8
  %55 = call i32 @mic_dma_hw_ring_inc_head(%struct.mic_dma_chan* %54)
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %65, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %39
  %70 = load i64, i64* %9, align 8
  %71 = icmp ugt i64 %70, 0
  br i1 %71, label %39, label %72

72:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %36
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_2__* @to_mic_dma_dev(%struct.mic_dma_chan*) #1

declare dso_local i32 @mic_dma_avail_desc_ring_space(%struct.mic_dma_chan*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @mic_dma_memcpy_desc(i32*, i32, i32, i64) #1

declare dso_local i32 @mic_dma_hw_ring_inc_head(%struct.mic_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
