; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence.c_dma_fence_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-fence.c_dma_fence_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i64, i64, i8*, i8*, i32*, i32, %struct.dma_fence_ops*, i32 }
%struct.dma_fence_ops = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_fence_init(%struct.dma_fence* %0, %struct.dma_fence_ops* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.dma_fence*, align 8
  %7 = alloca %struct.dma_fence_ops*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %6, align 8
  store %struct.dma_fence_ops* %1, %struct.dma_fence_ops** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp ne i32* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %7, align 8
  %17 = icmp ne %struct.dma_fence_ops* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %5
  %19 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %7, align 8
  %20 = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %7, align 8
  %25 = getelementptr inbounds %struct.dma_fence_ops, %struct.dma_fence_ops* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %23, %18, %5
  %30 = phi i1 [ true, %18 ], [ true, %5 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %34 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %33, i32 0, i32 7
  %35 = call i32 @kref_init(i32* %34)
  %36 = load %struct.dma_fence_ops*, %struct.dma_fence_ops** %7, align 8
  %37 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %38 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %37, i32 0, i32 6
  store %struct.dma_fence_ops* %36, %struct.dma_fence_ops** %38, align 8
  %39 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %40 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %39, i32 0, i32 5
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %44 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %43, i32 0, i32 4
  store i32* %42, i32** %44, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %47 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %50 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %52 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %54 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.dma_fence*, %struct.dma_fence** %6, align 8
  %56 = call i32 @trace_dma_fence_init(%struct.dma_fence* %55)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @trace_dma_fence_init(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
