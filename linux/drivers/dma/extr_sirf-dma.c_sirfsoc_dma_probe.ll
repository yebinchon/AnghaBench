; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sirf-dma.c_sirfsoc_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sirf-dma.c_sirfsoc_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_4__*, %struct.device_node* }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }
%struct.dma_device = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.sirfsoc_dma = type { i32, i32, %struct.sirfsoc_dma_chan*, %struct.dma_device, i32, i32, i32, i32 }
%struct.sirfsoc_dma_chan = type { %struct.TYPE_6__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.dma_device* }
%struct.sirfsoc_dmadata = type { i32, i32 }
%struct.resource = type { i32 }
%struct.TYPE_5__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cell-index\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Fail to get DMAC index\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Error mapping IRQ!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to get a clock.\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Error parsing memory region!\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Error mapping memory region!\0A\00", align 1
@sirfsoc_dma_irq = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Error requesting IRQ!\0A\00", align 1
@sirfsoc_dma_alloc_chan_resources = common dso_local global i32 0, align 4
@sirfsoc_dma_free_chan_resources = common dso_local global i32 0, align 4
@sirfsoc_dma_issue_pending = common dso_local global i32 0, align 4
@sirfsoc_dma_slave_config = common dso_local global i32 0, align 4
@sirfsoc_dma_pause_chan = common dso_local global i32 0, align 4
@sirfsoc_dma_resume_chan = common dso_local global i32 0, align 4
@sirfsoc_dma_terminate_all = common dso_local global i32 0, align 4
@sirfsoc_dma_tx_status = common dso_local global i32 0, align 4
@sirfsoc_dma_prep_interleaved = common dso_local global i32 0, align 4
@sirfsoc_dma_prep_cyclic = common dso_local global i32 0, align 4
@SIRFSOC_DMA_BUSWIDTHS = common dso_local global i8* null, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_CYCLIC = common dso_local global i32 0, align 4
@DMA_INTERLEAVE = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@SIRFSOC_DMA_CHANNELS = common dso_local global i32 0, align 4
@sirfsoc_dma_tasklet = common dso_local global i32 0, align 4
@of_dma_sirfsoc_xlate = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"failed to register DMA controller\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"initialized SIRFSOC DMAC driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sirfsoc_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_dma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dma_device*, align 8
  %7 = alloca %struct.sirfsoc_dma*, align 8
  %8 = alloca %struct.sirfsoc_dma_chan*, align 8
  %9 = alloca %struct.sirfsoc_dmadata*, align 8
  %10 = alloca %struct.resource, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 1
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %4, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %5, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.sirfsoc_dma* @devm_kzalloc(%struct.device* %22, i32 112, i32 %23)
  store %struct.sirfsoc_dma* %24, %struct.sirfsoc_dma** %7, align 8
  %25 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %26 = icmp ne %struct.sirfsoc_dma* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %296

