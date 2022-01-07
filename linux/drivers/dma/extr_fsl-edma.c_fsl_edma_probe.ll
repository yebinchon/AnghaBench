; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma.c_fsl_edma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma.c_fsl_edma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { %struct.fsl_edma_drvdata* }
%struct.fsl_edma_drvdata = type { i32, i32 (%struct.platform_device*, %struct.fsl_edma_engine*)*, i64 }
%struct.fsl_edma_engine = type { i32, %struct.fsl_edma_drvdata*, %struct.TYPE_13__, %struct.fsl_edma_chan*, i32, i8**, i8**, i8*, %struct.edma_regs, i8*, i32 }
%struct.TYPE_13__ = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__*, i32, i32 }
%struct.fsl_edma_chan = type { i32, %struct.TYPE_12__, i32, i64, i32, %struct.fsl_edma_engine* }
%struct.TYPE_12__ = type { i32 }
%struct.edma_regs = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.resource = type { i32 }

@fsl_edma_dt_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to find driver data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Can't get dma-channels.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Missing DMA block clock.\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"DMA clk block failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"dmamux%d\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Missing DMAMUX block clock.\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@RUNNING = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@fsl_edma_free_desc = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_CYCLIC = common dso_local global i32 0, align 4
@fsl_edma_alloc_chan_resources = common dso_local global i32 0, align 4
@fsl_edma_free_chan_resources = common dso_local global i32 0, align 4
@fsl_edma_tx_status = common dso_local global i32 0, align 4
@fsl_edma_prep_slave_sg = common dso_local global i32 0, align 4
@fsl_edma_prep_dma_cyclic = common dso_local global i32 0, align 4
@fsl_edma_slave_config = common dso_local global i32 0, align 4
@fsl_edma_pause = common dso_local global i32 0, align 4
@fsl_edma_resume = common dso_local global i32 0, align 4
@fsl_edma_terminate_all = common dso_local global i32 0, align 4
@fsl_edma_synchronize = common dso_local global i32 0, align 4
@fsl_edma_issue_pending = common dso_local global i32 0, align 4
@FSL_EDMA_BUSWIDTHS = common dso_local global i8* null, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"Can't register Freescale eDMA engine. (%d)\0A\00", align 1
@fsl_edma_xlate = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"Can't register Freescale eDMA of_dma. (%d)\0A\00", align 1
@EDMA_CR_ERGA = common dso_local global i32 0, align 4
@EDMA_CR_ERCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_edma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_edma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.fsl_edma_engine*, align 8
  %7 = alloca %struct.fsl_edma_drvdata*, align 8
  %8 = alloca %struct.fsl_edma_chan*, align 8
  %9 = alloca %struct.edma_regs*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  %16 = alloca %struct.fsl_edma_chan*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = load i32, i32* @fsl_edma_dt_ids, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call %struct.of_device_id* @of_match_device(i32 %17, %struct.TYPE_14__* %19)
  store %struct.of_device_id* %20, %struct.of_device_id** %4, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.device_node*, %struct.device_node** %23, align 8
  store %struct.device_node* %24, %struct.device_node** %5, align 8
  store %struct.fsl_edma_drvdata* null, %struct.fsl_edma_drvdata** %7, align 8
  %25 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %26 = icmp ne %struct.of_device_id* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %29 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %28, i32 0, i32 0
  %30 = load %struct.fsl_edma_drvdata*, %struct.fsl_edma_drvdata** %29, align 8
  store %struct.fsl_edma_drvdata* %30, %struct.fsl_edma_drvdata** %7, align 8
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.fsl_edma_drvdata*, %struct.fsl_edma_drvdata** %7, align 8
  %33 = icmp ne %struct.fsl_edma_drvdata* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %452

