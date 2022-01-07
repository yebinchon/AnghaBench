; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_dma_desc_sw = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32, i8*, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx_dma_desc_sw*, i8*, i8*, i64, i32, i32)* @zx_dma_fill_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_dma_fill_desc(%struct.zx_dma_desc_sw* %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.zx_dma_desc_sw*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.zx_dma_desc_sw* %0, %struct.zx_dma_desc_sw** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %11, align 4
  %14 = add nsw i32 %13, 1
  %15 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %7, align 8
  %16 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %6
  %20 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %7, align 8
  %21 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = add i64 %22, %26
  %28 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %7, align 8
  %29 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  store i64 %27, i64* %34, align 8
  br label %35

35:                                               ; preds = %19, %6
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %7, align 8
  %38 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i8* %36, i8** %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %7, align 8
  %46 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i8* %44, i8** %51, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %7, align 8
  %54 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 %52, i64* %59, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %7, align 8
  %62 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %60, i32* %67, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
