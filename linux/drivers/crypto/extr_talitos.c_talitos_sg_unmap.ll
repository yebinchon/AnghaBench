; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_sg_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_sg_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_edesc = type { i32, i32, i64, i64 }
%struct.scatterlist = type { i32 }
%struct.talitos_private = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.talitos_edesc*, %struct.scatterlist*, %struct.scatterlist*, i32, i32)* @talitos_sg_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @talitos_sg_unmap(%struct.device* %0, %struct.talitos_edesc* %1, %struct.scatterlist* %2, %struct.scatterlist* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.talitos_edesc*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.talitos_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.talitos_edesc* %1, %struct.talitos_edesc** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.device*, %struct.device** %7, align 8
  %18 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %17)
  store %struct.talitos_private* %18, %struct.talitos_private** %13, align 8
  %19 = load %struct.talitos_private*, %struct.talitos_private** %13, align 8
  %20 = call i32 @has_ftr_sec1(%struct.talitos_private* %19)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.talitos_edesc*, %struct.talitos_edesc** %8, align 8
  %22 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %27

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %26, %25
  %28 = phi i32 [ %23, %25 ], [ 1, %26 ]
  store i32 %28, i32* %15, align 4
  %29 = load %struct.talitos_edesc*, %struct.talitos_edesc** %8, align 8
  %30 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %35

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %33
  %36 = phi i32 [ %31, %33 ], [ 1, %34 ]
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %41 = icmp ne %struct.scatterlist* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load i32, i32* %16, align 4
  %44 = icmp ugt i32 %43, 1
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = load %struct.talitos_edesc*, %struct.talitos_edesc** %8, align 8
  %48 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %55 = call i32 @dma_sync_single_for_device(%struct.device* %46, i64 %52, i32 %53, i32 %54)
  %56 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load %struct.talitos_edesc*, %struct.talitos_edesc** %8, align 8
  %59 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @sg_pcopy_from_buffer(%struct.scatterlist* %56, i32 %57, i64 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %45, %42, %39, %35
  %68 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %69 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %70 = icmp ne %struct.scatterlist* %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %67
  %72 = load i32, i32* %15, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.device*, %struct.device** %7, align 8
  %79 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @DMA_TO_DEVICE, align 4
  %82 = call i32 @dma_unmap_sg(%struct.device* %78, %struct.scatterlist* %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %74
  %84 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %85 = icmp ne %struct.scatterlist* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load i32, i32* %16, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.device*, %struct.device** %7, align 8
  %94 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %97 = call i32 @dma_unmap_sg(%struct.device* %93, %struct.scatterlist* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %89, %83
  br label %112

99:                                               ; preds = %67
  %100 = load i32, i32* %15, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.device*, %struct.device** %7, align 8
  %107 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %110 = call i32 @dma_unmap_sg(%struct.device* %106, %struct.scatterlist* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %102
  br label %112

112:                                              ; preds = %111, %98
  ret void
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @sg_pcopy_from_buffer(%struct.scatterlist*, i32, i64, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
