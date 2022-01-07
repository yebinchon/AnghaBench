; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_remove_pd_bp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_remove_pd_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_hw = type { i32 }
%struct.i40iw_hmc_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.i40iw_hmc_sd_entry* }
%struct.i40iw_hmc_sd_entry = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.i40iw_hmc_pd_table }
%struct.i40iw_hmc_pd_table = type { i32, i32, %struct.TYPE_7__, %struct.i40iw_hmc_pd_entry* }
%struct.TYPE_7__ = type { i64 }
%struct.i40iw_hmc_pd_entry = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.i40iw_dma_mem, i64 }
%struct.i40iw_dma_mem = type { i32 }

@I40IW_HMC_PD_CNT_IN_SD = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_PAGE_DESC_INDEX = common dso_local global i32 0, align 4
@I40IW_SD_TYPE_PAGED = common dso_local global i64 0, align 8
@I40IW_ERR_INVALID_SD_TYPE = common dso_local global i32 0, align 4
@I40IW_ERR_PARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_remove_pd_bp(%struct.i40iw_hw* %0, %struct.i40iw_hmc_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_hw*, align 8
  %7 = alloca %struct.i40iw_hmc_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40iw_hmc_pd_entry*, align 8
  %11 = alloca %struct.i40iw_hmc_pd_table*, align 8
  %12 = alloca %struct.i40iw_hmc_sd_entry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.i40iw_dma_mem*, align 8
  %16 = alloca i32*, align 8
  store %struct.i40iw_hw* %0, %struct.i40iw_hw** %6, align 8
  store %struct.i40iw_hmc_info* %1, %struct.i40iw_hmc_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @I40IW_HMC_PD_CNT_IN_SD, align 8
  %19 = udiv i64 %17, %18
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @I40IW_HMC_PD_CNT_IN_SD, align 8
  %22 = urem i64 %20, %21
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %7, align 8
  %25 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp uge i64 %23, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @I40IW_ERR_INVALID_PAGE_DESC_INDEX, align 4
  store i32 %30, i32* %5, align 4
  br label %131

31:                                               ; preds = %4
  %32 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %7, align 8
  %33 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %35, i64 %36
  store %struct.i40iw_hmc_sd_entry* %37, %struct.i40iw_hmc_sd_entry** %12, align 8
  %38 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %39 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @I40IW_SD_TYPE_PAGED, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* @I40IW_ERR_INVALID_SD_TYPE, align 4
  store i32 %44, i32* %5, align 4
  br label %131

45:                                               ; preds = %31
  %46 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %7, align 8
  %47 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %49, i64 %50
  %52 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store %struct.i40iw_hmc_pd_table* %53, %struct.i40iw_hmc_pd_table** %11, align 8
  %54 = load %struct.i40iw_hmc_pd_table*, %struct.i40iw_hmc_pd_table** %11, align 8
  %55 = getelementptr inbounds %struct.i40iw_hmc_pd_table, %struct.i40iw_hmc_pd_table* %54, i32 0, i32 3
  %56 = load %struct.i40iw_hmc_pd_entry*, %struct.i40iw_hmc_pd_entry** %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds %struct.i40iw_hmc_pd_entry, %struct.i40iw_hmc_pd_entry* %56, i64 %57
  store %struct.i40iw_hmc_pd_entry* %58, %struct.i40iw_hmc_pd_entry** %10, align 8
  %59 = load %struct.i40iw_hmc_pd_entry*, %struct.i40iw_hmc_pd_entry** %10, align 8
  %60 = getelementptr inbounds %struct.i40iw_hmc_pd_entry, %struct.i40iw_hmc_pd_entry* %59, i32 0, i32 1
  %61 = call i32 @I40IW_DEC_BP_REFCNT(%struct.TYPE_8__* %60)
  %62 = load %struct.i40iw_hmc_pd_entry*, %struct.i40iw_hmc_pd_entry** %10, align 8
  %63 = getelementptr inbounds %struct.i40iw_hmc_pd_entry, %struct.i40iw_hmc_pd_entry* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %131

68:                                               ; preds = %45
  %69 = load %struct.i40iw_hmc_pd_entry*, %struct.i40iw_hmc_pd_entry** %10, align 8
  %70 = getelementptr inbounds %struct.i40iw_hmc_pd_entry, %struct.i40iw_hmc_pd_entry* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.i40iw_hmc_pd_table*, %struct.i40iw_hmc_pd_table** %11, align 8
  %72 = call i32 @I40IW_DEC_PD_REFCNT(%struct.i40iw_hmc_pd_table* %71)
  %73 = load %struct.i40iw_hmc_pd_table*, %struct.i40iw_hmc_pd_table** %11, align 8
  %74 = getelementptr inbounds %struct.i40iw_hmc_pd_table, %struct.i40iw_hmc_pd_table* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i32*
  store i32* %77, i32** %16, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i32*, i32** %16, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 %78
  store i32* %80, i32** %16, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @memset(i32* %81, i32 0, i32 4)
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %68
  %86 = load %struct.i40iw_hw*, %struct.i40iw_hw** %6, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @I40IW_INVALIDATE_PF_HMC_PD(%struct.i40iw_hw* %86, i64 %87, i64 %88)
  br label %98

90:                                               ; preds = %68
  %91 = load %struct.i40iw_hw*, %struct.i40iw_hw** %6, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %7, align 8
  %95 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @I40IW_INVALIDATE_VF_HMC_PD(%struct.i40iw_hw* %91, i64 %92, i64 %93, i32 %96)
  br label %98

98:                                               ; preds = %90, %85
  %99 = load %struct.i40iw_hmc_pd_entry*, %struct.i40iw_hmc_pd_entry** %10, align 8
  %100 = getelementptr inbounds %struct.i40iw_hmc_pd_entry, %struct.i40iw_hmc_pd_entry* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %98
  %104 = load %struct.i40iw_hmc_pd_entry*, %struct.i40iw_hmc_pd_entry** %10, align 8
  %105 = getelementptr inbounds %struct.i40iw_hmc_pd_entry, %struct.i40iw_hmc_pd_entry* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store %struct.i40iw_dma_mem* %106, %struct.i40iw_dma_mem** %15, align 8
  %107 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %15, align 8
  %108 = icmp ne %struct.i40iw_dma_mem* %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %15, align 8
  %111 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %109, %103
  %115 = load i32, i32* @I40IW_ERR_PARAM, align 4
  store i32 %115, i32* %5, align 4
  br label %131

116:                                              ; preds = %109
  %117 = load %struct.i40iw_hw*, %struct.i40iw_hw** %6, align 8
  %118 = load %struct.i40iw_dma_mem*, %struct.i40iw_dma_mem** %15, align 8
  %119 = call i32 @i40iw_free_dma_mem(%struct.i40iw_hw* %117, %struct.i40iw_dma_mem* %118)
  br label %120

120:                                              ; preds = %116, %98
  %121 = load %struct.i40iw_hmc_pd_table*, %struct.i40iw_hmc_pd_table** %11, align 8
  %122 = getelementptr inbounds %struct.i40iw_hmc_pd_table, %struct.i40iw_hmc_pd_table* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = load %struct.i40iw_hw*, %struct.i40iw_hw** %6, align 8
  %127 = load %struct.i40iw_hmc_pd_table*, %struct.i40iw_hmc_pd_table** %11, align 8
  %128 = getelementptr inbounds %struct.i40iw_hmc_pd_table, %struct.i40iw_hmc_pd_table* %127, i32 0, i32 0
  %129 = call i32 @i40iw_free_virt_mem(%struct.i40iw_hw* %126, i32* %128)
  br label %130

130:                                              ; preds = %125, %120
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %130, %114, %67, %43, %29
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @I40IW_DEC_BP_REFCNT(%struct.TYPE_8__*) #1

declare dso_local i32 @I40IW_DEC_PD_REFCNT(%struct.i40iw_hmc_pd_table*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @I40IW_INVALIDATE_PF_HMC_PD(%struct.i40iw_hw*, i64, i64) #1

declare dso_local i32 @I40IW_INVALIDATE_VF_HMC_PD(%struct.i40iw_hw*, i64, i64, i32) #1

declare dso_local i32 @i40iw_free_dma_mem(%struct.i40iw_hw*, %struct.i40iw_dma_mem*) #1

declare dso_local i32 @i40iw_free_virt_mem(%struct.i40iw_hw*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
