; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-cqdma.c_mtk_cqdma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.mtk_cqdma_device = type { i32, i32, %struct.TYPE_11__**, %struct.mtk_cqdma_vchan*, i32, %struct.dma_device }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }
%struct.mtk_cqdma_vchan = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.dma_device = type { i32, %struct.TYPE_13__*, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cqdma\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"No clock for %s\0A\00", align 1
@DMA_MEMCPY = common dso_local global i32 0, align 4
@MTK_CQDMA_ALIGN_SIZE = common dso_local global i32 0, align 4
@mtk_cqdma_alloc_chan_resources = common dso_local global i32 0, align 4
@mtk_cqdma_free_chan_resources = common dso_local global i32 0, align 4
@mtk_cqdma_tx_status = common dso_local global i32 0, align 4
@mtk_cqdma_issue_pending = common dso_local global i32 0, align 4
@mtk_cqdma_prep_dma_memcpy = common dso_local global i32 0, align 4
@mtk_cqdma_terminate_all = common dso_local global i32 0, align 4
@MTK_CQDMA_DMA_BUSWIDTHS = common dso_local global i8* null, align 8
@DMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@DMA_RESIDUE_GRANULARITY_SEGMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"dma-requests\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Using %u as missing dma-requests property\0A\00", align 1
@MTK_CQDMA_NR_VCHANS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Using %u as missing dma-channels property\0A\00", align 1
@MTK_CQDMA_NR_PCHANS = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"No mem resource for %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"No irq resource for %s\0A\00", align 1
@mtk_cqdma_irq = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"request_irq failed with err %d\0A\00", align 1
@mtk_cqdma_vdesc_free = common dso_local global i32 0, align 4
@of_dma_xlate_by_chan_id = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"MediaTek CQDMA OF registration failed %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"MediaTek CQDMA HW initialization failed %d\0A\00", align 1
@mtk_cqdma_tasklet_cb = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"MediaTek CQDMA driver registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_cqdma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_cqdma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mtk_cqdma_device*, align 8
  %5 = alloca %struct.mtk_cqdma_vchan*, align 8
  %6 = alloca %struct.dma_device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mtk_cqdma_device* @devm_kzalloc(%struct.TYPE_13__* %11, i32 104, i32 %12)
  store %struct.mtk_cqdma_device* %13, %struct.mtk_cqdma_device** %4, align 8
  %14 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %15 = icmp ne %struct.mtk_cqdma_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %427

19:                                               ; preds = %1
  %20 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %20, i32 0, i32 5
  store %struct.dma_device* %21, %struct.dma_device** %6, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @devm_clk_get(%struct.TYPE_13__* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %19
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_name(%struct.TYPE_13__* %36)
  %38 = call i32 @dev_err(%struct.TYPE_13__* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %40 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %427

43:                                               ; preds = %19
  %44 = load i32, i32* @DMA_MEMCPY, align 4
  %45 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %46 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dma_cap_set(i32 %44, i32 %47)
  %49 = load i32, i32* @MTK_CQDMA_ALIGN_SIZE, align 4
  %50 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %51 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %50, i32 0, i32 12
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @mtk_cqdma_alloc_chan_resources, align 4
  %53 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %54 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %53, i32 0, i32 11
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @mtk_cqdma_free_chan_resources, align 4
  %56 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %57 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @mtk_cqdma_tx_status, align 4
  %59 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %60 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @mtk_cqdma_issue_pending, align 4
  %62 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %63 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @mtk_cqdma_prep_dma_memcpy, align 4
  %65 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %66 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @mtk_cqdma_terminate_all, align 4
  %68 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %69 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** @MTK_CQDMA_DMA_BUSWIDTHS, align 8
  %71 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %72 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** @MTK_CQDMA_DMA_BUSWIDTHS, align 8
  %74 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %75 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %77 = call i32 @BIT(i32 %76)
  %78 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %79 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @DMA_RESIDUE_GRANULARITY_SEGMENT, align 4
  %81 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %82 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %86 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %85, i32 0, i32 1
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %86, align 8
  %87 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %88 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %87, i32 0, i32 0
  %89 = call i32 @INIT_LIST_HEAD(i32* %88)
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %43
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %101 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %100, i32 0, i32 0
  %102 = call i64 @of_property_read_u32(i64 %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %95
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load i32, i32* @MTK_CQDMA_NR_VCHANS, align 4
  %108 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_info(%struct.TYPE_13__* %106, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @MTK_CQDMA_NR_VCHANS, align 4
  %110 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %111 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %104, %95, %43
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %112
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %124 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %123, i32 0, i32 1
  %125 = call i64 @of_property_read_u32(i64 %122, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %118
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = load i32, i32* @MTK_CQDMA_NR_PCHANS, align 4
  %131 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_info(%struct.TYPE_13__* %129, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @MTK_CQDMA_NR_PCHANS, align 4
  %133 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %134 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %127, %118, %112
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %139 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = call i8* @devm_kcalloc(%struct.TYPE_13__* %137, i32 %140, i32 8, i32 %141)
  %143 = bitcast i8* %142 to %struct.TYPE_11__**
  %144 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %145 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %144, i32 0, i32 2
  store %struct.TYPE_11__** %143, %struct.TYPE_11__*** %145, align 8
  %146 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %147 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %146, i32 0, i32 2
  %148 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %147, align 8
  %149 = icmp ne %struct.TYPE_11__** %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %135
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %427

153:                                              ; preds = %135
  store i64 0, i64* %9, align 8
  br label %154

154:                                              ; preds = %307, %153
  %155 = load i64, i64* %9, align 8
  %156 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %157 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp ult i64 %155, %159
  br i1 %160, label %161, label %310

161:                                              ; preds = %154
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = load i32, i32* @GFP_KERNEL, align 4
  %165 = call i8* @devm_kcalloc(%struct.TYPE_13__* %163, i32 1, i32 24, i32 %164)
  %166 = bitcast i8* %165 to %struct.TYPE_11__*
  %167 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %168 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %167, i32 0, i32 2
  %169 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %168, align 8
  %170 = load i64, i64* %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %169, i64 %170
  store %struct.TYPE_11__* %166, %struct.TYPE_11__** %171, align 8
  %172 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %173 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %172, i32 0, i32 2
  %174 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %173, align 8
  %175 = load i64, i64* %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %174, i64 %175
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = icmp ne %struct.TYPE_11__* %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %161
  %180 = load i32, i32* @ENOMEM, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %427

182:                                              ; preds = %161
  %183 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %184 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %183, i32 0, i32 2
  %185 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %184, align 8
  %186 = load i64, i64* %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %185, i64 %186
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 5
  %190 = call i32 @INIT_LIST_HEAD(i32* %189)
  %191 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %192 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %191, i32 0, i32 2
  %193 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %192, align 8
  %194 = load i64, i64* %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %193, i64 %194
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 4
  %198 = call i32 @spin_lock_init(i32* %197)
  %199 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %200 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %199, i32 0, i32 2
  %201 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %200, align 8
  %202 = load i64, i64* %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %201, i64 %202
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 3
  %206 = call i32 @refcount_set(i32* %205, i32 0)
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = load i32, i32* @IORESOURCE_MEM, align 4
  %209 = load i64, i64* %9, align 8
  %210 = call %struct.resource* @platform_get_resource(%struct.platform_device* %207, i32 %208, i64 %209)
  store %struct.resource* %210, %struct.resource** %7, align 8
  %211 = load %struct.resource*, %struct.resource** %7, align 8
  %212 = icmp ne %struct.resource* %211, null
  br i1 %212, label %222, label %213

213:                                              ; preds = %182
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %217 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %216, i32 0, i32 0
  %218 = call i32 @dev_name(%struct.TYPE_13__* %217)
  %219 = call i32 @dev_err(%struct.TYPE_13__* %215, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %2, align 4
  br label %427

222:                                              ; preds = %182
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = load %struct.resource*, %struct.resource** %7, align 8
  %226 = call i32 @devm_ioremap_resource(%struct.TYPE_13__* %224, %struct.resource* %225)
  %227 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %228 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %227, i32 0, i32 2
  %229 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %228, align 8
  %230 = load i64, i64* %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %229, i64 %230
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 2
  store i32 %226, i32* %233, align 4
  %234 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %235 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %234, i32 0, i32 2
  %236 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %235, align 8
  %237 = load i64, i64* %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %236, i64 %237
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @IS_ERR(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %254

244:                                              ; preds = %222
  %245 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %246 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %245, i32 0, i32 2
  %247 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %246, align 8
  %248 = load i64, i64* %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %247, i64 %248
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @PTR_ERR(i32 %252)
  store i32 %253, i32* %2, align 4
  br label %427

254:                                              ; preds = %222
  %255 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %256 = load i32, i32* @IORESOURCE_IRQ, align 4
  %257 = load i64, i64* %9, align 8
  %258 = call %struct.resource* @platform_get_resource(%struct.platform_device* %255, i32 %256, i64 %257)
  store %struct.resource* %258, %struct.resource** %7, align 8
  %259 = load %struct.resource*, %struct.resource** %7, align 8
  %260 = icmp ne %struct.resource* %259, null
  br i1 %260, label %270, label %261

261:                                              ; preds = %254
  %262 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %263 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %262, i32 0, i32 0
  %264 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %265 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %264, i32 0, i32 0
  %266 = call i32 @dev_name(%struct.TYPE_13__* %265)
  %267 = call i32 @dev_err(%struct.TYPE_13__* %263, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %266)
  %268 = load i32, i32* @EINVAL, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %2, align 4
  br label %427

270:                                              ; preds = %254
  %271 = load %struct.resource*, %struct.resource** %7, align 8
  %272 = getelementptr inbounds %struct.resource, %struct.resource* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %275 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %274, i32 0, i32 2
  %276 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %275, align 8
  %277 = load i64, i64* %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %276, i64 %277
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 1
  store i32 %273, i32* %280, align 4
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %281, i32 0, i32 0
  %283 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %284 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %283, i32 0, i32 2
  %285 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %284, align 8
  %286 = load i64, i64* %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %285, i64 %286
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @mtk_cqdma_irq, align 4
  %292 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %293 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %292, i32 0, i32 0
  %294 = call i32 @dev_name(%struct.TYPE_13__* %293)
  %295 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %296 = call i32 @devm_request_irq(%struct.TYPE_13__* %282, i32 %290, i32 %291, i32 0, i32 %294, %struct.mtk_cqdma_device* %295)
  store i32 %296, i32* %8, align 4
  %297 = load i32, i32* %8, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %270
  %300 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %301 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %300, i32 0, i32 0
  %302 = load i32, i32* %8, align 4
  %303 = call i32 @dev_err(%struct.TYPE_13__* %301, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %302)
  %304 = load i32, i32* @EINVAL, align 4
  %305 = sub nsw i32 0, %304
  store i32 %305, i32* %2, align 4
  br label %427

306:                                              ; preds = %270
  br label %307

307:                                              ; preds = %306
  %308 = load i64, i64* %9, align 8
  %309 = add i64 %308, 1
  store i64 %309, i64* %9, align 8
  br label %154

310:                                              ; preds = %154
  %311 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %312 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %311, i32 0, i32 0
  %313 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %314 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @GFP_KERNEL, align 4
  %317 = call i8* @devm_kcalloc(%struct.TYPE_13__* %312, i32 %315, i32 8, i32 %316)
  %318 = bitcast i8* %317 to %struct.mtk_cqdma_vchan*
  %319 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %320 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %319, i32 0, i32 3
  store %struct.mtk_cqdma_vchan* %318, %struct.mtk_cqdma_vchan** %320, align 8
  %321 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %322 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %321, i32 0, i32 3
  %323 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %322, align 8
  %324 = icmp ne %struct.mtk_cqdma_vchan* %323, null
  br i1 %324, label %328, label %325

325:                                              ; preds = %310
  %326 = load i32, i32* @ENOMEM, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %2, align 4
  br label %427

328:                                              ; preds = %310
  store i64 0, i64* %9, align 8
  br label %329

329:                                              ; preds = %353, %328
  %330 = load i64, i64* %9, align 8
  %331 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %332 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = sext i32 %333 to i64
  %335 = icmp ult i64 %330, %334
  br i1 %335, label %336, label %356

336:                                              ; preds = %329
  %337 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %338 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %337, i32 0, i32 3
  %339 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %338, align 8
  %340 = load i64, i64* %9, align 8
  %341 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %339, i64 %340
  store %struct.mtk_cqdma_vchan* %341, %struct.mtk_cqdma_vchan** %5, align 8
  %342 = load i32, i32* @mtk_cqdma_vdesc_free, align 4
  %343 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %5, align 8
  %344 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 0
  store i32 %342, i32* %345, align 4
  %346 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %5, align 8
  %347 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %346, i32 0, i32 1
  %348 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %349 = call i32 @vchan_init(%struct.TYPE_12__* %347, %struct.dma_device* %348)
  %350 = load %struct.mtk_cqdma_vchan*, %struct.mtk_cqdma_vchan** %5, align 8
  %351 = getelementptr inbounds %struct.mtk_cqdma_vchan, %struct.mtk_cqdma_vchan* %350, i32 0, i32 0
  %352 = call i32 @init_completion(i32* %351)
  br label %353

353:                                              ; preds = %336
  %354 = load i64, i64* %9, align 8
  %355 = add i64 %354, 1
  store i64 %355, i64* %9, align 8
  br label %329

356:                                              ; preds = %329
  %357 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %358 = call i32 @dma_async_device_register(%struct.dma_device* %357)
  store i32 %358, i32* %8, align 4
  %359 = load i32, i32* %8, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %356
  %362 = load i32, i32* %8, align 4
  store i32 %362, i32* %2, align 4
  br label %427

363:                                              ; preds = %356
  %364 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %365 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load i32, i32* @of_dma_xlate_by_chan_id, align 4
  %369 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %370 = call i32 @of_dma_controller_register(i64 %367, i32 %368, %struct.mtk_cqdma_device* %369)
  store i32 %370, i32* %8, align 4
  %371 = load i32, i32* %8, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %378

373:                                              ; preds = %363
  %374 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %375 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %374, i32 0, i32 0
  %376 = load i32, i32* %8, align 4
  %377 = call i32 @dev_err(%struct.TYPE_13__* %375, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %376)
  br label %423

378:                                              ; preds = %363
  %379 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %380 = call i32 @mtk_cqdma_hw_init(%struct.mtk_cqdma_device* %379)
  store i32 %380, i32* %8, align 4
  %381 = load i32, i32* %8, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %378
  %384 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %385 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %384, i32 0, i32 0
  %386 = load i32, i32* %8, align 4
  %387 = call i32 @dev_err(%struct.TYPE_13__* %385, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %386)
  br label %423

388:                                              ; preds = %378
  %389 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %390 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %391 = call i32 @platform_set_drvdata(%struct.platform_device* %389, %struct.mtk_cqdma_device* %390)
  store i64 0, i64* %9, align 8
  br label %392

392:                                              ; preds = %416, %388
  %393 = load i64, i64* %9, align 8
  %394 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %395 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  %398 = icmp ult i64 %393, %397
  br i1 %398, label %399, label %419

399:                                              ; preds = %392
  %400 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %401 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %400, i32 0, i32 2
  %402 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %401, align 8
  %403 = load i64, i64* %9, align 8
  %404 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %402, i64 %403
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i32 0, i32 0
  %407 = load i32, i32* @mtk_cqdma_tasklet_cb, align 4
  %408 = load %struct.mtk_cqdma_device*, %struct.mtk_cqdma_device** %4, align 8
  %409 = getelementptr inbounds %struct.mtk_cqdma_device, %struct.mtk_cqdma_device* %408, i32 0, i32 2
  %410 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %409, align 8
  %411 = load i64, i64* %9, align 8
  %412 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %410, i64 %411
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** %412, align 8
  %414 = ptrtoint %struct.TYPE_11__* %413 to i64
  %415 = call i32 @tasklet_init(i32* %406, i32 %407, i64 %414)
  br label %416

416:                                              ; preds = %399
  %417 = load i64, i64* %9, align 8
  %418 = add i64 %417, 1
  store i64 %418, i64* %9, align 8
  br label %392

419:                                              ; preds = %392
  %420 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %421 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %420, i32 0, i32 0
  %422 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_info(%struct.TYPE_13__* %421, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %427

423:                                              ; preds = %383, %373
  %424 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %425 = call i32 @dma_async_device_unregister(%struct.dma_device* %424)
  %426 = load i32, i32* %8, align 4
  store i32 %426, i32* %2, align 4
  br label %427

427:                                              ; preds = %423, %419, %361, %325, %299, %261, %244, %213, %179, %150, %32, %16
  %428 = load i32, i32* %2, align 4
  ret i32 %428
}

declare dso_local %struct.mtk_cqdma_device* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_13__*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i64) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i32, i32, i32, i32, %struct.mtk_cqdma_device*) #1

declare dso_local i32 @vchan_init(%struct.TYPE_12__*, %struct.dma_device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dma_async_device_register(%struct.dma_device*) #1

declare dso_local i32 @of_dma_controller_register(i64, i32, %struct.mtk_cqdma_device*) #1

declare dso_local i32 @mtk_cqdma_hw_init(%struct.mtk_cqdma_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtk_cqdma_device*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @dma_async_device_unregister(%struct.dma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
