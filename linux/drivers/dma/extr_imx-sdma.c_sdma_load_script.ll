; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_load_script.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_load_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i32, i32, %struct.sdma_buffer_descriptor* }
%struct.sdma_buffer_descriptor = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@C0_SETPM = common dso_local global i32 0, align 4
@BD_DONE = common dso_local global i32 0, align 4
@BD_WRAP = common dso_local global i32 0, align 4
@BD_EXTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdma_engine*, i8*, i32, i32)* @sdma_load_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_load_script(%struct.sdma_engine* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdma_engine*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sdma_buffer_descriptor*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.sdma_engine* %0, %struct.sdma_engine** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %16 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %15, i32 0, i32 2
  %17 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %16, align 8
  store %struct.sdma_buffer_descriptor* %17, %struct.sdma_buffer_descriptor** %10, align 8
  %18 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %19 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @dma_alloc_coherent(i32 %20, i32 %21, i32* %12, i32 %22)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %75

29:                                               ; preds = %4
  %30 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %31 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %30, i32 0, i32 1
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load i32, i32* @C0_SETPM, align 4
  %35 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %10, align 8
  %36 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @BD_DONE, align 4
  %39 = load i32, i32* @BD_WRAP, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @BD_EXTD, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %10, align 8
  %44 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sdiv i32 %46, 2
  %48 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %10, align 8
  %49 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %10, align 8
  %53 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.sdma_buffer_descriptor*, %struct.sdma_buffer_descriptor** %10, align 8
  %56 = getelementptr inbounds %struct.sdma_buffer_descriptor, %struct.sdma_buffer_descriptor* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @memcpy(i8* %57, i8* %58, i32 %59)
  %61 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %62 = call i32 @sdma_run_channel0(%struct.sdma_engine* %61)
  store i32 %62, i32* %13, align 4
  %63 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %64 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %63, i32 0, i32 1
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.sdma_engine*, %struct.sdma_engine** %6, align 8
  %68 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @dma_free_coherent(i32 %69, i32 %70, i8* %71, i32 %72)
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %29, %26
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sdma_run_channel0(%struct.sdma_engine*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
