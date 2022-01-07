; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.mdc_dma = type { i32, i32, i32, i32, %struct.TYPE_19__, i32, %struct.mdc_chan*, i64, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_20__*, i32 }
%struct.mdc_chan = type { i32, i64, %struct.TYPE_18__, %struct.mdc_dma* }
%struct.TYPE_18__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"img,cr-periph\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@DMA_CYCLIC = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@MDC_GLOBAL_CONFIG_A = common dso_local global i32 0, align 4
@MDC_GLOBAL_CONFIG_A_DMA_CONTEXTS_SHIFT = common dso_local global i32 0, align 4
@MDC_GLOBAL_CONFIG_A_DMA_CONTEXTS_MASK = common dso_local global i32 0, align 4
@MDC_GLOBAL_CONFIG_A_THREAD_ID_WIDTH_SHIFT = common dso_local global i32 0, align 4
@MDC_GLOBAL_CONFIG_A_THREAD_ID_WIDTH_MASK = common dso_local global i32 0, align 4
@MDC_GLOBAL_CONFIG_A_SYS_DAT_WIDTH_SHIFT = common dso_local global i32 0, align 4
@MDC_GLOBAL_CONFIG_A_SYS_DAT_WIDTH_MASK = common dso_local global i32 0, align 4
@MDC_TRANSFER_SIZE_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"img,max-burst-multiplier\00", align 1
@mdc_prep_slave_sg = common dso_local global i32 0, align 4
@mdc_prep_dma_cyclic = common dso_local global i32 0, align 4
@mdc_prep_dma_memcpy = common dso_local global i32 0, align 4
@mdc_alloc_chan_resources = common dso_local global i32 0, align 4
@mdc_free_chan_resources = common dso_local global i32 0, align 4
@mdc_tx_status = common dso_local global i32 0, align 4
@mdc_issue_pending = common dso_local global i32 0, align 4
@mdc_terminate_all = common dso_local global i32 0, align 4
@mdc_synchronize = common dso_local global i32 0, align 4
@mdc_slave_config = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_RESIDUE_GRANULARITY_BURST = common dso_local global i32 0, align 4
@mdc_chan_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@mdc_desc_free = common dso_local global i32 0, align 4
@mdc_of_xlate = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"MDC with %u channels and %u threads\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mdc_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdc_dma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mdc_dma*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mdc_chan*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mdc_dma* @devm_kzalloc(%struct.TYPE_20__* %11, i32 136, i32 %12)
  store %struct.mdc_dma* %13, %struct.mdc_dma** %4, align 8
  %14 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %15 = icmp ne %struct.mdc_dma* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %395

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %22 = call i32 @platform_set_drvdata(%struct.platform_device* %20, %struct.mdc_dma* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @of_device_get_match_data(%struct.TYPE_20__* %24)
  %26 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %27 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %26, i32 0, i32 11
  store i32 %25, i32* %27, align 4
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.resource* @platform_get_resource(%struct.platform_device* %28, i32 %29, i32 0)
  store %struct.resource* %30, %struct.resource** %5, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.resource*, %struct.resource** %5, align 8
  %34 = call i32 @devm_ioremap_resource(%struct.TYPE_20__* %32, %struct.resource* %33)
  %35 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %36 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %38 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %19
  %43 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %44 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @PTR_ERR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %395

47:                                               ; preds = %19
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @syscon_regmap_lookup_by_phandle(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %54 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %56 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %62 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %395

65:                                               ; preds = %47
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @devm_clk_get(%struct.TYPE_20__* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %69 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %70 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %72 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %78 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %395

81:                                               ; preds = %65
  %82 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %83 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 16
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dma_cap_zero(i32 %85)
  %87 = load i32, i32* @DMA_SLAVE, align 4
  %88 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %89 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 16
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dma_cap_set(i32 %87, i32 %91)
  %93 = load i32, i32* @DMA_PRIVATE, align 4
  %94 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %95 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 16
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dma_cap_set(i32 %93, i32 %97)
  %99 = load i32, i32* @DMA_CYCLIC, align 4
  %100 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %101 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 16
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dma_cap_set(i32 %99, i32 %103)
  %105 = load i32, i32* @DMA_MEMCPY, align 4
  %106 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %107 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 16
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dma_cap_set(i32 %105, i32 %109)
  %111 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %112 = load i32, i32* @MDC_GLOBAL_CONFIG_A, align 4
  %113 = call i32 @mdc_readl(%struct.mdc_dma* %111, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @MDC_GLOBAL_CONFIG_A_DMA_CONTEXTS_SHIFT, align 4
  %116 = ashr i32 %114, %115
  %117 = load i32, i32* @MDC_GLOBAL_CONFIG_A_DMA_CONTEXTS_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %120 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @MDC_GLOBAL_CONFIG_A_THREAD_ID_WIDTH_SHIFT, align 4
  %123 = ashr i32 %121, %122
  %124 = load i32, i32* @MDC_GLOBAL_CONFIG_A_THREAD_ID_WIDTH_MASK, align 4
  %125 = and i32 %123, %124
  %126 = shl i32 1, %125
  %127 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %128 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @MDC_GLOBAL_CONFIG_A_SYS_DAT_WIDTH_SHIFT, align 4
  %131 = ashr i32 %129, %130
  %132 = load i32, i32* @MDC_GLOBAL_CONFIG_A_SYS_DAT_WIDTH_MASK, align 4
  %133 = and i32 %131, %132
  %134 = shl i32 1, %133
  %135 = sdiv i32 %134, 8
  %136 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %137 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load i64, i64* @MDC_TRANSFER_SIZE_MASK, align 8
  %139 = add nsw i64 %138, 1
  %140 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %141 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = sub nsw i64 %139, %143
  %145 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %146 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %145, i32 0, i32 7
  store i64 %144, i64* %146, align 8
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %152 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %151, i32 0, i32 0
  %153 = call i32 @of_property_read_u32(i32 %150, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %152)
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %159 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %158, i32 0, i32 3
  %160 = call i32 @of_property_read_u32(i32 %157, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %81
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %2, align 4
  br label %395

165:                                              ; preds = %81
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %169 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 15
  store %struct.TYPE_20__* %167, %struct.TYPE_20__** %170, align 8
  %171 = load i32, i32* @mdc_prep_slave_sg, align 4
  %172 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %173 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 14
  store i32 %171, i32* %174, align 8
  %175 = load i32, i32* @mdc_prep_dma_cyclic, align 4
  %176 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %177 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 13
  store i32 %175, i32* %178, align 4
  %179 = load i32, i32* @mdc_prep_dma_memcpy, align 4
  %180 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %181 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 12
  store i32 %179, i32* %182, align 8
  %183 = load i32, i32* @mdc_alloc_chan_resources, align 4
  %184 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %185 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 11
  store i32 %183, i32* %186, align 4
  %187 = load i32, i32* @mdc_free_chan_resources, align 4
  %188 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %189 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 10
  store i32 %187, i32* %190, align 8
  %191 = load i32, i32* @mdc_tx_status, align 4
  %192 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %193 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 9
  store i32 %191, i32* %194, align 4
  %195 = load i32, i32* @mdc_issue_pending, align 4
  %196 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %197 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %196, i32 0, i32 4
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 8
  store i32 %195, i32* %198, align 8
  %199 = load i32, i32* @mdc_terminate_all, align 4
  %200 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %201 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 7
  store i32 %199, i32* %202, align 4
  %203 = load i32, i32* @mdc_synchronize, align 4
  %204 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %205 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 6
  store i32 %203, i32* %206, align 8
  %207 = load i32, i32* @mdc_slave_config, align 4
  %208 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %209 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 5
  store i32 %207, i32* %210, align 4
  %211 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %212 = call i32 @BIT(i32 %211)
  %213 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %214 = call i32 @BIT(i32 %213)
  %215 = or i32 %212, %214
  %216 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %217 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  store i32 %215, i32* %218, align 8
  %219 = load i32, i32* @DMA_RESIDUE_GRANULARITY_BURST, align 4
  %220 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %221 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 4
  store i32 %219, i32* %222, align 8
  store i32 1, i32* %6, align 4
  br label %223

223:                                              ; preds = %244, %165
  %224 = load i32, i32* %6, align 4
  %225 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %226 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp ule i32 %224, %227
  br i1 %228, label %229, label %247

229:                                              ; preds = %223
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @BIT(i32 %230)
  %232 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %233 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %235, %231
  store i32 %236, i32* %234, align 4
  %237 = load i32, i32* %6, align 4
  %238 = call i32 @BIT(i32 %237)
  %239 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %240 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %242, %238
  store i32 %243, i32* %241, align 8
  br label %244

244:                                              ; preds = %229
  %245 = load i32, i32* %6, align 4
  %246 = shl i32 %245, 1
  store i32 %246, i32* %6, align 4
  br label %223

247:                                              ; preds = %223
  %248 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %249 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 3
  %251 = call i32 @INIT_LIST_HEAD(i32* %250)
  store i32 0, i32* %6, align 4
  br label %252

252:                                              ; preds = %313, %247
  %253 = load i32, i32* %6, align 4
  %254 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %255 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp ult i32 %253, %256
  br i1 %257, label %258, label %316

258:                                              ; preds = %252
  %259 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %260 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %259, i32 0, i32 6
  %261 = load %struct.mdc_chan*, %struct.mdc_chan** %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %261, i64 %263
  store %struct.mdc_chan* %264, %struct.mdc_chan** %9, align 8
  %265 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %266 = load %struct.mdc_chan*, %struct.mdc_chan** %9, align 8
  %267 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %266, i32 0, i32 3
  store %struct.mdc_dma* %265, %struct.mdc_dma** %267, align 8
  %268 = load i32, i32* %6, align 4
  %269 = load %struct.mdc_chan*, %struct.mdc_chan** %9, align 8
  %270 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  %271 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %272 = load i32, i32* %6, align 4
  %273 = call i64 @platform_get_irq(%struct.platform_device* %271, i32 %272)
  %274 = load %struct.mdc_chan*, %struct.mdc_chan** %9, align 8
  %275 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %274, i32 0, i32 1
  store i64 %273, i64* %275, align 8
  %276 = load %struct.mdc_chan*, %struct.mdc_chan** %9, align 8
  %277 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = icmp slt i64 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %258
  %281 = load %struct.mdc_chan*, %struct.mdc_chan** %9, align 8
  %282 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %2, align 4
  br label %395

285:                                              ; preds = %258
  %286 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %287 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %286, i32 0, i32 0
  %288 = load %struct.mdc_chan*, %struct.mdc_chan** %9, align 8
  %289 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = trunc i64 %290 to i32
  %292 = load i32, i32* @mdc_chan_irq, align 4
  %293 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %294 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %295 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %294, i32 0, i32 0
  %296 = call i32 @dev_name(%struct.TYPE_20__* %295)
  %297 = load %struct.mdc_chan*, %struct.mdc_chan** %9, align 8
  %298 = call i32 @devm_request_irq(%struct.TYPE_20__* %287, i32 %291, i32 %292, i32 %293, i32 %296, %struct.mdc_chan* %297)
  store i32 %298, i32* %8, align 4
  %299 = load i32, i32* %8, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %285
  %302 = load i32, i32* %8, align 4
  store i32 %302, i32* %2, align 4
  br label %395

303:                                              ; preds = %285
  %304 = load i32, i32* @mdc_desc_free, align 4
  %305 = load %struct.mdc_chan*, %struct.mdc_chan** %9, align 8
  %306 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %306, i32 0, i32 0
  store i32 %304, i32* %307, align 8
  %308 = load %struct.mdc_chan*, %struct.mdc_chan** %9, align 8
  %309 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %308, i32 0, i32 2
  %310 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %311 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %310, i32 0, i32 4
  %312 = call i32 @vchan_init(%struct.TYPE_18__* %309, %struct.TYPE_19__* %311)
  br label %313

313:                                              ; preds = %303
  %314 = load i32, i32* %6, align 4
  %315 = add i32 %314, 1
  store i32 %315, i32* %6, align 4
  br label %252

316:                                              ; preds = %252
  %317 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %318 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %317, i32 0, i32 0
  %319 = call i32 @dev_name(%struct.TYPE_20__* %318)
  %320 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %321 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %320, i32 0, i32 0
  %322 = call i32 @dmam_pool_create(i32 %319, %struct.TYPE_20__* %321, i32 4, i32 4, i32 0)
  %323 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %324 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %323, i32 0, i32 5
  store i32 %322, i32* %324, align 8
  %325 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %326 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %316
  %330 = load i32, i32* @ENOMEM, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %2, align 4
  br label %395

332:                                              ; preds = %316
  %333 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %334 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %333, i32 0, i32 0
  %335 = call i32 @pm_runtime_enable(%struct.TYPE_20__* %334)
  %336 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %337 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %336, i32 0, i32 0
  %338 = call i32 @pm_runtime_enabled(%struct.TYPE_20__* %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %349, label %340

340:                                              ; preds = %332
  %341 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %342 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %341, i32 0, i32 0
  %343 = call i32 @img_mdc_runtime_resume(%struct.TYPE_20__* %342)
  store i32 %343, i32* %8, align 4
  %344 = load i32, i32* %8, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %340
  %347 = load i32, i32* %8, align 4
  store i32 %347, i32* %2, align 4
  br label %395

348:                                              ; preds = %340
  br label %349

349:                                              ; preds = %348, %332
  %350 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %351 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %350, i32 0, i32 4
  %352 = call i32 @dma_async_device_register(%struct.TYPE_19__* %351)
  store i32 %352, i32* %8, align 4
  %353 = load i32, i32* %8, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %349
  br label %381

356:                                              ; preds = %349
  %357 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %358 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @mdc_of_xlate, align 4
  %362 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %363 = call i32 @of_dma_controller_register(i32 %360, i32 %361, %struct.mdc_dma* %362)
  store i32 %363, i32* %8, align 4
  %364 = load i32, i32* %8, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %367

366:                                              ; preds = %356
  br label %377

367:                                              ; preds = %356
  %368 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %369 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %368, i32 0, i32 0
  %370 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %371 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %374 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @dev_info(%struct.TYPE_20__* %369, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %372, i32 %375)
  store i32 0, i32* %2, align 4
  br label %395

377:                                              ; preds = %366
  %378 = load %struct.mdc_dma*, %struct.mdc_dma** %4, align 8
  %379 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %378, i32 0, i32 4
  %380 = call i32 @dma_async_device_unregister(%struct.TYPE_19__* %379)
  br label %381

381:                                              ; preds = %377, %355
  %382 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %383 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %382, i32 0, i32 0
  %384 = call i32 @pm_runtime_enabled(%struct.TYPE_20__* %383)
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %390, label %386

386:                                              ; preds = %381
  %387 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %388 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %387, i32 0, i32 0
  %389 = call i32 @img_mdc_runtime_suspend(%struct.TYPE_20__* %388)
  br label %390

390:                                              ; preds = %386, %381
  %391 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %392 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %391, i32 0, i32 0
  %393 = call i32 @pm_runtime_disable(%struct.TYPE_20__* %392)
  %394 = load i32, i32* %8, align 4
  store i32 %394, i32* %2, align 4
  br label %395

395:                                              ; preds = %390, %367, %346, %329, %301, %280, %163, %76, %60, %42, %16
  %396 = load i32, i32* %2, align 4
  ret i32 %396
}

declare dso_local %struct.mdc_dma* @devm_kzalloc(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mdc_dma*) #1

declare dso_local i32 @of_device_get_match_data(%struct.TYPE_20__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_20__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @mdc_readl(%struct.mdc_dma*, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_20__*, i32, i32, i32, i32, %struct.mdc_chan*) #1

declare dso_local i32 @dev_name(%struct.TYPE_20__*) #1

declare dso_local i32 @vchan_init(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @dmam_pool_create(i32, %struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.TYPE_20__*) #1

declare dso_local i32 @img_mdc_runtime_resume(%struct.TYPE_20__*) #1

declare dso_local i32 @dma_async_device_register(%struct.TYPE_19__*) #1

declare dso_local i32 @of_dma_controller_register(i32, i32, %struct.mdc_dma*) #1

declare dso_local i32 @dev_info(%struct.TYPE_20__*, i8*, i32, i32) #1

declare dso_local i32 @dma_async_device_unregister(%struct.TYPE_19__*) #1

declare dso_local i32 @img_mdc_runtime_suspend(%struct.TYPE_20__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
