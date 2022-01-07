; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_add_sd_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_pble.c_add_sd_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32, i64 }
%struct.i40iw_hmc_pble_rsrc = type { i32 }
%struct.i40iw_add_page_info = type { i32, %struct.sd_pd_idx, %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_info*, %struct.i40iw_chunk* }
%struct.sd_pd_idx = type { i32, i32 }
%struct.i40iw_hmc_sd_entry = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.i40iw_hmc_info = type { i32 }
%struct.i40iw_chunk = type { i32, i32, i32*, i32 }

@I40IW_SD_TYPE_DIRECT = common dso_local global i32 0, align 4
@I40IW_HMC_DIRECT_BP_SIZE = common dso_local global i32 0, align 4
@I40IW_DMA_COHERENT = common dso_local global i32 0, align 4
@I40IW_HMC_PAGED_BP_SHIFT = common dso_local global i32 0, align 4
@I40IW_DEBUG_PBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"chunk_size[%d] = 0x%x vaddr=%p fpm_addr = %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_dev*, %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_add_page_info*)* @add_sd_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_sd_direct(%struct.i40iw_sc_dev* %0, %struct.i40iw_hmc_pble_rsrc* %1, %struct.i40iw_add_page_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_sc_dev*, align 8
  %6 = alloca %struct.i40iw_hmc_pble_rsrc*, align 8
  %7 = alloca %struct.i40iw_add_page_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sd_pd_idx*, align 8
  %10 = alloca %struct.i40iw_chunk*, align 8
  %11 = alloca %struct.i40iw_hmc_info*, align 8
  %12 = alloca %struct.i40iw_hmc_sd_entry*, align 8
  %13 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %5, align 8
  store %struct.i40iw_hmc_pble_rsrc* %1, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  store %struct.i40iw_add_page_info* %2, %struct.i40iw_add_page_info** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %15 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %14, i32 0, i32 1
  store %struct.sd_pd_idx* %15, %struct.sd_pd_idx** %9, align 8
  %16 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %17 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %16, i32 0, i32 4
  %18 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %17, align 8
  store %struct.i40iw_chunk* %18, %struct.i40iw_chunk** %10, align 8
  %19 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %20 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %19, i32 0, i32 3
  %21 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %20, align 8
  store %struct.i40iw_hmc_info* %21, %struct.i40iw_hmc_info** %11, align 8
  %22 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %23 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %22, i32 0, i32 2
  %24 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %23, align 8
  store %struct.i40iw_hmc_sd_entry* %24, %struct.i40iw_hmc_sd_entry** %12, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %26 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %55, label %29

29:                                               ; preds = %3
  %30 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %31 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %36 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %11, align 8
  %39 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %40 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.sd_pd_idx, %struct.sd_pd_idx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @I40IW_SD_TYPE_DIRECT, align 4
  %44 = load i32, i32* @I40IW_HMC_DIRECT_BP_SIZE, align 4
  %45 = call i32 @i40iw_add_sd_table_entry(i32 %37, %struct.i40iw_hmc_info* %38, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %100

50:                                               ; preds = %34
  %51 = load i32, i32* @I40IW_DMA_COHERENT, align 4
  %52 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %10, align 8
  %53 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %29
  br label %55

55:                                               ; preds = %54, %3
  %56 = load %struct.sd_pd_idx*, %struct.sd_pd_idx** %9, align 8
  %57 = getelementptr inbounds %struct.sd_pd_idx, %struct.sd_pd_idx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @I40IW_HMC_PAGED_BP_SHIFT, align 4
  %60 = shl i32 %58, %59
  store i32 %60, i32* %13, align 4
  %61 = load %struct.i40iw_add_page_info*, %struct.i40iw_add_page_info** %7, align 8
  %62 = getelementptr inbounds %struct.i40iw_add_page_info, %struct.i40iw_add_page_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @I40IW_HMC_PAGED_BP_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %10, align 8
  %67 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %69 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %10, align 8
  %79 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %78, i32 0, i32 2
  store i32* %77, i32** %79, align 8
  %80 = load %struct.i40iw_hmc_pble_rsrc*, %struct.i40iw_hmc_pble_rsrc** %6, align 8
  %81 = getelementptr inbounds %struct.i40iw_hmc_pble_rsrc, %struct.i40iw_hmc_pble_rsrc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %10, align 8
  %84 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %86 = load i32, i32* @I40IW_DEBUG_PBLE, align 4
  %87 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %10, align 8
  %88 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %10, align 8
  %91 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %10, align 8
  %94 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.i40iw_chunk*, %struct.i40iw_chunk** %10, align 8
  %97 = getelementptr inbounds %struct.i40iw_chunk, %struct.i40iw_chunk* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @i40iw_debug(%struct.i40iw_sc_dev* %85, i32 %86, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %92, i32* %95, i32 %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %55, %48
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @i40iw_add_sd_table_entry(i32, %struct.i40iw_hmc_info*, i32, i32, i32) #1

declare dso_local i32 @i40iw_debug(%struct.i40iw_sc_dev*, i32, i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
