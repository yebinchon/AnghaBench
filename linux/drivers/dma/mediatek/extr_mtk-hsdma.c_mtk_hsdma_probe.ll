; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-hsdma.c_mtk_hsdma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.mtk_hsdma_device = type { i32, i32, %struct.mtk_hsdma_vchan*, i8*, i32, i32, i32, i32, i32, %struct.dma_device }
%struct.mtk_hsdma_vchan = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.dma_device = type { i32, %struct.TYPE_12__*, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No device match found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"hsdma\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"No clock for %s\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"No irq resource for %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@MTK_HSDMA_ALIGN_SIZE = common dso_local global i32 0, align 4
@mtk_hsdma_alloc_chan_resources = common dso_local global i32 0, align 4
@mtk_hsdma_free_chan_resources = common dso_local global i32 0, align 4
@mtk_hsdma_tx_status = common dso_local global i32 0, align 4
@mtk_hsdma_issue_pending = common dso_local global i32 0, align 4
@mtk_hsdma_prep_dma_memcpy = common dso_local global i32 0, align 4
@mtk_hsdma_terminate_all = common dso_local global i32 0, align 4
@MTK_HSDMA_DMA_BUSWIDTHS = common dso_local global i8* null, align 8
@DMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@DMA_RESIDUE_GRANULARITY_SEGMENT = common dso_local global i32 0, align 4
@MTK_HSDMA_NR_VCHANS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"dma-requests\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Using %u as missing dma-requests property\0A\00", align 1
@MTK_HSDMA_NR_MAX_PCHANS = common dso_local global i32 0, align 4
@mtk_hsdma_vdesc_free = common dso_local global i32 0, align 4
@of_dma_xlate_by_chan_id = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"MediaTek HSDMA OF registration failed %d\0A\00", align 1
@mtk_hsdma_irq = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"request_irq failed with err %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"MediaTek HSDMA driver registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_hsdma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_hsdma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mtk_hsdma_device*, align 8
  %5 = alloca %struct.mtk_hsdma_vchan*, align 8
  %6 = alloca %struct.dma_device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mtk_hsdma_device* @devm_kzalloc(%struct.TYPE_12__* %11, i32 120, i32 %12)
  store %struct.mtk_hsdma_device* %13, %struct.mtk_hsdma_device** %4, align 8
  %14 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %15 = icmp ne %struct.mtk_hsdma_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %292

19:                                               ; preds = %1
  %20 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %20, i32 0, i32 9
  store %struct.dma_device* %21, %struct.dma_device** %6, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %7, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.resource*, %struct.resource** %7, align 8
  %28 = call i32 @devm_ioremap_resource(%struct.TYPE_12__* %26, %struct.resource* %27)
  %29 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %30 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %19
  %37 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %292

41:                                               ; preds = %19
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @of_device_get_match_data(%struct.TYPE_12__* %43)
  %45 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %46 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %48 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %41
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %292

57:                                               ; preds = %41
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @devm_clk_get(%struct.TYPE_12__* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %62 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %64 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %57
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @dev_name(%struct.TYPE_12__* %72)
  %74 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %76 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @PTR_ERR(i32 %77)
  store i32 %78, i32* %2, align 4
  br label %292

79:                                               ; preds = %57
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = load i32, i32* @IORESOURCE_IRQ, align 4
  %82 = call %struct.resource* @platform_get_resource(%struct.platform_device* %80, i32 %81, i32 0)
  store %struct.resource* %82, %struct.resource** %7, align 8
  %83 = load %struct.resource*, %struct.resource** %7, align 8
  %84 = icmp ne %struct.resource* %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %79
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @dev_name(%struct.TYPE_12__* %89)
  %91 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %292

94:                                               ; preds = %79
  %95 = load %struct.resource*, %struct.resource** %7, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %99 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %101 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %100, i32 0, i32 5
  %102 = call i32 @refcount_set(i32* %101, i32 0)
  %103 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %104 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %103, i32 0, i32 4
  %105 = call i32 @spin_lock_init(i32* %104)
  %106 = load i32, i32* @DMA_MEMCPY, align 4
  %107 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %108 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %107, i32 0, i32 13
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dma_cap_set(i32 %106, i32 %109)
  %111 = load i32, i32* @MTK_HSDMA_ALIGN_SIZE, align 4
  %112 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %113 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %112, i32 0, i32 12
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @mtk_hsdma_alloc_chan_resources, align 4
  %115 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %116 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %115, i32 0, i32 11
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @mtk_hsdma_free_chan_resources, align 4
  %118 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %119 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %118, i32 0, i32 10
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @mtk_hsdma_tx_status, align 4
  %121 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %122 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @mtk_hsdma_issue_pending, align 4
  %124 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %125 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %124, i32 0, i32 8
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @mtk_hsdma_prep_dma_memcpy, align 4
  %127 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %128 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @mtk_hsdma_terminate_all, align 4
  %130 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %131 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %130, i32 0, i32 6
  store i32 %129, i32* %131, align 8
  %132 = load i8*, i8** @MTK_HSDMA_DMA_BUSWIDTHS, align 8
  %133 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %134 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %133, i32 0, i32 5
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** @MTK_HSDMA_DMA_BUSWIDTHS, align 8
  %136 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %137 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %139 = call i32 @BIT(i32 %138)
  %140 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %141 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @DMA_RESIDUE_GRANULARITY_SEGMENT, align 4
  %143 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %144 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %148 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %147, i32 0, i32 1
  store %struct.TYPE_12__* %146, %struct.TYPE_12__** %148, align 8
  %149 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %150 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %149, i32 0, i32 0
  %151 = call i32 @INIT_LIST_HEAD(i32* %150)
  %152 = load i32, i32* @MTK_HSDMA_NR_VCHANS, align 4
  %153 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %154 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %94
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %166 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %165, i32 0, i32 0
  %167 = call i64 @of_property_read_u32(i64 %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %160
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 0
  %172 = load i32, i32* @MTK_HSDMA_NR_VCHANS, align 4
  %173 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_info(%struct.TYPE_12__* %171, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %169, %160, %94
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load i32, i32* @MTK_HSDMA_NR_MAX_PCHANS, align 4
  %178 = load i32, i32* @GFP_KERNEL, align 4
  %179 = call i8* @devm_kcalloc(%struct.TYPE_12__* %176, i32 %177, i32 1, i32 %178)
  %180 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %181 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  %182 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %183 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %182, i32 0, i32 3
  %184 = load i8*, i8** %183, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %174
  %187 = load i32, i32* @ENOMEM, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %2, align 4
  br label %292

189:                                              ; preds = %174
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %193 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @GFP_KERNEL, align 4
  %196 = call i8* @devm_kcalloc(%struct.TYPE_12__* %191, i32 %194, i32 12, i32 %195)
  %197 = bitcast i8* %196 to %struct.mtk_hsdma_vchan*
  %198 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %199 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %198, i32 0, i32 2
  store %struct.mtk_hsdma_vchan* %197, %struct.mtk_hsdma_vchan** %199, align 8
  %200 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %201 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %200, i32 0, i32 2
  %202 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %201, align 8
  %203 = icmp ne %struct.mtk_hsdma_vchan* %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %189
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %2, align 4
  br label %292

207:                                              ; preds = %189
  store i32 0, i32* %8, align 4
  br label %208

208:                                              ; preds = %235, %207
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %211 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %238

214:                                              ; preds = %208
  %215 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %216 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %215, i32 0, i32 2
  %217 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %217, i64 %219
  store %struct.mtk_hsdma_vchan* %220, %struct.mtk_hsdma_vchan** %5, align 8
  %221 = load i32, i32* @mtk_hsdma_vdesc_free, align 4
  %222 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %5, align 8
  %223 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  store i32 %221, i32* %224, align 4
  %225 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %5, align 8
  %226 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %225, i32 0, i32 2
  %227 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %228 = call i32 @vchan_init(%struct.TYPE_11__* %226, %struct.dma_device* %227)
  %229 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %5, align 8
  %230 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %229, i32 0, i32 1
  %231 = call i32 @init_completion(i32* %230)
  %232 = load %struct.mtk_hsdma_vchan*, %struct.mtk_hsdma_vchan** %5, align 8
  %233 = getelementptr inbounds %struct.mtk_hsdma_vchan, %struct.mtk_hsdma_vchan* %232, i32 0, i32 0
  %234 = call i32 @INIT_LIST_HEAD(i32* %233)
  br label %235

235:                                              ; preds = %214
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %8, align 4
  br label %208

238:                                              ; preds = %208
  %239 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %240 = call i32 @dma_async_device_register(%struct.dma_device* %239)
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = load i32, i32* %9, align 4
  store i32 %244, i32* %2, align 4
  br label %292

245:                                              ; preds = %238
  %246 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %247 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i32, i32* @of_dma_xlate_by_chan_id, align 4
  %251 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %252 = call i32 @of_dma_controller_register(i64 %249, i32 %250, %struct.mtk_hsdma_device* %251)
  store i32 %252, i32* %9, align 4
  %253 = load i32, i32* %9, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %245
  %256 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %257 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %256, i32 0, i32 0
  %258 = load i32, i32* %9, align 4
  %259 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %257, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %258)
  br label %288

260:                                              ; preds = %245
  %261 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %262 = call i32 @mtk_hsdma_hw_init(%struct.mtk_hsdma_device* %261)
  %263 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %264 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %263, i32 0, i32 0
  %265 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %266 = getelementptr inbounds %struct.mtk_hsdma_device, %struct.mtk_hsdma_device* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @mtk_hsdma_irq, align 4
  %269 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %270 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %269, i32 0, i32 0
  %271 = call i32 @dev_name(%struct.TYPE_12__* %270)
  %272 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %273 = call i32 @devm_request_irq(%struct.TYPE_12__* %264, i32 %267, i32 %268, i32 0, i32 %271, %struct.mtk_hsdma_device* %272)
  store i32 %273, i32* %9, align 4
  %274 = load i32, i32* %9, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %260
  %277 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %278 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %277, i32 0, i32 0
  %279 = load i32, i32* %9, align 4
  %280 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %278, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %279)
  br label %288

281:                                              ; preds = %260
  %282 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %283 = load %struct.mtk_hsdma_device*, %struct.mtk_hsdma_device** %4, align 8
  %284 = call i32 @platform_set_drvdata(%struct.platform_device* %282, %struct.mtk_hsdma_device* %283)
  %285 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %286 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %285, i32 0, i32 0
  %287 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_info(%struct.TYPE_12__* %286, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %292

288:                                              ; preds = %276, %255
  %289 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %290 = call i32 @dma_async_device_unregister(%struct.dma_device* %289)
  %291 = load i32, i32* %9, align 4
  store i32 %291, i32* %2, align 4
  br label %292

292:                                              ; preds = %288, %281, %243, %204, %186, %85, %68, %51, %36, %16
  %293 = load i32, i32* %2, align 4
  ret i32 %293
}

declare dso_local %struct.mtk_hsdma_device* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_device_get_match_data(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @vchan_init(%struct.TYPE_11__*, %struct.dma_device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dma_async_device_register(%struct.dma_device*) #1

declare dso_local i32 @of_dma_controller_register(i64, i32, %struct.mtk_hsdma_device*) #1

declare dso_local i32 @mtk_hsdma_hw_init(%struct.mtk_hsdma_device*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_12__*, i32, i32, i32, i32, %struct.mtk_hsdma_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_hsdma_device*) #1

declare dso_local i32 @dma_async_device_unregister(%struct.dma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
