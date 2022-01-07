; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_arbel_map_phys_fmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_mr.c_mthca_arbel_map_phys_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_fmr = type { i32 }
%struct.mthca_fmr = type { %struct.TYPE_14__, %struct.TYPE_11__, %struct.TYPE_9__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32, i8** }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.mthca_dev = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@MTHCA_FLAG_SINAI_OPT = common dso_local global i32 0, align 4
@SINAI_FMR_KEY_INC = common dso_local global i64 0, align 8
@MTHCA_MPT_STATUS_SW = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MTHCA_MTT_FLAG_PRESENT = common dso_local global i32 0, align 4
@MTHCA_MPT_STATUS_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_arbel_map_phys_fmr(%struct.ib_fmr* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_fmr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mthca_fmr*, align 8
  %11 = alloca %struct.mthca_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_fmr* %0, %struct.ib_fmr** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ib_fmr*, %struct.ib_fmr** %6, align 8
  %16 = call %struct.mthca_fmr* @to_mfmr(%struct.ib_fmr* %15)
  store %struct.mthca_fmr* %16, %struct.mthca_fmr** %10, align 8
  %17 = load %struct.ib_fmr*, %struct.ib_fmr** %6, align 8
  %18 = getelementptr inbounds %struct.ib_fmr, %struct.ib_fmr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mthca_dev* @to_mdev(i32 %19)
  store %struct.mthca_dev* %20, %struct.mthca_dev** %11, align 8
  %21 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @mthca_check_fmr(%struct.mthca_fmr* %21, i32* %22, i32 %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %182

30:                                               ; preds = %4
  %31 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %32 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %36 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @arbel_key_to_hw_index(i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %41 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MTHCA_FLAG_SINAI_OPT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = load i64, i64* @SINAI_FMR_KEY_INC, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %12, align 4
  br label %61

52:                                               ; preds = %30
  %53 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %54 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %52, %46
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @arbel_hw_index_to_key(i32 %62)
  %64 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %65 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %68 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i32 %63, i32* %69, align 4
  %70 = load i32, i32* @MTHCA_MPT_STATUS_SW, align 4
  %71 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %72 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = bitcast %struct.TYPE_12__* %75 to i32*
  store i32 %70, i32* %76, align 4
  %77 = call i32 (...) @wmb()
  %78 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %79 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %83 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = load i32, i32* @DMA_TO_DEVICE, align 4
  %92 = call i32 @dma_sync_single_for_cpu(i32* %81, i32 %86, i32 %90, i32 %91)
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %114, %61
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %93
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @MTHCA_MTT_FLAG_PRESENT, align 4
  %104 = or i32 %102, %103
  %105 = call i8* @cpu_to_be64(i32 %104)
  %106 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %107 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %105, i8** %113, align 8
  br label %114

114:                                              ; preds = %97
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %93

117:                                              ; preds = %93
  %118 = load %struct.mthca_dev*, %struct.mthca_dev** %11, align 8
  %119 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %118, i32 0, i32 1
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %123 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = mul i64 %128, 4
  %130 = trunc i64 %129 to i32
  %131 = load i32, i32* @DMA_TO_DEVICE, align 4
  %132 = call i32 @dma_sync_single_for_device(i32* %121, i32 %126, i32 %130, i32 %131)
  %133 = load i32, i32* %12, align 4
  %134 = call i8* @cpu_to_be32(i32 %133)
  %135 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %136 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  store i8* %134, i8** %140, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i8* @cpu_to_be32(i32 %141)
  %143 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %144 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  store i8* %142, i8** %148, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %152 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = shl i64 1, %154
  %156 = mul i64 %150, %155
  %157 = trunc i64 %156 to i32
  %158 = call i8* @cpu_to_be64(i32 %157)
  %159 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %160 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  store i8* %158, i8** %164, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i8* @cpu_to_be64(i32 %165)
  %167 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %168 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  store i8* %166, i8** %172, align 8
  %173 = call i32 (...) @wmb()
  %174 = load i32, i32* @MTHCA_MPT_STATUS_HW, align 4
  %175 = load %struct.mthca_fmr*, %struct.mthca_fmr** %10, align 8
  %176 = getelementptr inbounds %struct.mthca_fmr, %struct.mthca_fmr* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = bitcast %struct.TYPE_12__* %179 to i32*
  store i32 %174, i32* %180, align 4
  %181 = call i32 (...) @wmb()
  store i32 0, i32* %5, align 4
  br label %182

182:                                              ; preds = %117, %28
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local %struct.mthca_fmr* @to_mfmr(%struct.ib_fmr*) #1

declare dso_local %struct.mthca_dev* @to_mdev(i32) #1

declare dso_local i32 @mthca_check_fmr(%struct.mthca_fmr*, i32*, i32, i32) #1

declare dso_local i32 @arbel_key_to_hw_index(i32) #1

declare dso_local i32 @arbel_hw_index_to_key(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
