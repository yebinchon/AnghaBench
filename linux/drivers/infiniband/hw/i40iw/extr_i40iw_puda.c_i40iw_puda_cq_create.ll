; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_cq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_cq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_puda_rsrc = type { i32, i64, %struct.i40iw_dma_mem, %struct.i40iw_sc_dev*, i32, i32, %struct.i40iw_sc_cq }
%struct.i40iw_dma_mem = type { i64, i64 }
%struct.i40iw_sc_dev = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i40iw_sc_cq*, %struct.i40iw_cq_init_info*)* }
%struct.i40iw_cq_init_info = type { i32, i32, i32, i64, i64, i32, %struct.i40iw_sc_dev*, %struct.i40iw_cq_uk_init_info }
%struct.i40iw_cq_uk_init_info = type { i32, i32, i32*, i64 }
%struct.i40iw_sc_cq = type { i32 }

@I40IW_CQ0_ALIGNMENT = common dso_local global i32 0, align 4
@I40IW_PUDA_RSRC_TYPE_ILQ = common dso_local global i64 0, align 8
@I40IW_CQ_TYPE_ILQ = common dso_local global i32 0, align 4
@I40IW_CQ_TYPE_IEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_puda_rsrc*)* @i40iw_puda_cq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_puda_cq_create(%struct.i40iw_puda_rsrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40iw_puda_rsrc*, align 8
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca %struct.i40iw_sc_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40iw_dma_mem*, align 8
  %10 = alloca %struct.i40iw_cq_init_info, align 8
  %11 = alloca %struct.i40iw_cq_uk_init_info*, align 8
  store %struct.i40iw_puda_rsrc* %0, %struct.i40iw_puda_rsrc** %3, align 8
  %12 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %3, align 8
  %13 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %12, i32 0, i32 3
  %14 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %13, align 8
  store %struct.i40iw_sc_dev* %14, %struct.i40iw_sc_dev** %4, align 8
  %15 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %3, align 8
  %16 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %15, i32 0, i32 6
  store %struct.i40iw_sc_cq* %16, %struct.i40iw_sc_cq** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = getelementptr inbounds %struct.i40iw_cq_init_info, %struct.i40iw_cq_init_info* %10, i32 0, i32 7
  store %struct.i40iw_cq_uk_init_info* %17, %struct.i40iw_cq_uk_init_info** %11, align 8
  %18 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %3, align 8
  %19 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %22 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %3, align 8
  %24 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %34 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %3, align 8
  %37 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %36, i32 0, i32 2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @I40IW_CQ0_ALIGNMENT, align 4
  %40 = call i32 @i40iw_allocate_dma_mem(i32 %35, %struct.i40iw_dma_mem* %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %144

45:                                               ; preds = %1
  %46 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %3, align 8
  %47 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %46, i32 0, i32 2
  store %struct.i40iw_dma_mem* %47, %struct.i40iw_dma_mem** %9, align 8
  %48 = call i32 @memset(%struct.i40iw_cq_init_info* %10, i32 0, i32 72)
  %49 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %50 = getelementptr inbounds %struct.i40iw_cq_init_info, %struct.i40iw_cq_init_info* %10, i32 0, i32 6
  store %struct.i40iw_sc_dev* %49, %struct.i40iw_sc_dev** %50, align 8
  %51 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %3, align 8
  %52 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @I40IW_PUDA_RSRC_TYPE_ILQ, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @I40IW_CQ_TYPE_ILQ, align 4
  br label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @I40IW_CQ_TYPE_IEQ, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = getelementptr inbounds %struct.i40iw_cq_init_info, %struct.i40iw_cq_init_info* %10, i32 0, i32 5
  store i32 %61, i32* %62, align 8
  %63 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %3, align 8
  %64 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %65, 2
  %67 = getelementptr inbounds %struct.i40iw_cq_init_info, %struct.i40iw_cq_init_info* %10, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.i40iw_cq_init_info, %struct.i40iw_cq_init_info* %10, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %9, align 8
  %70 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.i40iw_cq_init_info, %struct.i40iw_cq_init_info* %10, i32 0, i32 4
  store i64 %71, i64* %72, align 8
  %73 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %9, align 8
  %74 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = getelementptr inbounds %struct.i40iw_cq_init_info, %struct.i40iw_cq_init_info* %10, i32 0, i32 3
  store i64 %78, i64* %79, align 8
  %80 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %9, align 8
  %81 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.i40iw_cq_uk_init_info*, %struct.i40iw_cq_uk_init_info** %11, align 8
  %84 = getelementptr inbounds %struct.i40iw_cq_uk_init_info, %struct.i40iw_cq_uk_init_info* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %9, align 8
  %86 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load %struct.i40iw_cq_uk_init_info*, %struct.i40iw_cq_uk_init_info** %11, align 8
  %93 = getelementptr inbounds %struct.i40iw_cq_uk_init_info, %struct.i40iw_cq_uk_init_info* %92, i32 0, i32 2
  store i32* %91, i32** %93, align 8
  %94 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %3, align 8
  %95 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.i40iw_cq_uk_init_info*, %struct.i40iw_cq_uk_init_info** %11, align 8
  %98 = getelementptr inbounds %struct.i40iw_cq_uk_init_info, %struct.i40iw_cq_uk_init_info* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %3, align 8
  %100 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.i40iw_cq_uk_init_info*, %struct.i40iw_cq_uk_init_info** %11, align 8
  %103 = getelementptr inbounds %struct.i40iw_cq_uk_init_info, %struct.i40iw_cq_uk_init_info* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.i40iw_cq_init_info, %struct.i40iw_cq_init_info* %10, i32 0, i32 2
  store i32 1, i32* %104, align 8
  %105 = getelementptr inbounds %struct.i40iw_cq_init_info, %struct.i40iw_cq_init_info* %10, i32 0, i32 1
  store i32 1, i32* %105, align 4
  %106 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %107 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32 (%struct.i40iw_sc_cq*, %struct.i40iw_cq_init_info*)*, i32 (%struct.i40iw_sc_cq*, %struct.i40iw_cq_init_info*)** %109, align 8
  %111 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %112 = call i32 %110(%struct.i40iw_sc_cq* %111, %struct.i40iw_cq_init_info* %10)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %60
  br label %132

116:                                              ; preds = %60
  %117 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %3, align 8
  %118 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %117, i32 0, i32 3
  %119 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %118, align 8
  %120 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %125 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %126 = call i32 @i40iw_cqp_cq_create_cmd(%struct.i40iw_sc_dev* %124, %struct.i40iw_sc_cq* %125)
  store i32 %126, i32* %6, align 4
  br label %131

127:                                              ; preds = %116
  %128 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %129 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %5, align 8
  %130 = call i32 @i40iw_puda_cq_wqe(%struct.i40iw_sc_dev* %128, %struct.i40iw_sc_cq* %129)
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %127, %123
  br label %132

132:                                              ; preds = %131, %115
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %137 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %3, align 8
  %140 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %139, i32 0, i32 2
  %141 = call i32 @i40iw_free_dma_mem(i32 %138, %struct.i40iw_dma_mem* %140)
  br label %142

142:                                              ; preds = %135, %132
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %142, %43
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @i40iw_allocate_dma_mem(i32, %struct.i40iw_dma_mem*, i32, i32) #1

declare dso_local i32 @memset(%struct.i40iw_cq_init_info*, i32, i32) #1

declare dso_local i32 @i40iw_cqp_cq_create_cmd(%struct.i40iw_sc_dev*, %struct.i40iw_sc_cq*) #1

declare dso_local i32 @i40iw_puda_cq_wqe(%struct.i40iw_sc_dev*, %struct.i40iw_sc_cq*) #1

declare dso_local i32 @i40iw_free_dma_mem(i32, %struct.i40iw_dma_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
