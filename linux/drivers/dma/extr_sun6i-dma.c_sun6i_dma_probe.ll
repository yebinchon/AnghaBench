; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sun6i_dma_dev = type { i64, i32, i32, i32, i8*, i8*, i8*, %struct.TYPE_19__, %struct.TYPE_20__*, %struct.sun6i_vchan*, i8*, %struct.sun6i_pchan*, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_21__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 (%struct.sun6i_dma_dev*)*, i64, i32, i32 }
%struct.sun6i_vchan = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.sun6i_pchan = type { i32, i8* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No clock specified\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mbus\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"No mbus clock specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"No reset controller specified\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"No memory for descriptors dma pool\0A\00", align 1
@DMA_PRIVATE = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_CYCLIC = common dso_local global i32 0, align 4
@sun6i_dma_free_chan_resources = common dso_local global i32 0, align 4
@sun6i_dma_tx_status = common dso_local global i32 0, align 4
@sun6i_dma_issue_pending = common dso_local global i32 0, align 4
@sun6i_dma_prep_slave_sg = common dso_local global i32 0, align 4
@sun6i_dma_prep_dma_memcpy = common dso_local global i32 0, align 4
@sun6i_dma_prep_dma_cyclic = common dso_local global i32 0, align 4
@DMAENGINE_ALIGN_4_BYTES = common dso_local global i32 0, align 4
@sun6i_dma_config = common dso_local global i32 0, align 4
@sun6i_dma_pause = common dso_local global i32 0, align 4
@sun6i_dma_resume = common dso_local global i32 0, align 4
@sun6i_dma_terminate_all = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_RESIDUE_GRANULARITY_BURST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Can't get dma-channels.\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"dma-requests\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Missing dma-requests, using %u.\0A\00", align 1
@DMA_CHAN_MAX_DRQ_A31 = common dso_local global i32 0, align 4
@sun6i_dma_tasklet = common dso_local global i32 0, align 4
@sun6i_dma_free_desc = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"Couldn't deassert the device from reset\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Couldn't enable the clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Couldn't enable mbus clock\0A\00", align 1
@sun6i_dma_interrupt = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"Cannot request IRQ\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Failed to register DMA engine device\0A\00", align 1
@sun6i_dma_of_xlate = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"of_dma_controller_register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sun6i_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.sun6i_dma_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sun6i_pchan*, align 8
  %10 = alloca %struct.sun6i_vchan*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.sun6i_dma_dev* @devm_kzalloc(%struct.TYPE_21__* %16, i32 176, i32 %17)
  store %struct.sun6i_dma_dev* %18, %struct.sun6i_dma_dev** %5, align 8
  %19 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %20 = icmp ne %struct.sun6i_dma_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %567

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call %struct.TYPE_20__* @of_device_get_match_data(%struct.TYPE_21__* %26)
  %28 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %29 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %28, i32 0, i32 8
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %29, align 8
  %30 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %31 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %30, i32 0, i32 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %33 = icmp ne %struct.TYPE_20__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %567

37:                                               ; preds = %24
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load i32, i32* @IORESOURCE_MEM, align 4
  %40 = call %struct.resource* @platform_get_resource(%struct.platform_device* %38, i32 %39, i32 0)
  store %struct.resource* %40, %struct.resource** %6, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = call i8* @devm_ioremap_resource(%struct.TYPE_21__* %42, %struct.resource* %43)
  %45 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %46 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 8
  %47 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %48 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %47, i32 0, i32 10
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %37
  %53 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %54 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %53, i32 0, i32 10
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @PTR_ERR(i8* %55)
  store i32 %56, i32* %2, align 4
  br label %567

57:                                               ; preds = %37
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i64 @platform_get_irq(%struct.platform_device* %58, i32 0)
  %60 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %61 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %63 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %68 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %2, align 4
  br label %567

71:                                               ; preds = %57
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i8* @devm_clk_get(%struct.TYPE_21__* %73, i8* null)
  %75 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %76 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %78 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %77, i32 0, i32 5
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @IS_ERR(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %71
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_err(%struct.TYPE_21__* %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %86 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %87 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %86, i32 0, i32 5
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  store i32 %89, i32* %2, align 4
  br label %567

90:                                               ; preds = %71
  %91 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %92 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %91, i32 0, i32 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %90
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i8* @devm_clk_get(%struct.TYPE_21__* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %102 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %101, i32 0, i32 6
  store i8* %100, i8** %102, align 8
  %103 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %104 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %103, i32 0, i32 6
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @IS_ERR(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %97
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 @dev_err(%struct.TYPE_21__* %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %112 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %113 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %112, i32 0, i32 6
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @PTR_ERR(i8* %114)
  store i32 %115, i32* %2, align 4
  br label %567

116:                                              ; preds = %97
  br label %117

117:                                              ; preds = %116, %90
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i8* @devm_reset_control_get(%struct.TYPE_21__* %119, i32* null)
  %121 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %122 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %124 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %123, i32 0, i32 4
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @IS_ERR(i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %117
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 @dev_err(%struct.TYPE_21__* %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %132 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %133 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %132, i32 0, i32 4
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @PTR_ERR(i8* %134)
  store i32 %135, i32* %2, align 4
  br label %567

136:                                              ; preds = %117
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = call i32 @dev_name(%struct.TYPE_21__* %138)
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @dmam_pool_create(i32 %139, %struct.TYPE_21__* %141, i32 4, i32 4, i32 0)
  %143 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %144 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %143, i32 0, i32 15
  store i32 %142, i32* %144, align 4
  %145 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %146 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %145, i32 0, i32 15
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %136
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 @dev_err(%struct.TYPE_21__* %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %567

155:                                              ; preds = %136
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %158 = call i32 @platform_set_drvdata(%struct.platform_device* %156, %struct.sun6i_dma_dev* %157)
  %159 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %160 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %159, i32 0, i32 14
  %161 = call i32 @INIT_LIST_HEAD(i32* %160)
  %162 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %163 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %162, i32 0, i32 13
  %164 = call i32 @spin_lock_init(i32* %163)
  %165 = load i32, i32* @DMA_PRIVATE, align 4
  %166 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %167 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %166, i32 0, i32 7
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 17
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @dma_cap_set(i32 %165, i32 %169)
  %171 = load i32, i32* @DMA_MEMCPY, align 4
  %172 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %173 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %172, i32 0, i32 7
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 17
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @dma_cap_set(i32 %171, i32 %175)
  %177 = load i32, i32* @DMA_SLAVE, align 4
  %178 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %179 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 17
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @dma_cap_set(i32 %177, i32 %181)
  %183 = load i32, i32* @DMA_CYCLIC, align 4
  %184 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %185 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %184, i32 0, i32 7
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 17
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @dma_cap_set(i32 %183, i32 %187)
  %189 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %190 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %189, i32 0, i32 7
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 16
  %192 = call i32 @INIT_LIST_HEAD(i32* %191)
  %193 = load i32, i32* @sun6i_dma_free_chan_resources, align 4
  %194 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %195 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 15
  store i32 %193, i32* %196, align 4
  %197 = load i32, i32* @sun6i_dma_tx_status, align 4
  %198 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %199 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 14
  store i32 %197, i32* %200, align 8
  %201 = load i32, i32* @sun6i_dma_issue_pending, align 4
  %202 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %203 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 13
  store i32 %201, i32* %204, align 4
  %205 = load i32, i32* @sun6i_dma_prep_slave_sg, align 4
  %206 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %207 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %206, i32 0, i32 7
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 12
  store i32 %205, i32* %208, align 8
  %209 = load i32, i32* @sun6i_dma_prep_dma_memcpy, align 4
  %210 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %211 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %210, i32 0, i32 7
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 11
  store i32 %209, i32* %212, align 4
  %213 = load i32, i32* @sun6i_dma_prep_dma_cyclic, align 4
  %214 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %215 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %214, i32 0, i32 7
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 10
  store i32 %213, i32* %216, align 8
  %217 = load i32, i32* @DMAENGINE_ALIGN_4_BYTES, align 4
  %218 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %219 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %218, i32 0, i32 7
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 9
  store i32 %217, i32* %220, align 4
  %221 = load i32, i32* @sun6i_dma_config, align 4
  %222 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %223 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %222, i32 0, i32 7
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 8
  store i32 %221, i32* %224, align 8
  %225 = load i32, i32* @sun6i_dma_pause, align 4
  %226 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %227 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %226, i32 0, i32 7
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 7
  store i32 %225, i32* %228, align 4
  %229 = load i32, i32* @sun6i_dma_resume, align 4
  %230 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %231 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %230, i32 0, i32 7
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 6
  store i32 %229, i32* %232, align 8
  %233 = load i32, i32* @sun6i_dma_terminate_all, align 4
  %234 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %235 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 5
  store i32 %233, i32* %236, align 4
  %237 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %238 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %237, i32 0, i32 8
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %243 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %242, i32 0, i32 7
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 4
  store i32 %241, i32* %244, align 8
  %245 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %246 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %245, i32 0, i32 8
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %251 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %250, i32 0, i32 7
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 3
  store i32 %249, i32* %252, align 4
  %253 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %254 = call i32 @BIT(i32 %253)
  %255 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %256 = call i32 @BIT(i32 %255)
  %257 = or i32 %254, %256
  %258 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %259 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %258, i32 0, i32 7
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 0
  store i32 %257, i32* %260, align 8
  %261 = load i32, i32* @DMA_RESIDUE_GRANULARITY_BURST, align 4
  %262 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %263 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %262, i32 0, i32 7
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 2
  store i32 %261, i32* %264, align 8
  %265 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %266 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %265, i32 0, i32 0
  %267 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %268 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %267, i32 0, i32 7
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 1
  store %struct.TYPE_21__* %266, %struct.TYPE_21__** %269, align 8
  %270 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %271 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %270, i32 0, i32 8
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %276 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %275, i32 0, i32 1
  store i32 %274, i32* %276, align 8
  %277 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %278 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %277, i32 0, i32 8
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %283 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %282, i32 0, i32 2
  store i32 %281, i32* %283, align 4
  %284 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %285 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %284, i32 0, i32 8
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %290 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %289, i32 0, i32 3
  store i32 %288, i32* %290, align 8
  %291 = load %struct.device_node*, %struct.device_node** %4, align 8
  %292 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %293 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %292, i32 0, i32 1
  %294 = call i32 @of_property_read_u32(%struct.device_node* %291, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* %293)
  store i32 %294, i32* %7, align 4
  %295 = load i32, i32* %7, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %307

297:                                              ; preds = %155
  %298 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %299 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %307, label %302

302:                                              ; preds = %297
  %303 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %304 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %303, i32 0, i32 0
  %305 = call i32 @dev_err(%struct.TYPE_21__* %304, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %306 = load i32, i32* %7, align 4
  store i32 %306, i32* %2, align 4
  br label %567

307:                                              ; preds = %297, %155
  %308 = load %struct.device_node*, %struct.device_node** %4, align 8
  %309 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %310 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %309, i32 0, i32 3
  %311 = call i32 @of_property_read_u32(%struct.device_node* %308, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* %310)
  store i32 %311, i32* %7, align 4
  %312 = load i32, i32* %7, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %327

314:                                              ; preds = %307
  %315 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %316 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %327, label %319

319:                                              ; preds = %314
  %320 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %321 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %320, i32 0, i32 0
  %322 = load i32, i32* @DMA_CHAN_MAX_DRQ_A31, align 4
  %323 = call i32 @dev_info(%struct.TYPE_21__* %321, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %322)
  %324 = load i32, i32* @DMA_CHAN_MAX_DRQ_A31, align 4
  %325 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %326 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %325, i32 0, i32 3
  store i32 %324, i32* %326, align 8
  br label %327

327:                                              ; preds = %319, %314, %307
  %328 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %329 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %340, label %332

332:                                              ; preds = %327
  %333 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %334 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = add nsw i32 %335, 1
  %337 = mul nsw i32 2, %336
  %338 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %339 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %338, i32 0, i32 2
  store i32 %337, i32* %339, align 4
  br label %340

340:                                              ; preds = %332, %327
  %341 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %342 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %341, i32 0, i32 0
  %343 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %344 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* @GFP_KERNEL, align 4
  %347 = call i8* @devm_kcalloc(%struct.TYPE_21__* %342, i32 %345, i32 16, i32 %346)
  %348 = bitcast i8* %347 to %struct.sun6i_pchan*
  %349 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %350 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %349, i32 0, i32 11
  store %struct.sun6i_pchan* %348, %struct.sun6i_pchan** %350, align 8
  %351 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %352 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %351, i32 0, i32 11
  %353 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %352, align 8
  %354 = icmp ne %struct.sun6i_pchan* %353, null
  br i1 %354, label %358, label %355

355:                                              ; preds = %340
  %356 = load i32, i32* @ENOMEM, align 4
  %357 = sub nsw i32 0, %356
  store i32 %357, i32* %2, align 4
  br label %567

358:                                              ; preds = %340
  %359 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %360 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %359, i32 0, i32 0
  %361 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %362 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* @GFP_KERNEL, align 4
  %365 = call i8* @devm_kcalloc(%struct.TYPE_21__* %360, i32 %363, i32 8, i32 %364)
  %366 = bitcast i8* %365 to %struct.sun6i_vchan*
  %367 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %368 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %367, i32 0, i32 9
  store %struct.sun6i_vchan* %366, %struct.sun6i_vchan** %368, align 8
  %369 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %370 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %369, i32 0, i32 9
  %371 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %370, align 8
  %372 = icmp ne %struct.sun6i_vchan* %371, null
  br i1 %372, label %376, label %373

373:                                              ; preds = %358
  %374 = load i32, i32* @ENOMEM, align 4
  %375 = sub nsw i32 0, %374
  store i32 %375, i32* %2, align 4
  br label %567

376:                                              ; preds = %358
  %377 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %378 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %377, i32 0, i32 12
  %379 = load i32, i32* @sun6i_dma_tasklet, align 4
  %380 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %381 = ptrtoint %struct.sun6i_dma_dev* %380 to i64
  %382 = call i32 @tasklet_init(i32* %378, i32 %379, i64 %381)
  store i32 0, i32* %8, align 4
  br label %383

383:                                              ; preds = %409, %376
  %384 = load i32, i32* %8, align 4
  %385 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %386 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 8
  %388 = icmp slt i32 %384, %387
  br i1 %388, label %389, label %412

389:                                              ; preds = %383
  %390 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %391 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %390, i32 0, i32 11
  %392 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %391, align 8
  %393 = load i32, i32* %8, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %392, i64 %394
  store %struct.sun6i_pchan* %395, %struct.sun6i_pchan** %9, align 8
  %396 = load i32, i32* %8, align 4
  %397 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %9, align 8
  %398 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %397, i32 0, i32 0
  store i32 %396, i32* %398, align 8
  %399 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %400 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %399, i32 0, i32 10
  %401 = load i8*, i8** %400, align 8
  %402 = getelementptr i8, i8* %401, i64 256
  %403 = load i32, i32* %8, align 4
  %404 = mul nsw i32 %403, 64
  %405 = sext i32 %404 to i64
  %406 = getelementptr i8, i8* %402, i64 %405
  %407 = load %struct.sun6i_pchan*, %struct.sun6i_pchan** %9, align 8
  %408 = getelementptr inbounds %struct.sun6i_pchan, %struct.sun6i_pchan* %407, i32 0, i32 1
  store i8* %406, i8** %408, align 8
  br label %409

409:                                              ; preds = %389
  %410 = load i32, i32* %8, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %8, align 4
  br label %383

412:                                              ; preds = %383
  store i32 0, i32* %8, align 4
  br label %413

413:                                              ; preds = %438, %412
  %414 = load i32, i32* %8, align 4
  %415 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %416 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = icmp slt i32 %414, %417
  br i1 %418, label %419, label %441

419:                                              ; preds = %413
  %420 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %421 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %420, i32 0, i32 9
  %422 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %421, align 8
  %423 = load i32, i32* %8, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %422, i64 %424
  store %struct.sun6i_vchan* %425, %struct.sun6i_vchan** %10, align 8
  %426 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %10, align 8
  %427 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %426, i32 0, i32 1
  %428 = call i32 @INIT_LIST_HEAD(i32* %427)
  %429 = load i32, i32* @sun6i_dma_free_desc, align 4
  %430 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %10, align 8
  %431 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %431, i32 0, i32 0
  store i32 %429, i32* %432, align 4
  %433 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %10, align 8
  %434 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %433, i32 0, i32 0
  %435 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %436 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %435, i32 0, i32 7
  %437 = call i32 @vchan_init(%struct.TYPE_18__* %434, %struct.TYPE_19__* %436)
  br label %438

438:                                              ; preds = %419
  %439 = load i32, i32* %8, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %8, align 4
  br label %413

441:                                              ; preds = %413
  %442 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %443 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %442, i32 0, i32 4
  %444 = load i8*, i8** %443, align 8
  %445 = call i32 @reset_control_deassert(i8* %444)
  store i32 %445, i32* %7, align 4
  %446 = load i32, i32* %7, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %452

448:                                              ; preds = %441
  %449 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %450 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %449, i32 0, i32 0
  %451 = call i32 @dev_err(%struct.TYPE_21__* %450, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  br label %563

452:                                              ; preds = %441
  %453 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %454 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %453, i32 0, i32 5
  %455 = load i8*, i8** %454, align 8
  %456 = call i32 @clk_prepare_enable(i8* %455)
  store i32 %456, i32* %7, align 4
  %457 = load i32, i32* %7, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %463

459:                                              ; preds = %452
  %460 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %461 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %460, i32 0, i32 0
  %462 = call i32 @dev_err(%struct.TYPE_21__* %461, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %558

463:                                              ; preds = %452
  %464 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %465 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %464, i32 0, i32 8
  %466 = load %struct.TYPE_20__*, %struct.TYPE_20__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %466, i32 0, i32 4
  %468 = load i64, i64* %467, align 8
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %482

470:                                              ; preds = %463
  %471 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %472 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %471, i32 0, i32 6
  %473 = load i8*, i8** %472, align 8
  %474 = call i32 @clk_prepare_enable(i8* %473)
  store i32 %474, i32* %7, align 4
  %475 = load i32, i32* %7, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %481

477:                                              ; preds = %470
  %478 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %479 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %478, i32 0, i32 0
  %480 = call i32 @dev_err(%struct.TYPE_21__* %479, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %553

481:                                              ; preds = %470
  br label %482

482:                                              ; preds = %481, %463
  %483 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %484 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %483, i32 0, i32 0
  %485 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %486 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %485, i32 0, i32 0
  %487 = load i64, i64* %486, align 8
  %488 = trunc i64 %487 to i32
  %489 = load i32, i32* @sun6i_dma_interrupt, align 4
  %490 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %491 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %490, i32 0, i32 0
  %492 = call i32 @dev_name(%struct.TYPE_21__* %491)
  %493 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %494 = call i32 @devm_request_irq(%struct.TYPE_21__* %484, i32 %488, i32 %489, i32 0, i32 %492, %struct.sun6i_dma_dev* %493)
  store i32 %494, i32* %7, align 4
  %495 = load i32, i32* %7, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %501

497:                                              ; preds = %482
  %498 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %499 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %498, i32 0, i32 0
  %500 = call i32 @dev_err(%struct.TYPE_21__* %499, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  br label %548

501:                                              ; preds = %482
  %502 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %503 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %502, i32 0, i32 7
  %504 = call i32 @dma_async_device_register(%struct.TYPE_19__* %503)
  store i32 %504, i32* %7, align 4
  %505 = load i32, i32* %7, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %511

507:                                              ; preds = %501
  %508 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %509 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %508, i32 0, i32 0
  %510 = call i32 @dev_warn(%struct.TYPE_21__* %509, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  br label %545

511:                                              ; preds = %501
  %512 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %513 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %513, i32 0, i32 0
  %515 = load %struct.device_node*, %struct.device_node** %514, align 8
  %516 = load i32, i32* @sun6i_dma_of_xlate, align 4
  %517 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %518 = call i32 @of_dma_controller_register(%struct.device_node* %515, i32 %516, %struct.sun6i_dma_dev* %517)
  store i32 %518, i32* %7, align 4
  %519 = load i32, i32* %7, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %525

521:                                              ; preds = %511
  %522 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %523 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %522, i32 0, i32 0
  %524 = call i32 @dev_err(%struct.TYPE_21__* %523, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %541

525:                                              ; preds = %511
  %526 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %527 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %526, i32 0, i32 8
  %528 = load %struct.TYPE_20__*, %struct.TYPE_20__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %528, i32 0, i32 3
  %530 = load i32 (%struct.sun6i_dma_dev*)*, i32 (%struct.sun6i_dma_dev*)** %529, align 8
  %531 = icmp ne i32 (%struct.sun6i_dma_dev*)* %530, null
  br i1 %531, label %532, label %540

532:                                              ; preds = %525
  %533 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %534 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %533, i32 0, i32 8
  %535 = load %struct.TYPE_20__*, %struct.TYPE_20__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %535, i32 0, i32 3
  %537 = load i32 (%struct.sun6i_dma_dev*)*, i32 (%struct.sun6i_dma_dev*)** %536, align 8
  %538 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %539 = call i32 %537(%struct.sun6i_dma_dev* %538)
  br label %540

540:                                              ; preds = %532, %525
  store i32 0, i32* %2, align 4
  br label %567

541:                                              ; preds = %521
  %542 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %543 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %542, i32 0, i32 7
  %544 = call i32 @dma_async_device_unregister(%struct.TYPE_19__* %543)
  br label %545

545:                                              ; preds = %541, %507
  %546 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %547 = call i32 @sun6i_kill_tasklet(%struct.sun6i_dma_dev* %546)
  br label %548

548:                                              ; preds = %545, %497
  %549 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %550 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %549, i32 0, i32 6
  %551 = load i8*, i8** %550, align 8
  %552 = call i32 @clk_disable_unprepare(i8* %551)
  br label %553

553:                                              ; preds = %548, %477
  %554 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %555 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %554, i32 0, i32 5
  %556 = load i8*, i8** %555, align 8
  %557 = call i32 @clk_disable_unprepare(i8* %556)
  br label %558

558:                                              ; preds = %553, %459
  %559 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %560 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %559, i32 0, i32 4
  %561 = load i8*, i8** %560, align 8
  %562 = call i32 @reset_control_assert(i8* %561)
  br label %563

563:                                              ; preds = %558, %448
  %564 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %5, align 8
  %565 = call i32 @sun6i_dma_free(%struct.sun6i_dma_dev* %564)
  %566 = load i32, i32* %7, align 4
  store i32 %566, i32* %2, align 4
  br label %567

567:                                              ; preds = %563, %540, %373, %355, %302, %149, %128, %108, %82, %66, %52, %34, %21
  %568 = load i32, i32* %2, align 4
  ret i32 %568
}

declare dso_local %struct.sun6i_dma_dev* @devm_kzalloc(%struct.TYPE_21__*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @of_device_get_match_data(%struct.TYPE_21__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_21__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_21__*, i8*) #1

declare dso_local i8* @devm_reset_control_get(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @dmam_pool_create(i32, %struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_21__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sun6i_dma_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @vchan_init(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @reset_control_deassert(i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_21__*, i32, i32, i32, i32, %struct.sun6i_dma_dev*) #1

declare dso_local i32 @dma_async_device_register(%struct.TYPE_19__*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @of_dma_controller_register(%struct.device_node*, i32, %struct.sun6i_dma_dev*) #1

declare dso_local i32 @dma_async_device_unregister(%struct.TYPE_19__*) #1

declare dso_local i32 @sun6i_kill_tasklet(%struct.sun6i_dma_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @reset_control_assert(i8*) #1

declare dso_local i32 @sun6i_dma_free(%struct.sun6i_dma_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
