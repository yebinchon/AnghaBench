; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_jr.c_caam_jr_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_jr.c_caam_jr_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.caam_drv_private_jr = type { i32, i32, %struct.TYPE_2__*, i64, i32, %struct.caam_jrentry_info*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.caam_jrentry_info = type { i32, i32, i8*, i8*, i32* }

@HDR_JD_LENGTH_MASK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"caam_jr_enqueue(): can't map jobdesc\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@JOBR_DEPTH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @caam_jr_enqueue(%struct.device* %0, i32* %1, void (%struct.device*, i32*, i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca void (%struct.device*, i32*, i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.caam_drv_private_jr*, align 8
  %11 = alloca %struct.caam_jrentry_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32* %1, i32** %7, align 8
  store void (%struct.device*, i32*, i32, i8*)* %2, void (%struct.device*, i32*, i32, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.caam_drv_private_jr* @dev_get_drvdata(%struct.device* %16)
  store %struct.caam_drv_private_jr* %17, %struct.caam_drv_private_jr** %10, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @caam32_to_cpu(i32 %19)
  %21 = load i32, i32* @HDR_JD_LENGTH_MASK, align 4
  %22 = and i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %14, align 4
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @dma_map_single(%struct.device* %26, i32* %27, i32 %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = load i32, i32* %15, align 4
  %33 = call i64 @dma_mapping_error(%struct.device* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %135

40:                                               ; preds = %4
  %41 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %10, align 8
  %42 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %41, i32 0, i32 1
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %10, align 8
  %45 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %12, align 4
  %47 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %10, align 8
  %48 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @READ_ONCE(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %10, align 8
  %52 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %40
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @JOBR_DEPTH, align 4
  %59 = call i64 @CIRC_SPACE(i32 %56, i32 %57, i32 %58)
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %55, %40
  %62 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %10, align 8
  %63 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock_bh(i32* %63)
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @DMA_TO_DEVICE, align 4
  %69 = call i32 @dma_unmap_single(%struct.device* %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %135

72:                                               ; preds = %55
  %73 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %10, align 8
  %74 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %73, i32 0, i32 5
  %75 = load %struct.caam_jrentry_info*, %struct.caam_jrentry_info** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.caam_jrentry_info, %struct.caam_jrentry_info* %75, i64 %77
  store %struct.caam_jrentry_info* %78, %struct.caam_jrentry_info** %11, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.caam_jrentry_info*, %struct.caam_jrentry_info** %11, align 8
  %81 = getelementptr inbounds %struct.caam_jrentry_info, %struct.caam_jrentry_info* %80, i32 0, i32 4
  store i32* %79, i32** %81, align 8
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.caam_jrentry_info*, %struct.caam_jrentry_info** %11, align 8
  %84 = getelementptr inbounds %struct.caam_jrentry_info, %struct.caam_jrentry_info* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load void (%struct.device*, i32*, i32, i8*)*, void (%struct.device*, i32*, i32, i8*)** %8, align 8
  %86 = bitcast void (%struct.device*, i32*, i32, i8*)* %85 to i8*
  %87 = load %struct.caam_jrentry_info*, %struct.caam_jrentry_info** %11, align 8
  %88 = getelementptr inbounds %struct.caam_jrentry_info, %struct.caam_jrentry_info* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load %struct.caam_jrentry_info*, %struct.caam_jrentry_info** %11, align 8
  %91 = getelementptr inbounds %struct.caam_jrentry_info, %struct.caam_jrentry_info* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.caam_jrentry_info*, %struct.caam_jrentry_info** %11, align 8
  %94 = getelementptr inbounds %struct.caam_jrentry_info, %struct.caam_jrentry_info* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %10, align 8
  %96 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @cpu_to_caam_dma(i32 %99)
  %101 = call i32 @jr_inpentry_set(i32 %97, i32 %98, i32 %100)
  %102 = call i32 (...) @smp_wmb()
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* @JOBR_DEPTH, align 4
  %106 = sub nsw i32 %105, 1
  %107 = and i32 %104, %106
  %108 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %10, align 8
  %109 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %10, align 8
  %111 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = call i32 @wr_reg32(i32* %113, i32 1)
  %115 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %10, align 8
  %116 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %116, align 8
  %119 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %10, align 8
  %120 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %72
  %124 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %10, align 8
  %125 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = call i64 @rd_reg32(i32* %127)
  %129 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %10, align 8
  %130 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %123, %72
  %132 = load %struct.caam_drv_private_jr*, %struct.caam_drv_private_jr** %10, align 8
  %133 = getelementptr inbounds %struct.caam_drv_private_jr, %struct.caam_drv_private_jr* %132, i32 0, i32 1
  %134 = call i32 @spin_unlock_bh(i32* %133)
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %131, %61, %35
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.caam_drv_private_jr* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @caam32_to_cpu(i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @CIRC_SPACE(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @jr_inpentry_set(i32, i32, i32) #1

declare dso_local i32 @cpu_to_caam_dma(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @wr_reg32(i32*, i32) #1

declare dso_local i64 @rd_reg32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
