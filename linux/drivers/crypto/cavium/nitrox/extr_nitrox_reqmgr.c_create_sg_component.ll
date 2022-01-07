; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_create_sg_component.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_reqmgr.c_create_sg_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nitrox_softreq = type { i32, %struct.nitrox_device* }
%struct.nitrox_device = type { i32 }
%struct.nitrox_sgtable = type { i64, i32, %struct.nitrox_sgcomp*, %struct.scatterlist* }
%struct.nitrox_sgcomp = type { i32*, i32* }
%struct.scatterlist = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nitrox_softreq*, %struct.nitrox_sgtable*, i32)* @create_sg_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_sg_component(%struct.nitrox_softreq* %0, %struct.nitrox_sgtable* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nitrox_softreq*, align 8
  %6 = alloca %struct.nitrox_sgtable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nitrox_device*, align 8
  %9 = alloca %struct.nitrox_sgcomp*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nitrox_softreq* %0, %struct.nitrox_softreq** %5, align 8
  store %struct.nitrox_sgtable* %1, %struct.nitrox_sgtable** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %5, align 8
  %17 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %16, i32 0, i32 1
  %18 = load %struct.nitrox_device*, %struct.nitrox_device** %17, align 8
  store %struct.nitrox_device* %18, %struct.nitrox_device** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @roundup(i32 %19, i32 4)
  %21 = sdiv i32 %20, 4
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 16
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load %struct.nitrox_softreq*, %struct.nitrox_softreq** %5, align 8
  %27 = getelementptr inbounds %struct.nitrox_softreq, %struct.nitrox_softreq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.nitrox_sgcomp* @kzalloc(i64 %25, i32 %28)
  store %struct.nitrox_sgcomp* %29, %struct.nitrox_sgcomp** %9, align 8
  %30 = load %struct.nitrox_sgcomp*, %struct.nitrox_sgcomp** %9, align 8
  %31 = icmp ne %struct.nitrox_sgcomp* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %119

35:                                               ; preds = %3
  %36 = load %struct.nitrox_sgcomp*, %struct.nitrox_sgcomp** %9, align 8
  %37 = load %struct.nitrox_sgtable*, %struct.nitrox_sgtable** %6, align 8
  %38 = getelementptr inbounds %struct.nitrox_sgtable, %struct.nitrox_sgtable* %37, i32 0, i32 2
  store %struct.nitrox_sgcomp* %36, %struct.nitrox_sgcomp** %38, align 8
  %39 = load %struct.nitrox_sgtable*, %struct.nitrox_sgtable** %6, align 8
  %40 = getelementptr inbounds %struct.nitrox_sgtable, %struct.nitrox_sgtable* %39, i32 0, i32 3
  %41 = load %struct.scatterlist*, %struct.scatterlist** %40, align 8
  store %struct.scatterlist* %41, %struct.scatterlist** %10, align 8
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %86, %35
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %89

46:                                               ; preds = %42
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %82, %46
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %52 = icmp ne %struct.scatterlist* %51, null
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i1 [ false, %47 ], [ %52, %50 ]
  br i1 %54, label %55, label %85

55:                                               ; preds = %53
  %56 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %57 = call i32 @sg_dma_len(%struct.scatterlist* %56)
  %58 = call i32 @cpu_to_be16(i32 %57)
  %59 = load %struct.nitrox_sgcomp*, %struct.nitrox_sgcomp** %9, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.nitrox_sgcomp, %struct.nitrox_sgcomp* %59, i64 %61
  %63 = getelementptr inbounds %struct.nitrox_sgcomp, %struct.nitrox_sgcomp* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %58, i32* %67, align 4
  %68 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %69 = call i32 @sg_dma_address(%struct.scatterlist* %68)
  %70 = call i32 @cpu_to_be64(i32 %69)
  %71 = load %struct.nitrox_sgcomp*, %struct.nitrox_sgcomp** %9, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.nitrox_sgcomp, %struct.nitrox_sgcomp* %71, i64 %73
  %75 = getelementptr inbounds %struct.nitrox_sgcomp, %struct.nitrox_sgcomp* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %70, i32* %79, align 4
  %80 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %81 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %80)
  store %struct.scatterlist* %81, %struct.scatterlist** %10, align 8
  br label %82

82:                                               ; preds = %55
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %47

85:                                               ; preds = %53
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %13, align 4
  br label %42

89:                                               ; preds = %42
  %90 = load %struct.nitrox_device*, %struct.nitrox_device** %8, align 8
  %91 = call i32 @DEV(%struct.nitrox_device* %90)
  %92 = load %struct.nitrox_sgtable*, %struct.nitrox_sgtable** %6, align 8
  %93 = getelementptr inbounds %struct.nitrox_sgtable, %struct.nitrox_sgtable* %92, i32 0, i32 2
  %94 = load %struct.nitrox_sgcomp*, %struct.nitrox_sgcomp** %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* @DMA_TO_DEVICE, align 4
  %97 = call i32 @dma_map_single(i32 %91, %struct.nitrox_sgcomp* %94, i64 %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load %struct.nitrox_device*, %struct.nitrox_device** %8, align 8
  %99 = call i32 @DEV(%struct.nitrox_device* %98)
  %100 = load i32, i32* %11, align 4
  %101 = call i64 @dma_mapping_error(i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %89
  %104 = load %struct.nitrox_sgtable*, %struct.nitrox_sgtable** %6, align 8
  %105 = getelementptr inbounds %struct.nitrox_sgtable, %struct.nitrox_sgtable* %104, i32 0, i32 2
  %106 = load %struct.nitrox_sgcomp*, %struct.nitrox_sgcomp** %105, align 8
  %107 = call i32 @kfree(%struct.nitrox_sgcomp* %106)
  %108 = load %struct.nitrox_sgtable*, %struct.nitrox_sgtable** %6, align 8
  %109 = getelementptr inbounds %struct.nitrox_sgtable, %struct.nitrox_sgtable* %108, i32 0, i32 2
  store %struct.nitrox_sgcomp* null, %struct.nitrox_sgcomp** %109, align 8
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %119

112:                                              ; preds = %89
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.nitrox_sgtable*, %struct.nitrox_sgtable** %6, align 8
  %115 = getelementptr inbounds %struct.nitrox_sgtable, %struct.nitrox_sgtable* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load i64, i64* %12, align 8
  %117 = load %struct.nitrox_sgtable*, %struct.nitrox_sgtable** %6, align 8
  %118 = getelementptr inbounds %struct.nitrox_sgtable, %struct.nitrox_sgtable* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %112, %103, %32
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.nitrox_sgcomp* @kzalloc(i64, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @dma_map_single(i32, %struct.nitrox_sgcomp*, i64, i32) #1

declare dso_local i32 @DEV(%struct.nitrox_device*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @kfree(%struct.nitrox_sgcomp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
