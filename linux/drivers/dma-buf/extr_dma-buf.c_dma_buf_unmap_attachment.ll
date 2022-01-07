; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_unmap_attachment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c_dma_buf_unmap_attachment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf_attachment = type { %struct.TYPE_4__*, %struct.sg_table* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dma_buf_attachment*, %struct.sg_table*, i32)* }
%struct.sg_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_buf_unmap_attachment(%struct.dma_buf_attachment* %0, %struct.sg_table* %1, i32 %2) #0 {
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca %struct.sg_table*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_buf_attachment* %0, %struct.dma_buf_attachment** %4, align 8
  store %struct.sg_table* %1, %struct.sg_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i32 (...) @might_sleep()
  %8 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %9 = icmp ne %struct.dma_buf_attachment* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %12 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %17 = icmp ne %struct.sg_table* %16, null
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %15, %10, %3
  %20 = phi i1 [ true, %10 ], [ true, %3 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %44

25:                                               ; preds = %19
  %26 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %27 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %26, i32 0, i32 1
  %28 = load %struct.sg_table*, %struct.sg_table** %27, align 8
  %29 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %30 = icmp eq %struct.sg_table* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %44

32:                                               ; preds = %25
  %33 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %34 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.dma_buf_attachment*, %struct.sg_table*, i32)*, i32 (%struct.dma_buf_attachment*, %struct.sg_table*, i32)** %38, align 8
  %40 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %41 = load %struct.sg_table*, %struct.sg_table** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 %39(%struct.dma_buf_attachment* %40, %struct.sg_table* %41, i32 %42)
  br label %44

44:                                               ; preds = %32, %31, %24
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
