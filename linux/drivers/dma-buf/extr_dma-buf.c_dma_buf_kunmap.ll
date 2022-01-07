; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_kunmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_kunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dma_buf*, i64, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_buf_kunmap(%struct.dma_buf* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %8 = icmp ne %struct.dma_buf* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %13 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.dma_buf*, i64, i8*)*, i32 (%struct.dma_buf*, i64, i8*)** %15, align 8
  %17 = icmp ne i32 (%struct.dma_buf*, i64, i8*)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %20 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.dma_buf*, i64, i8*)*, i32 (%struct.dma_buf*, i64, i8*)** %22, align 8
  %24 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 %23(%struct.dma_buf* %24, i64 %25, i8* %26)
  br label %28

28:                                               ; preds = %18, %3
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