40:                                               ; preds = %31
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = call i32 @of_property_read_u32(%struct.device_node* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %2, align 4
  br label %452

50:                                               ; preds = %40
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 40, %52
  %54 = add i64 176, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %11, align 4
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.fsl_edma_engine* @devm_kzalloc(%struct.TYPE_14__* %57, i32 %58, i32 %59)
  store %struct.fsl_edma_engine* %60, %struct.fsl_edma_engine** %6, align 8
  %61 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %62 = icmp ne %struct.fsl_edma_engine* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %50
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %452

66:                                               ; preds = %50
  %67 = load %struct.fsl_edma_drvdata*, %struct.fsl_edma_drvdata** %7, align 8
  %68 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %69 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %68, i32 0, i32 1
  store %struct.fsl_edma_drvdata* %67, %struct.fsl_edma_drvdata** %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %72 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %74 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %73, i32 0, i32 10
  %75 = call i32 @mutex_init(i32* %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = load i32, i32* @IORESOURCE_MEM, align 4
  %78 = call %struct.resource* @platform_get_resource(%struct.platform_device* %76, i32 %77, i32 0)
  store %struct.resource* %78, %struct.resource** %10, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load %struct.resource*, %struct.resource** %10, align 8
  %82 = call i8* @devm_ioremap_resource(%struct.TYPE_14__* %80, %struct.resource* %81)
  %83 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %84 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %83, i32 0, i32 9
  store i8* %82, i8** %84, align 8
  %85 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %86 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %85, i32 0, i32 9
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @IS_ERR(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %66
  %91 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %92 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %91, i32 0, i32 9
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PTR_ERR(i8* %93)
  store i32 %94, i32* %2, align 4
  br label %452

95:                                               ; preds = %66
  %96 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %97 = call i32 @fsl_edma_setup_regs(%struct.fsl_edma_engine* %96)
  %98 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %99 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %98, i32 0, i32 8
  store %struct.edma_regs* %99, %struct.edma_regs** %9, align 8
  %100 = load %struct.fsl_edma_drvdata*, %struct.fsl_edma_drvdata** %7, align 8
  %101 = getelementptr inbounds %struct.fsl_edma_drvdata, %struct.fsl_edma_drvdata* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %136

104:                                              ; preds = %95
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i8* @devm_clk_get(%struct.TYPE_14__* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %109 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %108, i32 0, i32 7
  store i8* %107, i8** %109, align 8
  %110 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %111 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %110, i32 0, i32 7
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @IS_ERR(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %104
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %119 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %120 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %119, i32 0, i32 7
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @PTR_ERR(i8* %121)
  store i32 %122, i32* %2, align 4
  br label %452

123:                                              ; preds = %104
  %124 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %125 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %124, i32 0, i32 7
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @clk_prepare_enable(i8* %126)
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %123
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* %13, align 4
  store i32 %134, i32* %2, align 4
  br label %452

135:                                              ; preds = %123
  br label %136

136:                                              ; preds = %135, %95
  store i32 0, i32* %14, align 4
  br label %137

137:                                              ; preds = %236, %136
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %140 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %139, i32 0, i32 1
  %141 = load %struct.fsl_edma_drvdata*, %struct.fsl_edma_drvdata** %140, align 8
  %142 = getelementptr inbounds %struct.fsl_edma_drvdata, %struct.fsl_edma_drvdata* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %138, %143
  br i1 %144, label %145, label %239

145:                                              ; preds = %137
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = load i32, i32* @IORESOURCE_MEM, align 4
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 1, %148
  %150 = call %struct.resource* @platform_get_resource(%struct.platform_device* %146, i32 %147, i32 %149)
  store %struct.resource* %150, %struct.resource** %10, align 8
  %151 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %152 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %151, i32 0, i32 0
  %153 = load %struct.resource*, %struct.resource** %10, align 8
  %154 = call i8* @devm_ioremap_resource(%struct.TYPE_14__* %152, %struct.resource* %153)
  %155 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %156 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %155, i32 0, i32 6
  %157 = load i8**, i8*** %156, align 8
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  store i8* %154, i8** %160, align 8
  %161 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %162 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %161, i32 0, i32 6
  %163 = load i8**, i8*** %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @IS_ERR(i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %145
  %171 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @fsl_disable_clocks(%struct.fsl_edma_engine* %171, i32 %172)
  %174 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %175 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %174, i32 0, i32 6
  %176 = load i8**, i8*** %175, align 8
  %177 = load i32, i32* %14, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @PTR_ERR(i8* %180)
  store i32 %181, i32* %2, align 4
  br label %452

182:                                              ; preds = %145
  %183 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @sprintf(i8* %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %184)
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %189 = call i8* @devm_clk_get(%struct.TYPE_14__* %187, i8* %188)
  %190 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %191 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %190, i32 0, i32 5
  %192 = load i8**, i8*** %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  store i8* %189, i8** %195, align 8
  %196 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %197 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %196, i32 0, i32 5
  %198 = load i8**, i8*** %197, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = call i64 @IS_ERR(i8* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %182
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %207, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %209 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %210 = load i32, i32* %14, align 4
  %211 = call i32 @fsl_disable_clocks(%struct.fsl_edma_engine* %209, i32 %210)
  %212 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %213 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %212, i32 0, i32 5
  %214 = load i8**, i8*** %213, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %214, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @PTR_ERR(i8* %218)
  store i32 %219, i32* %2, align 4
  br label %452

220:                                              ; preds = %182
  %221 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %222 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %221, i32 0, i32 5
  %223 = load i8**, i8*** %222, align 8
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %223, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @clk_prepare_enable(i8* %227)
  store i32 %228, i32* %13, align 4
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %220
  %232 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %233 = load i32, i32* %14, align 4
  %234 = call i32 @fsl_disable_clocks(%struct.fsl_edma_engine* %232, i32 %233)
  br label %235

235:                                              ; preds = %231, %220
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %14, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %14, align 4
  br label %137

239:                                              ; preds = %137
  %240 = load %struct.device_node*, %struct.device_node** %5, align 8
  %241 = call i32 @of_property_read_bool(%struct.device_node* %240, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %242 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %243 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %242, i32 0, i32 4
  store i32 %241, i32* %243, align 8
  %244 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %245 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 16
  %247 = call i32 @INIT_LIST_HEAD(i32* %246)
  store i32 0, i32* %14, align 4
  br label %248

248:                                              ; preds = %294, %239
  %249 = load i32, i32* %14, align 4
  %250 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %251 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp slt i32 %249, %252
  br i1 %253, label %254, label %297

254:                                              ; preds = %248
  %255 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %256 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %255, i32 0, i32 3
  %257 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %256, align 8
  %258 = load i32, i32* %14, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %257, i64 %259
  store %struct.fsl_edma_chan* %260, %struct.fsl_edma_chan** %16, align 8
  %261 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %262 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %16, align 8
  %263 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %262, i32 0, i32 5
  store %struct.fsl_edma_engine* %261, %struct.fsl_edma_engine** %263, align 8
  %264 = load i32, i32* @RUNNING, align 4
  %265 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %16, align 8
  %266 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  %267 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %16, align 8
  %268 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %267, i32 0, i32 3
  store i64 0, i64* %268, align 8
  %269 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %16, align 8
  %270 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %269, i32 0, i32 0
  store i32 1, i32* %270, align 8
  %271 = load i32, i32* @DMA_NONE, align 4
  %272 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %16, align 8
  %273 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 8
  %274 = load i32, i32* @fsl_edma_free_desc, align 4
  %275 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %16, align 8
  %276 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  store i32 %274, i32* %277, align 4
  %278 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %16, align 8
  %279 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %278, i32 0, i32 1
  %280 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %281 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %280, i32 0, i32 2
  %282 = call i32 @vchan_init(%struct.TYPE_12__* %279, %struct.TYPE_13__* %281)
  %283 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %284 = load %struct.edma_regs*, %struct.edma_regs** %9, align 8
  %285 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %284, i32 0, i32 2
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %285, align 8
  %287 = load i32, i32* %14, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  %291 = call i32 @edma_writew(%struct.fsl_edma_engine* %283, i32 0, i32* %290)
  %292 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %16, align 8
  %293 = call i32 @fsl_edma_chan_mux(%struct.fsl_edma_chan* %292, i32 0, i32 0)
  br label %294

294:                                              ; preds = %254
  %295 = load i32, i32* %14, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %14, align 4
  br label %248

297:                                              ; preds = %248
  %298 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %299 = load %struct.edma_regs*, %struct.edma_regs** %9, align 8
  %300 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @edma_writel(%struct.fsl_edma_engine* %298, i32 -1, i32 %301)
  %303 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %304 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %303, i32 0, i32 1
  %305 = load %struct.fsl_edma_drvdata*, %struct.fsl_edma_drvdata** %304, align 8
  %306 = getelementptr inbounds %struct.fsl_edma_drvdata, %struct.fsl_edma_drvdata* %305, i32 0, i32 1
  %307 = load i32 (%struct.platform_device*, %struct.fsl_edma_engine*)*, i32 (%struct.platform_device*, %struct.fsl_edma_engine*)** %306, align 8
  %308 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %309 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %310 = call i32 %307(%struct.platform_device* %308, %struct.fsl_edma_engine* %309)
  store i32 %310, i32* %13, align 4
  %311 = load i32, i32* %13, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %297
  %314 = load i32, i32* %13, align 4
  store i32 %314, i32* %2, align 4
  br label %452

315:                                              ; preds = %297
  %316 = load i32, i32* @DMA_PRIVATE, align 4
  %317 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %318 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 15
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @dma_cap_set(i32 %316, i32 %320)
  %322 = load i32, i32* @DMA_SLAVE, align 4
  %323 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %324 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i32 0, i32 15
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @dma_cap_set(i32 %322, i32 %326)
  %328 = load i32, i32* @DMA_CYCLIC, align 4
  %329 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %330 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 15
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @dma_cap_set(i32 %328, i32 %332)
  %334 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %335 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %334, i32 0, i32 0
  %336 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %337 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 14
  store %struct.TYPE_14__* %335, %struct.TYPE_14__** %338, align 8
  %339 = load i32, i32* @fsl_edma_alloc_chan_resources, align 4
  %340 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %341 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 13
  store i32 %339, i32* %342, align 8
  %343 = load i32, i32* @fsl_edma_free_chan_resources, align 4
  %344 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %345 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 12
  store i32 %343, i32* %346, align 4
  %347 = load i32, i32* @fsl_edma_tx_status, align 4
  %348 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %349 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 11
  store i32 %347, i32* %350, align 8
  %351 = load i32, i32* @fsl_edma_prep_slave_sg, align 4
  %352 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %353 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 10
  store i32 %351, i32* %354, align 4
  %355 = load i32, i32* @fsl_edma_prep_dma_cyclic, align 4
  %356 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %357 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 9
  store i32 %355, i32* %358, align 8
  %359 = load i32, i32* @fsl_edma_slave_config, align 4
  %360 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %361 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 8
  store i32 %359, i32* %362, align 4
  %363 = load i32, i32* @fsl_edma_pause, align 4
  %364 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %365 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %364, i32 0, i32 2
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 7
  store i32 %363, i32* %366, align 8
  %367 = load i32, i32* @fsl_edma_resume, align 4
  %368 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %369 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %369, i32 0, i32 6
  store i32 %367, i32* %370, align 4
  %371 = load i32, i32* @fsl_edma_terminate_all, align 4
  %372 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %373 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 5
  store i32 %371, i32* %374, align 8
  %375 = load i32, i32* @fsl_edma_synchronize, align 4
  %376 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %377 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 4
  store i32 %375, i32* %378, align 4
  %379 = load i32, i32* @fsl_edma_issue_pending, align 4
  %380 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %381 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i32 0, i32 3
  store i32 %379, i32* %382, align 8
  %383 = load i8*, i8** @FSL_EDMA_BUSWIDTHS, align 8
  %384 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %385 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 2
  store i8* %383, i8** %386, align 8
  %387 = load i8*, i8** @FSL_EDMA_BUSWIDTHS, align 8
  %388 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %389 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %388, i32 0, i32 2
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i32 0, i32 1
  store i8* %387, i8** %390, align 8
  %391 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %392 = call i32 @BIT(i32 %391)
  %393 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %394 = call i32 @BIT(i32 %393)
  %395 = or i32 %392, %394
  %396 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %397 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %396, i32 0, i32 2
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i32 0, i32 0
  store i32 %395, i32* %398, align 8
  %399 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %400 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %401 = call i32 @platform_set_drvdata(%struct.platform_device* %399, %struct.fsl_edma_engine* %400)
  %402 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %403 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %402, i32 0, i32 2
  %404 = call i32 @dma_async_device_register(%struct.TYPE_13__* %403)
  store i32 %404, i32* %13, align 4
  %405 = load i32, i32* %13, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %420

407:                                              ; preds = %315
  %408 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %409 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %408, i32 0, i32 0
  %410 = load i32, i32* %13, align 4
  %411 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %409, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %410)
  %412 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %413 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %414 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %413, i32 0, i32 1
  %415 = load %struct.fsl_edma_drvdata*, %struct.fsl_edma_drvdata** %414, align 8
  %416 = getelementptr inbounds %struct.fsl_edma_drvdata, %struct.fsl_edma_drvdata* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = call i32 @fsl_disable_clocks(%struct.fsl_edma_engine* %412, i32 %417)
  %419 = load i32, i32* %13, align 4
  store i32 %419, i32* %2, align 4
  br label %452

420:                                              ; preds = %315
  %421 = load %struct.device_node*, %struct.device_node** %5, align 8
  %422 = load i32, i32* @fsl_edma_xlate, align 4
  %423 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %424 = call i32 @of_dma_controller_register(%struct.device_node* %421, i32 %422, %struct.fsl_edma_engine* %423)
  store i32 %424, i32* %13, align 4
  %425 = load i32, i32* %13, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %443

427:                                              ; preds = %420
  %428 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %429 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %428, i32 0, i32 0
  %430 = load i32, i32* %13, align 4
  %431 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %429, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %430)
  %432 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %433 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %432, i32 0, i32 2
  %434 = call i32 @dma_async_device_unregister(%struct.TYPE_13__* %433)
  %435 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %436 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %437 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %436, i32 0, i32 1
  %438 = load %struct.fsl_edma_drvdata*, %struct.fsl_edma_drvdata** %437, align 8
  %439 = getelementptr inbounds %struct.fsl_edma_drvdata, %struct.fsl_edma_drvdata* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = call i32 @fsl_disable_clocks(%struct.fsl_edma_engine* %435, i32 %440)
  %442 = load i32, i32* %13, align 4
  store i32 %442, i32* %2, align 4
  br label %452

443:                                              ; preds = %420
  %444 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %6, align 8
  %445 = load i32, i32* @EDMA_CR_ERGA, align 4
  %446 = load i32, i32* @EDMA_CR_ERCA, align 4
  %447 = or i32 %445, %446
  %448 = load %struct.edma_regs*, %struct.edma_regs** %9, align 8
  %449 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = call i32 @edma_writel(%struct.fsl_edma_engine* %444, i32 %447, i32 %450)
  store i32 0, i32* %2, align 4
  br label %452

452:                                              ; preds = %443, %427, %407, %313, %205, %170, %130, %115, %90, %63, %45, %34
  %453 = load i32, i32* %2, align 4
  ret i32 %453
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.fsl_edma_engine* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_14__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @fsl_edma_setup_regs(%struct.fsl_edma_engine*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @fsl_disable_clocks(%struct.fsl_edma_engine*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vchan_init(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @edma_writew(%struct.fsl_edma_engine*, i32, i32*) #1

declare dso_local i32 @fsl_edma_chan_mux(%struct.fsl_edma_chan*, i32, i32) #1

declare dso_local i32 @edma_writel(%struct.fsl_edma_engine*, i32, i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fsl_edma_engine*) #1

declare dso_local i32 @dma_async_device_register(%struct.TYPE_13__*) #1

declare dso_local i32 @of_dma_controller_register(%struct.device_node*, i32, %struct.fsl_edma_engine*) #1

declare dso_local i32 @dma_async_device_unregister(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