30:                                               ; preds = %1
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call %struct.TYPE_5__* @of_match_device(i32 %36, %struct.device* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.sirfsoc_dmadata*
  store %struct.sirfsoc_dmadata* %42, %struct.sirfsoc_dmadata** %9, align 8
  %43 = load %struct.sirfsoc_dmadata*, %struct.sirfsoc_dmadata** %9, align 8
  %44 = getelementptr inbounds %struct.sirfsoc_dmadata, %struct.sirfsoc_dmadata* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %47 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sirfsoc_dmadata*, %struct.sirfsoc_dmadata** %9, align 8
  %49 = getelementptr inbounds %struct.sirfsoc_dmadata, %struct.sirfsoc_dmadata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %52 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load %struct.device_node*, %struct.device_node** %4, align 8
  %54 = call i64 @of_property_read_u32(%struct.device_node* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %13)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %30
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %296

61:                                               ; preds = %30
  %62 = load %struct.device_node*, %struct.device_node** %4, align 8
  %63 = call i32 @irq_of_parse_and_map(%struct.device_node* %62, i32 0)
  %64 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %65 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %67 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %61
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %296

75:                                               ; preds = %61
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = call i32 @devm_clk_get(%struct.device* %76, i32* null)
  %78 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %79 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %81 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IS_ERR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %75
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %89 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %2, align 4
  br label %296

92:                                               ; preds = %75
  %93 = load %struct.device_node*, %struct.device_node** %4, align 8
  %94 = call i32 @of_address_to_resource(%struct.device_node* %93, i32 0, %struct.resource* %10)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.device*, %struct.device** %5, align 8
  %99 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %290

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %11, align 4
  %103 = call i32 @resource_size(%struct.resource* %10)
  store i32 %103, i32* %12, align 4
  %104 = load %struct.device*, %struct.device** %5, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @devm_ioremap(%struct.device* %104, i32 %105, i32 %106)
  %108 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %109 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %111 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %100
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %14, align 4
  br label %290

119:                                              ; preds = %100
  %120 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %121 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @DRV_NAME, align 4
  %124 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %125 = call i32 @request_irq(i32 %122, i32* @sirfsoc_dma_irq, i32 0, i32 %123, %struct.sirfsoc_dma* %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %119
  %129 = load %struct.device*, %struct.device** %5, align 8
  %130 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %14, align 4
  br label %290

133:                                              ; preds = %119
  %134 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %135 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %134, i32 0, i32 3
  store %struct.dma_device* %135, %struct.dma_device** %6, align 8
  %136 = load %struct.device*, %struct.device** %5, align 8
  %137 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %138 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %137, i32 0, i32 15
  store %struct.device* %136, %struct.device** %138, align 8
  %139 = load i32, i32* @sirfsoc_dma_alloc_chan_resources, align 4
  %140 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %141 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %140, i32 0, i32 14
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @sirfsoc_dma_free_chan_resources, align 4
  %143 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %144 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %143, i32 0, i32 13
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* @sirfsoc_dma_issue_pending, align 4
  %146 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %147 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %146, i32 0, i32 12
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @sirfsoc_dma_slave_config, align 4
  %149 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %150 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %149, i32 0, i32 11
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* @sirfsoc_dma_pause_chan, align 4
  %152 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %153 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %152, i32 0, i32 10
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @sirfsoc_dma_resume_chan, align 4
  %155 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %156 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %155, i32 0, i32 9
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* @sirfsoc_dma_terminate_all, align 4
  %158 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %159 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %158, i32 0, i32 8
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @sirfsoc_dma_tx_status, align 4
  %161 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %162 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* @sirfsoc_dma_prep_interleaved, align 4
  %164 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %165 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @sirfsoc_dma_prep_cyclic, align 4
  %167 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %168 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  %169 = load i8*, i8** @SIRFSOC_DMA_BUSWIDTHS, align 8
  %170 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %171 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %170, i32 0, i32 4
  store i8* %169, i8** %171, align 8
  %172 = load i8*, i8** @SIRFSOC_DMA_BUSWIDTHS, align 8
  %173 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %174 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %173, i32 0, i32 3
  store i8* %172, i8** %174, align 8
  %175 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %176 = call i32 @BIT(i32 %175)
  %177 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %178 = call i32 @BIT(i32 %177)
  %179 = or i32 %176, %178
  %180 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %181 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %183 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %182, i32 0, i32 1
  %184 = call i32 @INIT_LIST_HEAD(i32* %183)
  %185 = load i32, i32* @DMA_SLAVE, align 4
  %186 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %187 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @dma_cap_set(i32 %185, i32 %188)
  %190 = load i32, i32* @DMA_CYCLIC, align 4
  %191 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %192 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @dma_cap_set(i32 %190, i32 %193)
  %195 = load i32, i32* @DMA_INTERLEAVE, align 4
  %196 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %197 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @dma_cap_set(i32 %195, i32 %198)
  %200 = load i32, i32* @DMA_PRIVATE, align 4
  %201 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %202 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @dma_cap_set(i32 %200, i32 %203)
  store i32 0, i32* %15, align 4
  br label %205

205:                                              ; preds = %247, %133
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* @SIRFSOC_DMA_CHANNELS, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %250

209:                                              ; preds = %205
  %210 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %211 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %210, i32 0, i32 2
  %212 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %211, align 8
  %213 = load i32, i32* %15, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %212, i64 %214
  store %struct.sirfsoc_dma_chan* %215, %struct.sirfsoc_dma_chan** %8, align 8
  %216 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %217 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %8, align 8
  %218 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  store %struct.dma_device* %216, %struct.dma_device** %219, align 8
  %220 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %8, align 8
  %221 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %220, i32 0, i32 0
  %222 = call i32 @dma_cookie_init(%struct.TYPE_6__* %221)
  %223 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %8, align 8
  %224 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %223, i32 0, i32 6
  %225 = call i32 @INIT_LIST_HEAD(i32* %224)
  %226 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %8, align 8
  %227 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %226, i32 0, i32 5
  %228 = call i32 @INIT_LIST_HEAD(i32* %227)
  %229 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %8, align 8
  %230 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %229, i32 0, i32 4
  %231 = call i32 @INIT_LIST_HEAD(i32* %230)
  %232 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %8, align 8
  %233 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %232, i32 0, i32 3
  %234 = call i32 @INIT_LIST_HEAD(i32* %233)
  %235 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %8, align 8
  %236 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %235, i32 0, i32 2
  %237 = call i32 @INIT_LIST_HEAD(i32* %236)
  %238 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %8, align 8
  %239 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %238, i32 0, i32 1
  %240 = call i32 @spin_lock_init(i32* %239)
  %241 = load %struct.sirfsoc_dma_chan*, %struct.sirfsoc_dma_chan** %8, align 8
  %242 = getelementptr inbounds %struct.sirfsoc_dma_chan, %struct.sirfsoc_dma_chan* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %245 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %244, i32 0, i32 1
  %246 = call i32 @list_add_tail(i32* %243, i32* %245)
  br label %247

247:                                              ; preds = %209
  %248 = load i32, i32* %15, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %15, align 4
  br label %205

250:                                              ; preds = %205
  %251 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %252 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %251, i32 0, i32 1
  %253 = load i32, i32* @sirfsoc_dma_tasklet, align 4
  %254 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %255 = ptrtoint %struct.sirfsoc_dma* %254 to i64
  %256 = call i32 @tasklet_init(i32* %252, i32 %253, i64 %255)
  %257 = load %struct.device*, %struct.device** %5, align 8
  %258 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %259 = call i32 @dev_set_drvdata(%struct.device* %257, %struct.sirfsoc_dma* %258)
  %260 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %261 = call i32 @dma_async_device_register(%struct.dma_device* %260)
  store i32 %261, i32* %14, align 4
  %262 = load i32, i32* %14, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %250
  br label %284

265:                                              ; preds = %250
  %266 = load %struct.device_node*, %struct.device_node** %4, align 8
  %267 = load i32, i32* @of_dma_sirfsoc_xlate, align 4
  %268 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %269 = call i32 @of_dma_controller_register(%struct.device_node* %266, i32 %267, %struct.sirfsoc_dma* %268)
  store i32 %269, i32* %14, align 4
  %270 = load i32, i32* %14, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %265
  %273 = load %struct.device*, %struct.device** %5, align 8
  %274 = call i32 @dev_err(%struct.device* %273, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %281

275:                                              ; preds = %265
  %276 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %277 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %276, i32 0, i32 0
  %278 = call i32 @pm_runtime_enable(%struct.device* %277)
  %279 = load %struct.device*, %struct.device** %5, align 8
  %280 = call i32 @dev_info(%struct.device* %279, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %296

281:                                              ; preds = %272
  %282 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %283 = call i32 @dma_async_device_unregister(%struct.dma_device* %282)
  br label %284

284:                                              ; preds = %281, %264
  %285 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %286 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %289 = call i32 @free_irq(i32 %287, %struct.sirfsoc_dma* %288)
  br label %290

290:                                              ; preds = %284, %128, %114, %97
  %291 = load %struct.sirfsoc_dma*, %struct.sirfsoc_dma** %7, align 8
  %292 = getelementptr inbounds %struct.sirfsoc_dma, %struct.sirfsoc_dma* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @irq_dispose_mapping(i32 %293)
  %295 = load i32, i32* %14, align 4
  store i32 %295, i32* %2, align 4
  br label %296

296:                                              ; preds = %290, %275, %85, %70, %56, %27
  %297 = load i32, i32* %2, align 4
  ret i32 %297
}

declare dso_local %struct.sirfsoc_dma* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @of_match_device(i32, %struct.device*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.sirfsoc_dma*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_cookie_init(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.sirfsoc_dma*) #1

declare dso_local i32 @dma_async_device_register(%struct.dma_device*) #1

declare dso_local i32 @of_dma_controller_register(%struct.device_node*, i32, %struct.sirfsoc_dma*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dma_async_device_unregister(%struct.dma_device*) #1

declare dso_local i32 @free_irq(i32, %struct.sirfsoc_dma*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
