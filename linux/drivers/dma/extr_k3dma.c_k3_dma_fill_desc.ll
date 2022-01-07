; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k3_dma_desc_sw = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32, i8*, i8*, i64 }

@CX_LLI_CHAIN_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k3_dma_desc_sw*, i8*, i8*, i64, i32, i32)* @k3_dma_fill_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k3_dma_fill_desc(%struct.k3_dma_desc_sw* %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.k3_dma_desc_sw*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.k3_dma_desc_sw* %0, %struct.k3_dma_desc_sw** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.k3_dma_desc_sw*, %struct.k3_dma_desc_sw** %7, align 8
  %15 = getelementptr inbounds %struct.k3_dma_desc_sw, %struct.k3_dma_desc_sw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = icmp ne i32 %13, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %6
  %20 = load %struct.k3_dma_desc_sw*, %struct.k3_dma_desc_sw** %7, align 8
  %21 = getelementptr inbounds %struct.k3_dma_desc_sw, %struct.k3_dma_desc_sw* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = add i64 %22, %26
  %28 = load %struct.k3_dma_desc_sw*, %struct.k3_dma_desc_sw** %7, align 8
  %29 = getelementptr inbounds %struct.k3_dma_desc_sw, %struct.k3_dma_desc_sw* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 4
  store i64 %27, i64* %34, align 8
  br label %35

35:                                               ; preds = %19, %6
  %36 = load i64, i64* @CX_LLI_CHAIN_EN, align 8
  %37 = load %struct.k3_dma_desc_sw*, %struct.k3_dma_desc_sw** %7, align 8
  %38 = getelementptr inbounds %struct.k3_dma_desc_sw, %struct.k3_dma_desc_sw* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = or i64 %44, %36
  store i64 %45, i64* %43, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.k3_dma_desc_sw*, %struct.k3_dma_desc_sw** %7, align 8
  %48 = getelementptr inbounds %struct.k3_dma_desc_sw, %struct.k3_dma_desc_sw* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %46, i64* %53, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.k3_dma_desc_sw*, %struct.k3_dma_desc_sw** %7, align 8
  %56 = getelementptr inbounds %struct.k3_dma_desc_sw, %struct.k3_dma_desc_sw* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  store i8* %54, i8** %61, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.k3_dma_desc_sw*, %struct.k3_dma_desc_sw** %7, align 8
  %64 = getelementptr inbounds %struct.k3_dma_desc_sw, %struct.k3_dma_desc_sw* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i8* %62, i8** %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.k3_dma_desc_sw*, %struct.k3_dma_desc_sw** %7, align 8
  %72 = getelementptr inbounds %struct.k3_dma_desc_sw, %struct.k3_dma_desc_sw* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %70, i32* %77, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
