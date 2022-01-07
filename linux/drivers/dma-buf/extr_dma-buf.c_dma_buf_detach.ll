; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)*, i32 (%struct.dma_buf_attachment*, i64, i32)* }
%struct.dma_buf_attachment = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_buf_detach(%struct.dma_buf* %0, %struct.dma_buf_attachment* %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %4, align 8
  %5 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %6 = icmp ne %struct.dma_buf* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %9 = icmp ne %struct.dma_buf_attachment* %8, null
  %10 = xor i1 %9, true
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ true, %2 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %64

17:                                               ; preds = %11
  %18 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %19 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %24 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32 (%struct.dma_buf_attachment*, i64, i32)*, i32 (%struct.dma_buf_attachment*, i64, i32)** %26, align 8
  %28 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %29 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %30 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %33 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %27(%struct.dma_buf_attachment* %28, i64 %31, i32 %34)
  br label %36

36:                                               ; preds = %22, %17
  %37 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %38 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %41 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %40, i32 0, i32 0
  %42 = call i32 @list_del(i32* %41)
  %43 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %44 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)*, i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)** %46, align 8
  %48 = icmp ne i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %36
  %50 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %51 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)*, i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)** %53, align 8
  %55 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %56 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %57 = call i32 %54(%struct.dma_buf* %55, %struct.dma_buf_attachment* %56)
  br label %58

58:                                               ; preds = %49, %36
  %59 = load %struct.dma_buf*, %struct.dma_buf** %3, align 8
  %60 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %63 = call i32 @kfree(%struct.dma_buf_attachment* %62)
  br label %64

64:                                               ; preds = %58, %16
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.dma_buf_attachment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
