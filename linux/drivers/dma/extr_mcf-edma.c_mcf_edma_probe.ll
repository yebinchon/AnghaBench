; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mcf-edma.c_mcf_edma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mcf-edma.c_mcf_edma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (%struct.platform_device*, %struct.fsl_edma_engine*)* }
%struct.platform_device = type { i32 }
%struct.fsl_edma_engine = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_11__*, %struct.fsl_edma_chan*, %struct.edma_regs, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.fsl_edma_chan = type { i32, i32, %struct.TYPE_9__, i32, %struct.fsl_edma_engine* }
%struct.TYPE_9__ = type { i32 }
%struct.edma_regs = type { i32*, i32*, i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.mcf_edma_platform_data = type { i32, i32, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"no platform data supplied\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mcf_data = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"setting default channel number to 64\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@fsl_edma_free_desc = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_CYCLIC = common dso_local global i32 0, align 4
@fsl_edma_alloc_chan_resources = common dso_local global i32 0, align 4
@fsl_edma_free_chan_resources = common dso_local global i32 0, align 4
@fsl_edma_slave_config = common dso_local global i32 0, align 4
@fsl_edma_prep_dma_cyclic = common dso_local global i32 0, align 4
@fsl_edma_prep_slave_sg = common dso_local global i32 0, align 4
@fsl_edma_tx_status = common dso_local global i32 0, align 4
@fsl_edma_pause = common dso_local global i32 0, align 4
@fsl_edma_resume = common dso_local global i32 0, align 4
@fsl_edma_terminate_all = common dso_local global i32 0, align 4
@fsl_edma_issue_pending = common dso_local global i32 0, align 4
@FSL_EDMA_BUSWIDTHS = common dso_local global i8* null, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@mcf_edma_filter_fn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Can't register Freescale eDMA engine. (%d)\0A\00", align 1
@EDMA_CR_ERGA = common dso_local global i32 0, align 4
@EDMA_CR_ERCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mcf_edma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcf_edma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mcf_edma_platform_data*, align 8
  %5 = alloca %struct.fsl_edma_engine*, align 8
  %6 = alloca %struct.fsl_edma_chan*, align 8
  %7 = alloca %struct.edma_regs*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fsl_edma_chan*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.mcf_edma_platform_data* @dev_get_platdata(i32* %15)
  store %struct.mcf_edma_platform_data* %16, %struct.mcf_edma_platform_data** %4, align 8
  %17 = load %struct.mcf_edma_platform_data*, %struct.mcf_edma_platform_data** %4, align 8
  %18 = icmp ne %struct.mcf_edma_platform_data* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %280

25:                                               ; preds = %1
  %26 = load %struct.mcf_edma_platform_data*, %struct.mcf_edma_platform_data** %4, align 8
  %27 = getelementptr inbounds %struct.mcf_edma_platform_data, %struct.mcf_edma_platform_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 24, %30
  %32 = add i64 152, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.fsl_edma_engine* @devm_kzalloc(i32* %35, i32 %36, i32 %37)
  store %struct.fsl_edma_engine* %38, %struct.fsl_edma_engine** %5, align 8
  %39 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %40 = icmp ne %struct.fsl_edma_engine* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %25
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %280

44:                                               ; preds = %25
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %47 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %49 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %48, i32 0, i32 3
  store %struct.TYPE_11__* @mcf_data, %struct.TYPE_11__** %49, align 8
  %50 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %51 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %53 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %44
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_info(i32* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %61 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %60, i32 0, i32 0
  store i32 64, i32* %61, align 8
  br label %62

62:                                               ; preds = %56, %44
  %63 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %64 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %63, i32 0, i32 7
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = load i32, i32* @IORESOURCE_MEM, align 4
  %68 = call %struct.resource* @platform_get_resource(%struct.platform_device* %66, i32 %67, i32 0)
  store %struct.resource* %68, %struct.resource** %8, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.resource*, %struct.resource** %8, align 8
  %72 = call i32 @devm_ioremap_resource(i32* %70, %struct.resource* %71)
  %73 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %74 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %76 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %62
  %81 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %82 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @PTR_ERR(i32 %83)
  store i32 %84, i32* %2, align 4
  br label %280

85:                                               ; preds = %62
  %86 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %87 = call i32 @fsl_edma_setup_regs(%struct.fsl_edma_engine* %86)
  %88 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %89 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %88, i32 0, i32 5
  store %struct.edma_regs* %89, %struct.edma_regs** %7, align 8
  %90 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %91 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 16
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %135, %85
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %97 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %138

100:                                              ; preds = %94
  %101 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %102 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %101, i32 0, i32 4
  %103 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %103, i64 %105
  store %struct.fsl_edma_chan* %106, %struct.fsl_edma_chan** %13, align 8
  %107 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %108 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %13, align 8
  %109 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %108, i32 0, i32 4
  store %struct.fsl_edma_engine* %107, %struct.fsl_edma_engine** %109, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %13, align 8
  %112 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %13, align 8
  %114 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = load i32, i32* @DMA_NONE, align 4
  %116 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %13, align 8
  %117 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @fsl_edma_free_desc, align 4
  %119 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %13, align 8
  %120 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %13, align 8
  %123 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %122, i32 0, i32 2
  %124 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %125 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %124, i32 0, i32 2
  %126 = call i32 @vchan_init(%struct.TYPE_9__* %123, %struct.TYPE_10__* %125)
  %127 = load %struct.edma_regs*, %struct.edma_regs** %7, align 8
  %128 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %127, i32 0, i32 3
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = call i32 @iowrite32(i32 0, i32* %133)
  br label %135

135:                                              ; preds = %100
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %94

138:                                              ; preds = %94
  %139 = load %struct.edma_regs*, %struct.edma_regs** %7, align 8
  %140 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @iowrite32(i32 -1, i32* %141)
  %143 = load %struct.edma_regs*, %struct.edma_regs** %7, align 8
  %144 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @iowrite32(i32 -1, i32* %145)
  %147 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %148 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %147, i32 0, i32 3
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32 (%struct.platform_device*, %struct.fsl_edma_engine*)*, i32 (%struct.platform_device*, %struct.fsl_edma_engine*)** %150, align 8
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %154 = call i32 %151(%struct.platform_device* %152, %struct.fsl_edma_engine* %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %138
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %2, align 4
  br label %280

159:                                              ; preds = %138
  %160 = load i32, i32* @DMA_PRIVATE, align 4
  %161 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %162 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 15
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @dma_cap_set(i32 %160, i32 %164)
  %166 = load i32, i32* @DMA_SLAVE, align 4
  %167 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %168 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 15
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dma_cap_set(i32 %166, i32 %170)
  %172 = load i32, i32* @DMA_CYCLIC, align 4
  %173 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %174 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 15
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @dma_cap_set(i32 %172, i32 %176)
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %181 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 14
  store i32* %179, i32** %182, align 8
  %183 = load i32, i32* @fsl_edma_alloc_chan_resources, align 4
  %184 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %185 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 13
  store i32 %183, i32* %186, align 4
  %187 = load i32, i32* @fsl_edma_free_chan_resources, align 4
  %188 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %189 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 12
  store i32 %187, i32* %190, align 8
  %191 = load i32, i32* @fsl_edma_slave_config, align 4
  %192 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %193 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 11
  store i32 %191, i32* %194, align 4
  %195 = load i32, i32* @fsl_edma_prep_dma_cyclic, align 4
  %196 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %197 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 10
  store i32 %195, i32* %198, align 8
  %199 = load i32, i32* @fsl_edma_prep_slave_sg, align 4
  %200 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %201 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 9
  store i32 %199, i32* %202, align 4
  %203 = load i32, i32* @fsl_edma_tx_status, align 4
  %204 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %205 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 8
  store i32 %203, i32* %206, align 8
  %207 = load i32, i32* @fsl_edma_pause, align 4
  %208 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %209 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 7
  store i32 %207, i32* %210, align 4
  %211 = load i32, i32* @fsl_edma_resume, align 4
  %212 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %213 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 6
  store i32 %211, i32* %214, align 8
  %215 = load i32, i32* @fsl_edma_terminate_all, align 4
  %216 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %217 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 5
  store i32 %215, i32* %218, align 4
  %219 = load i32, i32* @fsl_edma_issue_pending, align 4
  %220 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %221 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 4
  store i32 %219, i32* %222, align 8
  %223 = load i8*, i8** @FSL_EDMA_BUSWIDTHS, align 8
  %224 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %225 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 3
  store i8* %223, i8** %226, align 8
  %227 = load i8*, i8** @FSL_EDMA_BUSWIDTHS, align 8
  %228 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %229 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 2
  store i8* %227, i8** %230, align 8
  %231 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %232 = call i32 @BIT(i32 %231)
  %233 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %234 = call i32 @BIT(i32 %233)
  %235 = or i32 %232, %234
  %236 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %237 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  store i32 %235, i32* %238, align 8
  %239 = load i32, i32* @mcf_edma_filter_fn, align 4
  %240 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %241 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  store i32 %239, i32* %243, align 4
  %244 = load %struct.mcf_edma_platform_data*, %struct.mcf_edma_platform_data** %4, align 8
  %245 = getelementptr inbounds %struct.mcf_edma_platform_data, %struct.mcf_edma_platform_data* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %248 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  store i32 %246, i32* %250, align 4
  %251 = load %struct.mcf_edma_platform_data*, %struct.mcf_edma_platform_data** %4, align 8
  %252 = getelementptr inbounds %struct.mcf_edma_platform_data, %struct.mcf_edma_platform_data* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %255 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  store i32 %253, i32* %257, align 4
  %258 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %259 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %260 = call i32 @platform_set_drvdata(%struct.platform_device* %258, %struct.fsl_edma_engine* %259)
  %261 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %262 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %261, i32 0, i32 2
  %263 = call i32 @dma_async_device_register(%struct.TYPE_10__* %262)
  store i32 %263, i32* %9, align 4
  %264 = load i32, i32* %9, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %159
  %267 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %268 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %267, i32 0, i32 0
  %269 = load i32, i32* %9, align 4
  %270 = call i32 (i32*, i8*, ...) @dev_err(i32* %268, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %269)
  %271 = load i32, i32* %9, align 4
  store i32 %271, i32* %2, align 4
  br label %280

272:                                              ; preds = %159
  %273 = load i32, i32* @EDMA_CR_ERGA, align 4
  %274 = load i32, i32* @EDMA_CR_ERCA, align 4
  %275 = or i32 %273, %274
  %276 = load %struct.edma_regs*, %struct.edma_regs** %7, align 8
  %277 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = call i32 @iowrite32(i32 %275, i32* %278)
  store i32 0, i32* %2, align 4
  br label %280

280:                                              ; preds = %272, %266, %157, %80, %41, %19
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local %struct.mcf_edma_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.fsl_edma_engine* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @fsl_edma_setup_regs(%struct.fsl_edma_engine*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vchan_init(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fsl_edma_engine*) #1

declare dso_local i32 @dma_async_device_register(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
