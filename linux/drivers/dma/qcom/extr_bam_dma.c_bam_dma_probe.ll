; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_bam_dma.c_bam_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_bam_dma.c_bam_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32* }
%struct.bam_device = type { i64, i32, i32, i32, i32*, i32, %struct.TYPE_21__*, %struct.TYPE_24__, i64, %struct.TYPE_23__*, i32, i32*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.of_device_id = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bam_of_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unsupported BAM module\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"qcom,ee\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Execution environment unspecified\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"qcom,controlled-remotely\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"num-channels\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"num-channels unspecified in dt\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"qcom,num-ees\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"num-ees unspecified in dt\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"bam_clk\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"failed to prepare/enable clock\0A\00", align 1
@dma_tasklet = common dso_local global i32 0, align 4
@bam_dma_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"bam_dma\00", align 1
@BAM_FIFO_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"cannot set maximum segment size\0A\00", align 1
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_RESIDUE_GRANULARITY_SEGMENT = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@bam_alloc_chan = common dso_local global i32 0, align 4
@bam_free_chan = common dso_local global i32 0, align 4
@bam_prep_slave_sg = common dso_local global i32 0, align 4
@bam_slave_config = common dso_local global i32 0, align 4
@bam_pause = common dso_local global i32 0, align 4
@bam_resume = common dso_local global i32 0, align 4
@bam_dma_terminate_all = common dso_local global i32 0, align 4
@bam_issue_pending = common dso_local global i32 0, align 4
@bam_tx_status = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"failed to register dma async device\0A\00", align 1
@bam_dma_xlate = common dso_local global i32 0, align 4
@BAM_DMA_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bam_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bam_dma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bam_device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.bam_device* @devm_kzalloc(%struct.TYPE_23__* %10, i32 176, i32 %11)
  store %struct.bam_device* %12, %struct.bam_device** %4, align 8
  %13 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %14 = icmp ne %struct.bam_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %432

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %22 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %21, i32 0, i32 9
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %22, align 8
  %23 = load i32, i32* @bam_of_match, align 4
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.of_device_id* @of_match_node(i32 %23, i32 %27)
  store %struct.of_device_id* %28, %struct.of_device_id** %5, align 8
  %29 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %30 = icmp ne %struct.of_device_id* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %18
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(%struct.TYPE_23__* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %432

37:                                               ; preds = %18
  %38 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %39 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %42 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %41, i32 0, i32 12
  store i32 %40, i32* %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %6, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.resource*, %struct.resource** %6, align 8
  %49 = call i32* @devm_ioremap_resource(%struct.TYPE_23__* %47, %struct.resource* %48)
  %50 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %51 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %50, i32 0, i32 11
  store i32* %49, i32** %51, align 8
  %52 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %53 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %52, i32 0, i32 11
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @IS_ERR(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %37
  %58 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %59 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %58, i32 0, i32 11
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @PTR_ERR(i32* %60)
  store i32 %61, i32* %2, align 4
  br label %432

62:                                               ; preds = %37
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = call i64 @platform_get_irq(%struct.platform_device* %63, i32 0)
  %65 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %66 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %68 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %73 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %2, align 4
  br label %432

76:                                               ; preds = %62
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %82 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %81, i32 0, i32 1
  %83 = call i32 @of_property_read_u32(i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %88 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %87, i32 0, i32 9
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %88, align 8
  %90 = call i32 @dev_err(%struct.TYPE_23__* %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %432

92:                                               ; preds = %76
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @of_property_read_bool(i32 %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %99 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %98, i32 0, i32 8
  store i64 %97, i64* %99, align 8
  %100 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %101 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %100, i32 0, i32 8
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %135

104:                                              ; preds = %92
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %110 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %109, i32 0, i32 2
  %111 = call i32 @of_property_read_u32(i32 %108, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  %115 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %116 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %115, i32 0, i32 9
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %116, align 8
  %118 = call i32 @dev_err(%struct.TYPE_23__* %117, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %119

119:                                              ; preds = %114, %104
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %125 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %124, i32 0, i32 3
  %126 = call i32 @of_property_read_u32(i32 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %119
  %130 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %131 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %130, i32 0, i32 9
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %131, align 8
  %133 = call i32 @dev_err(%struct.TYPE_23__* %132, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %134

134:                                              ; preds = %129, %119
  br label %135

135:                                              ; preds = %134, %92
  %136 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %137 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %136, i32 0, i32 9
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %137, align 8
  %139 = call i32* @devm_clk_get(%struct.TYPE_23__* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %140 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %141 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %140, i32 0, i32 4
  store i32* %139, i32** %141, align 8
  %142 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %143 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @IS_ERR(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %135
  %148 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %149 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %148, i32 0, i32 8
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %154 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @PTR_ERR(i32* %155)
  store i32 %156, i32* %2, align 4
  br label %432

157:                                              ; preds = %147
  %158 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %159 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %158, i32 0, i32 4
  store i32* null, i32** %159, align 8
  br label %160

160:                                              ; preds = %157, %135
  %161 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %162 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @clk_prepare_enable(i32* %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %160
  %168 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %169 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %168, i32 0, i32 9
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  %171 = call i32 @dev_err(%struct.TYPE_23__* %170, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %172 = load i32, i32* %7, align 4
  store i32 %172, i32* %2, align 4
  br label %432

173:                                              ; preds = %160
  %174 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %175 = call i32 @bam_init(%struct.bam_device* %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %426

179:                                              ; preds = %173
  %180 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %181 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %180, i32 0, i32 5
  %182 = load i32, i32* @dma_tasklet, align 4
  %183 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %184 = ptrtoint %struct.bam_device* %183 to i64
  %185 = call i32 @tasklet_init(i32* %181, i32 %182, i64 %184)
  %186 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %187 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %186, i32 0, i32 9
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %187, align 8
  %189 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %190 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @GFP_KERNEL, align 4
  %193 = call %struct.TYPE_21__* @devm_kcalloc(%struct.TYPE_23__* %188, i32 %191, i32 4, i32 %192)
  %194 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %195 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %194, i32 0, i32 6
  store %struct.TYPE_21__* %193, %struct.TYPE_21__** %195, align 8
  %196 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %197 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %196, i32 0, i32 6
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %197, align 8
  %199 = icmp ne %struct.TYPE_21__* %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %179
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %7, align 4
  br label %422

203:                                              ; preds = %179
  %204 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %205 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %204, i32 0, i32 7
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 15
  %207 = call i32 @INIT_LIST_HEAD(i32* %206)
  store i32 0, i32* %8, align 4
  br label %208

208:                                              ; preds = %224, %203
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %211 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %227

214:                                              ; preds = %208
  %215 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %216 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %217 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %216, i32 0, i32 6
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %217, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i64 %220
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @bam_channel_init(%struct.bam_device* %215, %struct.TYPE_21__* %221, i32 %222)
  br label %224

224:                                              ; preds = %214
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  br label %208

227:                                              ; preds = %208
  %228 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %229 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %228, i32 0, i32 9
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %229, align 8
  %231 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %232 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = trunc i64 %233 to i32
  %235 = load i32, i32* @bam_dma_irq, align 4
  %236 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %237 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %238 = call i32 @devm_request_irq(%struct.TYPE_23__* %230, i32 %234, i32 %235, i32 %236, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), %struct.bam_device* %237)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %227
  br label %401

242:                                              ; preds = %227
  %243 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %244 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %243, i32 0, i32 9
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %244, align 8
  %246 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %247 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %246, i32 0, i32 7
  %248 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %247, i32 0, i32 1
  store %struct.TYPE_23__* %245, %struct.TYPE_23__** %248, align 8
  %249 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %250 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %249, i32 0, i32 10
  %251 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %252 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %251, i32 0, i32 7
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 1
  store i32* %250, i32** %255, align 8
  %256 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %257 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %256, i32 0, i32 7
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %258, align 8
  %260 = load i32, i32* @BAM_FIFO_SIZE, align 4
  %261 = call i32 @dma_set_max_seg_size(%struct.TYPE_23__* %259, i32 %260)
  store i32 %261, i32* %7, align 4
  %262 = load i32, i32* %7, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %242
  %265 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %266 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %265, i32 0, i32 9
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %266, align 8
  %268 = call i32 @dev_err(%struct.TYPE_23__* %267, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %401

269:                                              ; preds = %242
  %270 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %271 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %272 = call i32 @platform_set_drvdata(%struct.platform_device* %270, %struct.bam_device* %271)
  %273 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %274 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %274, i32 0, i32 14
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @dma_cap_zero(i32 %276)
  %278 = load i32, i32* @DMA_SLAVE, align 4
  %279 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %280 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %279, i32 0, i32 7
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 14
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @dma_cap_set(i32 %278, i32 %282)
  %284 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %285 = call i32 @BIT(i32 %284)
  %286 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %287 = call i32 @BIT(i32 %286)
  %288 = or i32 %285, %287
  %289 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %290 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %289, i32 0, i32 7
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 0
  store i32 %288, i32* %291, align 8
  %292 = load i32, i32* @DMA_RESIDUE_GRANULARITY_SEGMENT, align 4
  %293 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %294 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %293, i32 0, i32 7
  %295 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %294, i32 0, i32 13
  store i32 %292, i32* %295, align 8
  %296 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %297 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %298 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %297, i32 0, i32 7
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 12
  store i8* %296, i8** %299, align 8
  %300 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %301 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %302 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %301, i32 0, i32 7
  %303 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %302, i32 0, i32 11
  store i8* %300, i8** %303, align 8
  %304 = load i32, i32* @bam_alloc_chan, align 4
  %305 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %306 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %305, i32 0, i32 7
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 10
  store i32 %304, i32* %307, align 8
  %308 = load i32, i32* @bam_free_chan, align 4
  %309 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %310 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %309, i32 0, i32 7
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 9
  store i32 %308, i32* %311, align 4
  %312 = load i32, i32* @bam_prep_slave_sg, align 4
  %313 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %314 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %313, i32 0, i32 7
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 8
  store i32 %312, i32* %315, align 8
  %316 = load i32, i32* @bam_slave_config, align 4
  %317 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %318 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %317, i32 0, i32 7
  %319 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %318, i32 0, i32 7
  store i32 %316, i32* %319, align 4
  %320 = load i32, i32* @bam_pause, align 4
  %321 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %322 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %321, i32 0, i32 7
  %323 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %322, i32 0, i32 6
  store i32 %320, i32* %323, align 8
  %324 = load i32, i32* @bam_resume, align 4
  %325 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %326 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %325, i32 0, i32 7
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 5
  store i32 %324, i32* %327, align 4
  %328 = load i32, i32* @bam_dma_terminate_all, align 4
  %329 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %330 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %329, i32 0, i32 7
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 4
  store i32 %328, i32* %331, align 8
  %332 = load i32, i32* @bam_issue_pending, align 4
  %333 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %334 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %333, i32 0, i32 7
  %335 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %334, i32 0, i32 3
  store i32 %332, i32* %335, align 4
  %336 = load i32, i32* @bam_tx_status, align 4
  %337 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %338 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %337, i32 0, i32 7
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 2
  store i32 %336, i32* %339, align 8
  %340 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %341 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %340, i32 0, i32 9
  %342 = load %struct.TYPE_23__*, %struct.TYPE_23__** %341, align 8
  %343 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %344 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %343, i32 0, i32 7
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i32 0, i32 1
  store %struct.TYPE_23__* %342, %struct.TYPE_23__** %345, align 8
  %346 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %347 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %346, i32 0, i32 7
  %348 = call i32 @dma_async_device_register(%struct.TYPE_24__* %347)
  store i32 %348, i32* %7, align 4
  %349 = load i32, i32* %7, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %356

351:                                              ; preds = %269
  %352 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %353 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %352, i32 0, i32 9
  %354 = load %struct.TYPE_23__*, %struct.TYPE_23__** %353, align 8
  %355 = call i32 @dev_err(%struct.TYPE_23__* %354, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %401

356:                                              ; preds = %269
  %357 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %358 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @bam_dma_xlate, align 4
  %362 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %363 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %362, i32 0, i32 7
  %364 = call i32 @of_dma_controller_register(i32 %360, i32 %361, %struct.TYPE_24__* %363)
  store i32 %364, i32* %7, align 4
  %365 = load i32, i32* %7, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %356
  br label %397

368:                                              ; preds = %356
  %369 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %370 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %369, i32 0, i32 8
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %368
  %374 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %375 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %374, i32 0, i32 0
  %376 = call i32 @pm_runtime_disable(%struct.TYPE_23__* %375)
  store i32 0, i32* %2, align 4
  br label %432

377:                                              ; preds = %368
  %378 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %379 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %378, i32 0, i32 0
  %380 = call i32 @pm_runtime_irq_safe(%struct.TYPE_23__* %379)
  %381 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %382 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %381, i32 0, i32 0
  %383 = load i32, i32* @BAM_DMA_AUTOSUSPEND_DELAY, align 4
  %384 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_23__* %382, i32 %383)
  %385 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %386 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %385, i32 0, i32 0
  %387 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_23__* %386)
  %388 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %389 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %388, i32 0, i32 0
  %390 = call i32 @pm_runtime_mark_last_busy(%struct.TYPE_23__* %389)
  %391 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %392 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %391, i32 0, i32 0
  %393 = call i32 @pm_runtime_set_active(%struct.TYPE_23__* %392)
  %394 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %395 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %394, i32 0, i32 0
  %396 = call i32 @pm_runtime_enable(%struct.TYPE_23__* %395)
  store i32 0, i32* %2, align 4
  br label %432

397:                                              ; preds = %367
  %398 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %399 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %398, i32 0, i32 7
  %400 = call i32 @dma_async_device_unregister(%struct.TYPE_24__* %399)
  br label %401

401:                                              ; preds = %397, %351, %264, %241
  store i32 0, i32* %8, align 4
  br label %402

402:                                              ; preds = %418, %401
  %403 = load i32, i32* %8, align 4
  %404 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %405 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = icmp slt i32 %403, %406
  br i1 %407, label %408, label %421

408:                                              ; preds = %402
  %409 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %410 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %409, i32 0, i32 6
  %411 = load %struct.TYPE_21__*, %struct.TYPE_21__** %410, align 8
  %412 = load i32, i32* %8, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %415, i32 0, i32 0
  %417 = call i32 @tasklet_kill(i32* %416)
  br label %418

418:                                              ; preds = %408
  %419 = load i32, i32* %8, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %8, align 4
  br label %402

421:                                              ; preds = %402
  br label %422

422:                                              ; preds = %421, %200
  %423 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %424 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %423, i32 0, i32 5
  %425 = call i32 @tasklet_kill(i32* %424)
  br label %426

426:                                              ; preds = %422, %178
  %427 = load %struct.bam_device*, %struct.bam_device** %4, align 8
  %428 = getelementptr inbounds %struct.bam_device, %struct.bam_device* %427, i32 0, i32 4
  %429 = load i32*, i32** %428, align 8
  %430 = call i32 @clk_disable_unprepare(i32* %429)
  %431 = load i32, i32* %7, align 4
  store i32 %431, i32* %2, align 4
  br label %432

432:                                              ; preds = %426, %377, %373, %167, %152, %86, %71, %57, %31, %15
  %433 = load i32, i32* %2, align 4
  ret i32 %433
}

declare dso_local %struct.bam_device* @devm_kzalloc(%struct.TYPE_23__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_23__*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.TYPE_23__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(i32, i8*) #1

declare dso_local i32* @devm_clk_get(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @bam_init(%struct.bam_device*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local %struct.TYPE_21__* @devm_kcalloc(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bam_channel_init(%struct.bam_device*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_23__*, i32, i32, i32, i8*, %struct.bam_device*) #1

declare dso_local i32 @dma_set_max_seg_size(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bam_device*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dma_async_device_register(%struct.TYPE_24__*) #1

declare dso_local i32 @of_dma_controller_register(i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_23__*) #1

declare dso_local i32 @pm_runtime_irq_safe(%struct.TYPE_23__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_23__*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.TYPE_23__*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_23__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_23__*) #1

declare dso_local i32 @dma_async_device_unregister(%struct.TYPE_24__*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
