; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_kmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_buf_kmap(%struct.dma_buf* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca i64, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %7 = icmp ne %struct.dma_buf* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %12 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i8* (%struct.dma_buf*, i64)**
  %16 = load i8* (%struct.dma_buf*, i64)*, i8* (%struct.dma_buf*, i64)** %15, align 8
  %17 = icmp ne i8* (%struct.dma_buf*, i64)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %21 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i8* (%struct.dma_buf*, i64)**
  %25 = load i8* (%struct.dma_buf*, i64)*, i8* (%struct.dma_buf*, i64)** %24, align 8
  %26 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i8* %25(%struct.dma_buf* %26, i64 %27)
  store i8* %28, i8** %3, align 8
  br label %29

29:                                               ; preds = %19, %18
  %30 = load i8*, i8** %3, align 8
  ret i8* %30
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
