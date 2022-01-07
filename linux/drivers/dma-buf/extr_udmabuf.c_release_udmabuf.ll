; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_udmabuf.c_release_udmabuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_udmabuf.c_release_udmabuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.udmabuf* }
%struct.udmabuf = type { i64, %struct.udmabuf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_buf*)* @release_udmabuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_udmabuf(%struct.dma_buf* %0) #0 {
  %2 = alloca %struct.dma_buf*, align 8
  %3 = alloca %struct.udmabuf*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %2, align 8
  %5 = load %struct.dma_buf*, %struct.dma_buf** %2, align 8
  %6 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %5, i32 0, i32 0
  %7 = load %struct.udmabuf*, %struct.udmabuf** %6, align 8
  store %struct.udmabuf* %7, %struct.udmabuf** %3, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.udmabuf*, %struct.udmabuf** %3, align 8
  %11 = getelementptr inbounds %struct.udmabuf, %struct.udmabuf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.udmabuf*, %struct.udmabuf** %3, align 8
  %16 = getelementptr inbounds %struct.udmabuf, %struct.udmabuf* %15, i32 0, i32 1
  %17 = load %struct.udmabuf*, %struct.udmabuf** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.udmabuf, %struct.udmabuf* %17, i64 %18
  %20 = bitcast %struct.udmabuf* %19 to { i64, %struct.udmabuf* }*
  %21 = getelementptr inbounds { i64, %struct.udmabuf* }, { i64, %struct.udmabuf* }* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, %struct.udmabuf* }, { i64, %struct.udmabuf* }* %20, i32 0, i32 1
  %24 = load %struct.udmabuf*, %struct.udmabuf** %23, align 8
  %25 = call i32 @put_page(i64 %22, %struct.udmabuf* %24)
  br label %26

26:                                               ; preds = %14
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %8

29:                                               ; preds = %8
  %30 = load %struct.udmabuf*, %struct.udmabuf** %3, align 8
  %31 = getelementptr inbounds %struct.udmabuf, %struct.udmabuf* %30, i32 0, i32 1
  %32 = load %struct.udmabuf*, %struct.udmabuf** %31, align 8
  %33 = call i32 @kfree(%struct.udmabuf* %32)
  %34 = load %struct.udmabuf*, %struct.udmabuf** %3, align 8
  %35 = call i32 @kfree(%struct.udmabuf* %34)
  ret void
}

declare dso_local i32 @put_page(i64, %struct.udmabuf*) #1

declare dso_local i32 @kfree(%struct.udmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
