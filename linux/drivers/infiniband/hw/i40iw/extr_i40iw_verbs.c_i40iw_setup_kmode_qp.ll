; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_setup_kmode_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_setup_kmode_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i40iw_qp = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.i40iw_dma_mem }
%struct.i40iw_dma_mem = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.i40iw_qp_init_info = type { i64, i64, i32, %struct.i40iw_qp_uk_init_info }
%struct.i40iw_qp_uk_init_info = type { i32, i32, i32, %struct.TYPE_7__*, i32, %struct.TYPE_7__*, %struct.i40iw_sq_uk_wr_trk_info*, i32*, i32, i32 }
%struct.i40iw_sq_uk_wr_trk_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I40IW_MAX_RQ_WQE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@I40IW_QP_WQE_MIN_SIZE = common dso_local global i32 0, align 4
@I40IW_SHADOW_AREA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, %struct.i40iw_qp*, %struct.i40iw_qp_init_info*)* @i40iw_setup_kmode_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_setup_kmode_qp(%struct.i40iw_device* %0, %struct.i40iw_qp* %1, %struct.i40iw_qp_init_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_device*, align 8
  %6 = alloca %struct.i40iw_qp*, align 8
  %7 = alloca %struct.i40iw_qp_init_info*, align 8
  %8 = alloca %struct.i40iw_dma_mem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i40iw_qp_uk_init_info*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %5, align 8
  store %struct.i40iw_qp* %1, %struct.i40iw_qp** %6, align 8
  store %struct.i40iw_qp_init_info* %2, %struct.i40iw_qp_init_info** %7, align 8
  %15 = load %struct.i40iw_qp*, %struct.i40iw_qp** %6, align 8
  %16 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store %struct.i40iw_dma_mem* %17, %struct.i40iw_dma_mem** %8, align 8
  %18 = load %struct.i40iw_qp_init_info*, %struct.i40iw_qp_init_info** %7, align 8
  %19 = getelementptr inbounds %struct.i40iw_qp_init_info, %struct.i40iw_qp_init_info* %18, i32 0, i32 3
  store %struct.i40iw_qp_uk_init_info* %19, %struct.i40iw_qp_uk_init_info** %14, align 8
  %20 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %21 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %24 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @i40iw_get_wqe_shift(i32 %22, i32 %25, i32* %11)
  %27 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %28 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @i40iw_get_sqdepth(i32 %29, i32 %30, i32* %9)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %179

37:                                               ; preds = %3
  %38 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %39 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @I40IW_MAX_RQ_WQE_SHIFT, align 4
  %42 = call i32 @i40iw_get_rqdepth(i32 %40, i32 %41, i32* %10)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %179

48:                                               ; preds = %37
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 %52, 3
  %54 = sext i32 %53 to i64
  %55 = add i64 %51, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i64 @kzalloc(i32 %57, i32 %58)
  %60 = load %struct.i40iw_qp*, %struct.i40iw_qp** %6, align 8
  %61 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load %struct.i40iw_qp*, %struct.i40iw_qp** %6, align 8
  %64 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.i40iw_sq_uk_wr_trk_info*
  %68 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %69 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %68, i32 0, i32 6
  store %struct.i40iw_sq_uk_wr_trk_info* %67, %struct.i40iw_sq_uk_wr_trk_info** %69, align 8
  %70 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %71 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %70, i32 0, i32 6
  %72 = load %struct.i40iw_sq_uk_wr_trk_info*, %struct.i40iw_sq_uk_wr_trk_info** %71, align 8
  %73 = icmp ne %struct.i40iw_sq_uk_wr_trk_info* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %48
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %179

77:                                               ; preds = %48
  %78 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %79 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %78, i32 0, i32 6
  %80 = load %struct.i40iw_sq_uk_wr_trk_info*, %struct.i40iw_sq_uk_wr_trk_info** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.i40iw_sq_uk_wr_trk_info, %struct.i40iw_sq_uk_wr_trk_info* %80, i64 %82
  %84 = bitcast %struct.i40iw_sq_uk_wr_trk_info* %83 to i32*
  %85 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %86 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %85, i32 0, i32 7
  store i32* %84, i32** %86, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* @I40IW_QP_WQE_MIN_SIZE, align 4
  %91 = mul nsw i32 %89, %90
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* @I40IW_SHADOW_AREA_SIZE, align 4
  %93 = shl i32 %92, 3
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %12, align 4
  %96 = load %struct.i40iw_device*, %struct.i40iw_device** %5, align 8
  %97 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %8, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @i40iw_allocate_dma_mem(i32 %99, %struct.i40iw_dma_mem* %100, i32 %101, i32 256)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %77
  %106 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %107 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %106, i32 0, i32 6
  %108 = load %struct.i40iw_sq_uk_wr_trk_info*, %struct.i40iw_sq_uk_wr_trk_info** %107, align 8
  %109 = call i32 @kfree(%struct.i40iw_sq_uk_wr_trk_info* %108)
  %110 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %111 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %110, i32 0, i32 6
  store %struct.i40iw_sq_uk_wr_trk_info* null, %struct.i40iw_sq_uk_wr_trk_info** %111, align 8
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %179

114:                                              ; preds = %77
  %115 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %8, align 8
  %116 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %119 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %118, i32 0, i32 5
  store %struct.TYPE_7__* %117, %struct.TYPE_7__** %119, align 8
  %120 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %8, align 8
  %121 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.i40iw_qp_init_info*, %struct.i40iw_qp_init_info** %7, align 8
  %124 = getelementptr inbounds %struct.i40iw_qp_init_info, %struct.i40iw_qp_init_info* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %126 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %125, i32 0, i32 5
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %129
  %131 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %132 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %131, i32 0, i32 3
  store %struct.TYPE_7__* %130, %struct.TYPE_7__** %132, align 8
  %133 = load %struct.i40iw_qp_init_info*, %struct.i40iw_qp_init_info** %7, align 8
  %134 = getelementptr inbounds %struct.i40iw_qp_init_info, %struct.i40iw_qp_init_info* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @I40IW_QP_WQE_MIN_SIZE, align 4
  %138 = mul nsw i32 %136, %137
  %139 = add nsw i32 %135, %138
  %140 = sext i32 %139 to i64
  %141 = load %struct.i40iw_qp_init_info*, %struct.i40iw_qp_init_info** %7, align 8
  %142 = getelementptr inbounds %struct.i40iw_qp_init_info, %struct.i40iw_qp_init_info* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %144 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %143, i32 0, i32 3
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %152 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  %153 = load %struct.i40iw_qp_init_info*, %struct.i40iw_qp_init_info** %7, align 8
  %154 = getelementptr inbounds %struct.i40iw_qp_init_info, %struct.i40iw_qp_init_info* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @I40IW_QP_WQE_MIN_SIZE, align 4
  %158 = mul nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %155, %159
  %161 = load %struct.i40iw_qp_init_info*, %struct.i40iw_qp_init_info** %7, align 8
  %162 = getelementptr inbounds %struct.i40iw_qp_init_info, %struct.i40iw_qp_init_info* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %11, align 4
  %165 = ashr i32 %163, %164
  %166 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %167 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @I40IW_MAX_RQ_WQE_SHIFT, align 4
  %170 = ashr i32 %168, %169
  %171 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %172 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.i40iw_qp*, %struct.i40iw_qp** %6, align 8
  %174 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.i40iw_qp_uk_init_info*, %struct.i40iw_qp_uk_init_info** %14, align 8
  %178 = getelementptr inbounds %struct.i40iw_qp_uk_init_info, %struct.i40iw_qp_uk_init_info* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %114, %105, %74, %45, %34
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @i40iw_get_wqe_shift(i32, i32, i32*) #1

declare dso_local i32 @i40iw_get_sqdepth(i32, i32, i32*) #1

declare dso_local i32 @i40iw_get_rqdepth(i32, i32, i32*) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @i40iw_allocate_dma_mem(i32, %struct.i40iw_dma_mem*, i32, i32) #1

declare dso_local i32 @kfree(%struct.i40iw_sq_uk_wr_trk_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
