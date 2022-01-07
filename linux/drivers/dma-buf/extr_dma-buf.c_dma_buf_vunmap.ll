; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_vunmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_vunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i8*, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dma_buf*, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_buf_vunmap(%struct.dma_buf* %0, i8* %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca i8*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %6 = icmp ne %struct.dma_buf* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @WARN_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %64

12:                                               ; preds = %2
  %13 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %14 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %21 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %27 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %34 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %33, i32 0, i32 2
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %37 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %12
  %42 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %43 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.dma_buf*, i8*)*, i32 (%struct.dma_buf*, i8*)** %45, align 8
  %47 = icmp ne i32 (%struct.dma_buf*, i8*)* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %50 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %49, i32 0, i32 3
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.dma_buf*, i8*)*, i32 (%struct.dma_buf*, i8*)** %52, align 8
  %54 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i32 %53(%struct.dma_buf* %54, i8* %55)
  br label %57

57:                                               ; preds = %48, %41
  %58 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %59 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %58, i32 0, i32 0
  store i8* null, i8** %59, align 8
  br label %60

60:                                               ; preds = %57, %12
  %61 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %62 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %61, i32 0, i32 2
  %63 = call i32 @mutex_unlock(i32* %62)
  br label %64

64:                                               ; preds = %60, %11
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
