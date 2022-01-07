; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_add_sd_table_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hmc.c_i40iw_add_sd_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_hw = type { i32 }
%struct.i40iw_hmc_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.i40iw_hmc_sd_entry* }
%struct.i40iw_hmc_sd_entry = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__, %struct.i40iw_hmc_pd_entry* }
%struct.TYPE_8__ = type { i64 }
%struct.i40iw_hmc_pd_entry = type { i32 }
%struct.i40iw_dma_mem = type { i32 }

@I40IW_SD_TYPE_PAGED = common dso_local global i32 0, align 4
@I40IW_HMC_PAGED_BP_SIZE = common dso_local global i32 0, align 4
@I40IW_HMC_PD_BP_BUF_ALIGNMENT = common dso_local global i32 0, align 4
@I40IW_SD_TYPE_DIRECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_add_sd_table_entry(%struct.i40iw_hw* %0, %struct.i40iw_hmc_info* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.i40iw_hw*, align 8
  %7 = alloca %struct.i40iw_hmc_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40iw_hmc_sd_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.i40iw_dma_mem, align 4
  %15 = alloca i32, align 4
  store %struct.i40iw_hw* %0, %struct.i40iw_hw** %6, align 8
  store %struct.i40iw_hmc_info* %1, %struct.i40iw_hmc_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %7, align 8
  %17 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %19, i64 %20
  store %struct.i40iw_hmc_sd_entry* %21, %struct.i40iw_hmc_sd_entry** %12, align 8
  %22 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %23 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %96, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @I40IW_SD_TYPE_PAGED, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @I40IW_HMC_PAGED_BP_SIZE, align 4
  store i32 %31, i32* %15, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load %struct.i40iw_hw*, %struct.i40iw_hw** %6, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @I40IW_HMC_PD_BP_BUF_ALIGNMENT, align 4
  %38 = call i32 @i40iw_allocate_dma_mem(%struct.i40iw_hw* %35, %struct.i40iw_dma_mem* %14, i32 %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %109

42:                                               ; preds = %34
  store i32 1, i32* %13, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @I40IW_SD_TYPE_PAGED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %42
  %47 = load %struct.i40iw_hw*, %struct.i40iw_hw** %6, align 8
  %48 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %49 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = call i32 @i40iw_allocate_virt_mem(%struct.i40iw_hw* %47, %struct.TYPE_8__* %51, i32 2048)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %109

56:                                               ; preds = %46
  %57 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %58 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.i40iw_hmc_pd_entry*
  %64 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %65 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store %struct.i40iw_hmc_pd_entry* %63, %struct.i40iw_hmc_pd_entry** %67, align 8
  %68 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %69 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i32 @memcpy(i32* %71, %struct.i40iw_dma_mem* %14, i32 4)
  br label %84

73:                                               ; preds = %42
  %74 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %75 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = call i32 @memcpy(i32* %77, %struct.i40iw_dma_mem* %14, i32 4)
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %81 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i64 %79, i64* %83, align 8
  br label %84

84:                                               ; preds = %73, %56
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %7, align 8
  %87 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %89, i64 %90
  %92 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %91, i32 0, i32 0
  store i32 %85, i32* %92, align 8
  %93 = load %struct.i40iw_hmc_info*, %struct.i40iw_hmc_info** %7, align 8
  %94 = getelementptr inbounds %struct.i40iw_hmc_info, %struct.i40iw_hmc_info* %93, i32 0, i32 0
  %95 = call i32 @I40IW_INC_SD_REFCNT(%struct.TYPE_9__* %94)
  br label %96

96:                                               ; preds = %84, %5
  %97 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %98 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* @I40IW_SD_TYPE_DIRECT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.i40iw_hmc_sd_entry*, %struct.i40iw_hmc_sd_entry** %12, align 8
  %105 = getelementptr inbounds %struct.i40iw_hmc_sd_entry, %struct.i40iw_hmc_sd_entry* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = call i32 @I40IW_INC_BP_REFCNT(%struct.TYPE_10__* %106)
  br label %108

108:                                              ; preds = %103, %96
  br label %109

109:                                              ; preds = %108, %55, %41
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.i40iw_hw*, %struct.i40iw_hw** %6, align 8
  %117 = call i32 @i40iw_free_dma_mem(%struct.i40iw_hw* %116, %struct.i40iw_dma_mem* %14)
  br label %118

118:                                              ; preds = %115, %112
  br label %119

119:                                              ; preds = %118, %109
  %120 = load i32, i32* %11, align 4
  ret i32 %120
}

declare dso_local i32 @i40iw_allocate_dma_mem(%struct.i40iw_hw*, %struct.i40iw_dma_mem*, i32, i32) #1

declare dso_local i32 @i40iw_allocate_virt_mem(%struct.i40iw_hw*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.i40iw_dma_mem*, i32) #1

declare dso_local i32 @I40IW_INC_SD_REFCNT(%struct.TYPE_9__*) #1

declare dso_local i32 @I40IW_INC_BP_REFCNT(%struct.TYPE_10__*) #1

declare dso_local i32 @i40iw_free_dma_mem(%struct.i40iw_hw*, %struct.i40iw_dma_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
