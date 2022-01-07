; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.zx_dma_dev = type { i32, i32, i64, %struct.TYPE_14__, i32, i32, %struct.zx_dma_chan*, i64, %struct.zx_dma_phy*, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__*, i32, i32 }
%struct.zx_dma_chan = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.zx_dma_phy = type { i32, i64 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dma-requests\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"no dma clk\0A\00", align 1
@zx_dma_int_handler = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@LLI_BLOCK_SIZE = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@DMA_CYCLIC = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@zx_dma_free_chan_resources = common dso_local global i32 0, align 4
@zx_dma_tx_status = common dso_local global i32 0, align 4
@zx_dma_prep_memcpy = common dso_local global i32 0, align 4
@zx_dma_prep_slave_sg = common dso_local global i32 0, align 4
@zx_dma_prep_dma_cyclic = common dso_local global i32 0, align 4
@zx_dma_issue_pending = common dso_local global i32 0, align 4
@zx_dma_config = common dso_local global i32 0, align 4
@zx_dma_terminate_all = common dso_local global i32 0, align 4
@zx_dma_transfer_pause = common dso_local global i32 0, align 4
@zx_dma_transfer_resume = common dso_local global i32 0, align 4
@DMA_ALIGN = common dso_local global i32 0, align 4
@ZX_DMA_BUSWIDTHS = common dso_local global i8* null, align 8
@DMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_RESIDUE_GRANULARITY_SEGMENT = common dso_local global i32 0, align 4
@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@zx_dma_free_desc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"clk_prepare_enable failed: %d\0A\00", align 1
@zx_of_dma_simple_xlate = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zx_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_dma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.zx_dma_dev*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zx_dma_phy*, align 8
  %9 = alloca %struct.zx_dma_chan*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %5, align 8
  %13 = load %struct.resource*, %struct.resource** %5, align 8
  %14 = icmp ne %struct.resource* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %377

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.zx_dma_dev* @devm_kzalloc(%struct.TYPE_15__* %20, i32 144, i32 %21)
  store %struct.zx_dma_dev* %22, %struct.zx_dma_dev** %4, align 8
  %23 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %24 = icmp ne %struct.zx_dma_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %377

28:                                               ; preds = %18
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.resource*, %struct.resource** %5, align 8
  %32 = call i64 @devm_ioremap_resource(%struct.TYPE_15__* %30, %struct.resource* %31)
  %33 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %34 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %33, i32 0, i32 7
  store i64 %32, i64* %34, align 8
  %35 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %36 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @IS_ERR(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %42 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @PTR_ERR(i64 %43)
  store i32 %44, i32* %2, align 4
  br label %377

45:                                               ; preds = %28
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %51 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %50, i32 0, i32 0
  %52 = call i32 @of_property_read_u32(i32 %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %51)
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %58 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %57, i32 0, i32 1
  %59 = call i32 @of_property_read_u32(i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %58)
  %60 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %61 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %45
  %65 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %66 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64, %45
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %377

72:                                               ; preds = %64
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i64 @devm_clk_get(%struct.TYPE_15__* %74, i32* null)
  %76 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %77 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %79 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @IS_ERR(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %72
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %88 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @PTR_ERR(i64 %89)
  store i32 %90, i32* %2, align 4
  br label %377

91:                                               ; preds = %72
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = call i32 @platform_get_irq(%struct.platform_device* %92, i32 0)
  %94 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %95 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 4
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %99 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @zx_dma_int_handler, align 4
  %102 = load i32, i32* @DRIVER_NAME, align 4
  %103 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %104 = call i32 @devm_request_irq(%struct.TYPE_15__* %97, i32 %100, i32 %101, i32 0, i32 %102, %struct.zx_dma_dev* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %91
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %377

109:                                              ; preds = %91
  %110 = load i32, i32* @DRIVER_NAME, align 4
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load i32, i32* @LLI_BLOCK_SIZE, align 4
  %114 = call i32 @dmam_pool_create(i32 %110, %struct.TYPE_15__* %112, i32 %113, i32 32, i32 0)
  %115 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %116 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %115, i32 0, i32 9
  store i32 %114, i32* %116, align 8
  %117 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %118 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %109
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %377

124:                                              ; preds = %109
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %128 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @GFP_KERNEL, align 4
  %131 = call i8* @devm_kcalloc(%struct.TYPE_15__* %126, i32 %129, i32 16, i32 %130)
  %132 = bitcast i8* %131 to %struct.zx_dma_phy*
  %133 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %134 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %133, i32 0, i32 8
  store %struct.zx_dma_phy* %132, %struct.zx_dma_phy** %134, align 8
  %135 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %136 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %135, i32 0, i32 8
  %137 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %136, align 8
  %138 = icmp ne %struct.zx_dma_phy* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %124
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %377

142:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %168, %142
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %146 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %171

149:                                              ; preds = %143
  %150 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %151 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %150, i32 0, i32 8
  %152 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.zx_dma_phy, %struct.zx_dma_phy* %152, i64 %154
  store %struct.zx_dma_phy* %155, %struct.zx_dma_phy** %8, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %8, align 8
  %158 = getelementptr inbounds %struct.zx_dma_phy, %struct.zx_dma_phy* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %160 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %159, i32 0, i32 7
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = mul nsw i32 %162, 64
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %161, %164
  %166 = load %struct.zx_dma_phy*, %struct.zx_dma_phy** %8, align 8
  %167 = getelementptr inbounds %struct.zx_dma_phy, %struct.zx_dma_phy* %166, i32 0, i32 1
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %149
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %143

171:                                              ; preds = %143
  %172 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %173 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 17
  %175 = call i32 @INIT_LIST_HEAD(i32* %174)
  %176 = load i32, i32* @DMA_SLAVE, align 4
  %177 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %178 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 16
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @dma_cap_set(i32 %176, i32 %180)
  %182 = load i32, i32* @DMA_MEMCPY, align 4
  %183 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %184 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 16
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @dma_cap_set(i32 %182, i32 %186)
  %188 = load i32, i32* @DMA_CYCLIC, align 4
  %189 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %190 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 16
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @dma_cap_set(i32 %188, i32 %192)
  %194 = load i32, i32* @DMA_PRIVATE, align 4
  %195 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %196 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 16
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @dma_cap_set(i32 %194, i32 %198)
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 0
  %202 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %203 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 15
  store %struct.TYPE_15__* %201, %struct.TYPE_15__** %204, align 8
  %205 = load i32, i32* @zx_dma_free_chan_resources, align 4
  %206 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %207 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 14
  store i32 %205, i32* %208, align 8
  %209 = load i32, i32* @zx_dma_tx_status, align 4
  %210 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %211 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 13
  store i32 %209, i32* %212, align 4
  %213 = load i32, i32* @zx_dma_prep_memcpy, align 4
  %214 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %215 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 12
  store i32 %213, i32* %216, align 8
  %217 = load i32, i32* @zx_dma_prep_slave_sg, align 4
  %218 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %219 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 11
  store i32 %217, i32* %220, align 4
  %221 = load i32, i32* @zx_dma_prep_dma_cyclic, align 4
  %222 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %223 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 10
  store i32 %221, i32* %224, align 8
  %225 = load i32, i32* @zx_dma_issue_pending, align 4
  %226 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %227 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 9
  store i32 %225, i32* %228, align 4
  %229 = load i32, i32* @zx_dma_config, align 4
  %230 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %231 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 8
  store i32 %229, i32* %232, align 8
  %233 = load i32, i32* @zx_dma_terminate_all, align 4
  %234 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %235 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 7
  store i32 %233, i32* %236, align 4
  %237 = load i32, i32* @zx_dma_transfer_pause, align 4
  %238 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %239 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 6
  store i32 %237, i32* %240, align 8
  %241 = load i32, i32* @zx_dma_transfer_resume, align 4
  %242 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %243 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 5
  store i32 %241, i32* %244, align 4
  %245 = load i32, i32* @DMA_ALIGN, align 4
  %246 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %247 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 4
  store i32 %245, i32* %248, align 8
  %249 = load i8*, i8** @ZX_DMA_BUSWIDTHS, align 8
  %250 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %251 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 3
  store i8* %249, i8** %252, align 8
  %253 = load i8*, i8** @ZX_DMA_BUSWIDTHS, align 8
  %254 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %255 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 2
  store i8* %253, i8** %256, align 8
  %257 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %258 = call i32 @BIT(i32 %257)
  %259 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %260 = call i32 @BIT(i32 %259)
  %261 = or i32 %258, %260
  %262 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %263 = call i32 @BIT(i32 %262)
  %264 = or i32 %261, %263
  %265 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %266 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 0
  store i32 %264, i32* %267, align 8
  %268 = load i32, i32* @DMA_RESIDUE_GRANULARITY_SEGMENT, align 4
  %269 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %270 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 1
  store i32 %268, i32* %271, align 4
  %272 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %273 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %272, i32 0, i32 0
  %274 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %275 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @GFP_KERNEL, align 4
  %278 = call i8* @devm_kcalloc(%struct.TYPE_15__* %273, i32 %276, i32 12, i32 %277)
  %279 = bitcast i8* %278 to %struct.zx_dma_chan*
  %280 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %281 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %280, i32 0, i32 6
  store %struct.zx_dma_chan* %279, %struct.zx_dma_chan** %281, align 8
  %282 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %283 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %282, i32 0, i32 6
  %284 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %283, align 8
  %285 = icmp ne %struct.zx_dma_chan* %284, null
  br i1 %285, label %289, label %286

286:                                              ; preds = %171
  %287 = load i32, i32* @ENOMEM, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %2, align 4
  br label %377

289:                                              ; preds = %171
  store i32 0, i32* %6, align 4
  br label %290

290:                                              ; preds = %318, %289
  %291 = load i32, i32* %6, align 4
  %292 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %293 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = icmp slt i32 %291, %294
  br i1 %295, label %296, label %321

296:                                              ; preds = %290
  %297 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %298 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %297, i32 0, i32 6
  %299 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %298, align 8
  %300 = load i32, i32* %6, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %299, i64 %301
  store %struct.zx_dma_chan* %302, %struct.zx_dma_chan** %9, align 8
  %303 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %304 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %9, align 8
  %305 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %304, i32 0, i32 2
  store i32 %303, i32* %305, align 4
  %306 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %9, align 8
  %307 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %306, i32 0, i32 1
  %308 = call i32 @INIT_LIST_HEAD(i32* %307)
  %309 = load i32, i32* @zx_dma_free_desc, align 4
  %310 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %9, align 8
  %311 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 0
  store i32 %309, i32* %312, align 4
  %313 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %9, align 8
  %314 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %313, i32 0, i32 0
  %315 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %316 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %315, i32 0, i32 3
  %317 = call i32 @vchan_init(%struct.TYPE_13__* %314, %struct.TYPE_14__* %316)
  br label %318

318:                                              ; preds = %296
  %319 = load i32, i32* %6, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %6, align 4
  br label %290

321:                                              ; preds = %290
  %322 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %323 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = call i32 @clk_prepare_enable(i64 %324)
  store i32 %325, i32* %7, align 4
  %326 = load i32, i32* %7, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %321
  %329 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %330 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %329, i32 0, i32 0
  %331 = load i32, i32* %7, align 4
  %332 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %330, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %331)
  br label %375

333:                                              ; preds = %321
  %334 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %335 = call i32 @zx_dma_init_state(%struct.zx_dma_dev* %334)
  %336 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %337 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %336, i32 0, i32 5
  %338 = call i32 @spin_lock_init(i32* %337)
  %339 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %340 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %339, i32 0, i32 4
  %341 = call i32 @INIT_LIST_HEAD(i32* %340)
  %342 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %343 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %344 = call i32 @platform_set_drvdata(%struct.platform_device* %342, %struct.zx_dma_dev* %343)
  %345 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %346 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %345, i32 0, i32 3
  %347 = call i32 @dma_async_device_register(%struct.TYPE_14__* %346)
  store i32 %347, i32* %7, align 4
  %348 = load i32, i32* %7, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %333
  br label %370

351:                                              ; preds = %333
  %352 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %353 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @zx_of_dma_simple_xlate, align 4
  %357 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %358 = call i32 @of_dma_controller_register(i32 %355, i32 %356, %struct.zx_dma_dev* %357)
  store i32 %358, i32* %7, align 4
  %359 = load i32, i32* %7, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %351
  br label %366

362:                                              ; preds = %351
  %363 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %364 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %363, i32 0, i32 0
  %365 = call i32 @dev_info(%struct.TYPE_15__* %364, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %377

366:                                              ; preds = %361
  %367 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %368 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %367, i32 0, i32 3
  %369 = call i32 @dma_async_device_unregister(%struct.TYPE_14__* %368)
  br label %370

370:                                              ; preds = %366, %350
  %371 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %4, align 8
  %372 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %371, i32 0, i32 2
  %373 = load i64, i64* %372, align 8
  %374 = call i32 @clk_disable_unprepare(i64 %373)
  br label %375

375:                                              ; preds = %370, %328
  %376 = load i32, i32* %7, align 4
  store i32 %376, i32* %2, align 4
  br label %377

377:                                              ; preds = %375, %362, %286, %139, %121, %107, %83, %69, %40, %25, %15
  %378 = load i32, i32* %2, align 4
  ret i32 %378
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.zx_dma_dev* @devm_kzalloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_15__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_15__*, i32, i32, i32, i32, %struct.zx_dma_dev*) #1

declare dso_local i32 @dmam_pool_create(i32, %struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vchan_init(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @zx_dma_init_state(%struct.zx_dma_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zx_dma_dev*) #1

declare dso_local i32 @dma_async_device_register(%struct.TYPE_14__*) #1

declare dso_local i32 @of_dma_controller_register(i32, i32, %struct.zx_dma_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @dma_async_device_unregister(%struct.TYPE_14__*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
