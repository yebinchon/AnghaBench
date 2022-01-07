; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_k3dma.c_k3_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.k3dma_soc_data = type { i32 }
%struct.k3_dma_dev = type { i32, i32, i32, i32, i64, %struct.TYPE_17__, i32, i32, i32, %struct.k3_dma_chan*, i64, %struct.k3_dma_phy*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__*, i32, i32 }
%struct.k3_dma_chan = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.k3_dma_phy = type { i32, i64 }
%struct.of_device_id = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@k3_pdma_dt_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dma-requests\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"dma-channel-mask\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"dma-channel-mask doesn't exist, considering all as available.\0A\00", align 1
@K3_FLAG_NOCLK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"no dma clk\0A\00", align 1
@k3_dma_int_handler = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@LLI_BLOCK_SIZE = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@DMA_CYCLIC = common dso_local global i32 0, align 4
@k3_dma_free_chan_resources = common dso_local global i32 0, align 4
@k3_dma_tx_status = common dso_local global i32 0, align 4
@k3_dma_prep_memcpy = common dso_local global i32 0, align 4
@k3_dma_prep_slave_sg = common dso_local global i32 0, align 4
@k3_dma_prep_dma_cyclic = common dso_local global i32 0, align 4
@k3_dma_issue_pending = common dso_local global i32 0, align 4
@k3_dma_config = common dso_local global i32 0, align 4
@k3_dma_transfer_pause = common dso_local global i32 0, align 4
@k3_dma_transfer_resume = common dso_local global i32 0, align 4
@k3_dma_terminate_all = common dso_local global i32 0, align 4
@k3_dma_synchronize = common dso_local global i32 0, align 4
@DMAENGINE_ALIGN_8_BYTES = common dso_local global i32 0, align 4
@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@k3_dma_free_desc = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"clk_prepare_enable failed: %d\0A\00", align 1
@k3_of_dma_simple_xlate = common dso_local global i32 0, align 4
@k3_dma_tasklet = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @k3_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k3_dma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.k3dma_soc_data*, align 8
  %5 = alloca %struct.k3_dma_dev*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.k3_dma_phy*, align 8
  %12 = alloca %struct.k3_dma_chan*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = load i32, i32* @IORESOURCE_MEM, align 4
  %15 = call %struct.resource* @platform_get_resource(%struct.platform_device* %13, i32 %14, i32 0)
  store %struct.resource* %15, %struct.resource** %7, align 8
  %16 = load %struct.resource*, %struct.resource** %7, align 8
  %17 = icmp ne %struct.resource* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %397

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.k3_dma_dev* @devm_kzalloc(%struct.TYPE_18__* %23, i32 136, i32 %24)
  store %struct.k3_dma_dev* %25, %struct.k3_dma_dev** %5, align 8
  %26 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %27 = icmp ne %struct.k3_dma_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %397

31:                                               ; preds = %21
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call %struct.k3dma_soc_data* @device_get_match_data(%struct.TYPE_18__* %33)
  store %struct.k3dma_soc_data* %34, %struct.k3dma_soc_data** %4, align 8
  %35 = load %struct.k3dma_soc_data*, %struct.k3dma_soc_data** %4, align 8
  %36 = icmp ne %struct.k3dma_soc_data* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %397

40:                                               ; preds = %31
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.resource*, %struct.resource** %7, align 8
  %44 = call i64 @devm_ioremap_resource(%struct.TYPE_18__* %42, %struct.resource* %43)
  %45 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %46 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %45, i32 0, i32 10
  store i64 %44, i64* %46, align 8
  %47 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %48 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %47, i32 0, i32 10
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @IS_ERR(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %54 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %53, i32 0, i32 10
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @PTR_ERR(i64 %55)
  store i32 %56, i32* %2, align 4
  br label %397

57:                                               ; preds = %40
  %58 = load i32, i32* @k3_pdma_dt_ids, align 4
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call %struct.of_device_id* @of_match_device(i32 %58, %struct.TYPE_18__* %60)
  store %struct.of_device_id* %61, %struct.of_device_id** %6, align 8
  %62 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %63 = icmp ne %struct.of_device_id* %62, null
  br i1 %63, label %64, label %95

64:                                               ; preds = %57
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %70 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %69, i32 0, i32 0
  %71 = call i32 @of_property_read_u32(i32 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %70)
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %77 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %76, i32 0, i32 1
  %78 = call i32 @of_property_read_u32(i32 %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %77)
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %84 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %83, i32 0, i32 2
  %85 = call i32 @of_property_read_u32(i32 %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %64
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_warn(%struct.TYPE_18__* %90, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %93 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %92, i32 0, i32 2
  store i32 -1, i32* %93, align 8
  br label %94

94:                                               ; preds = %88, %64
  br label %95

95:                                               ; preds = %94, %57
  %96 = load %struct.k3dma_soc_data*, %struct.k3dma_soc_data** %4, align 8
  %97 = getelementptr inbounds %struct.k3dma_soc_data, %struct.k3dma_soc_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @K3_FLAG_NOCLK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %122, label %102

102:                                              ; preds = %95
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i64 @devm_clk_get(%struct.TYPE_18__* %104, i32* null)
  %106 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %107 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %106, i32 0, i32 4
  store i64 %105, i64* %107, align 8
  %108 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %109 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @IS_ERR(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %102
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %117 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %118 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @PTR_ERR(i64 %119)
  store i32 %120, i32* %2, align 4
  br label %397

121:                                              ; preds = %102
  br label %122

122:                                              ; preds = %121, %95
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = call i32 @platform_get_irq(%struct.platform_device* %123, i32 0)
  store i32 %124, i32* %10, align 4
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @k3_dma_int_handler, align 4
  %129 = load i32, i32* @DRIVER_NAME, align 4
  %130 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %131 = call i32 @devm_request_irq(%struct.TYPE_18__* %126, i32 %127, i32 %128, i32 0, i32 %129, %struct.k3_dma_dev* %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %122
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %2, align 4
  br label %397

136:                                              ; preds = %122
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %139 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @DRIVER_NAME, align 4
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load i32, i32* @LLI_BLOCK_SIZE, align 4
  %144 = call i32 @dmam_pool_create(i32 %140, %struct.TYPE_18__* %142, i32 %143, i32 32, i32 0)
  %145 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %146 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %145, i32 0, i32 12
  store i32 %144, i32* %146, align 8
  %147 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %148 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %147, i32 0, i32 12
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %136
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %397

154:                                              ; preds = %136
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %158 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @GFP_KERNEL, align 4
  %161 = call i8* @devm_kcalloc(%struct.TYPE_18__* %156, i32 %159, i32 16, i32 %160)
  %162 = bitcast i8* %161 to %struct.k3_dma_phy*
  %163 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %164 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %163, i32 0, i32 11
  store %struct.k3_dma_phy* %162, %struct.k3_dma_phy** %164, align 8
  %165 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %166 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %165, i32 0, i32 11
  %167 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %166, align 8
  %168 = icmp eq %struct.k3_dma_phy* %167, null
  br i1 %168, label %169, label %172

169:                                              ; preds = %154
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %397

172:                                              ; preds = %154
  store i32 0, i32* %8, align 4
  br label %173

173:                                              ; preds = %207, %172
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %176 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %210

179:                                              ; preds = %173
  %180 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %181 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @BIT(i32 %183)
  %185 = and i32 %182, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %179
  br label %207

188:                                              ; preds = %179
  %189 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %190 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %189, i32 0, i32 11
  %191 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %191, i64 %193
  store %struct.k3_dma_phy* %194, %struct.k3_dma_phy** %11, align 8
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %11, align 8
  %197 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %199 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %198, i32 0, i32 10
  %200 = load i64, i64* %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = mul nsw i32 %201, 64
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %200, %203
  %205 = load %struct.k3_dma_phy*, %struct.k3_dma_phy** %11, align 8
  %206 = getelementptr inbounds %struct.k3_dma_phy, %struct.k3_dma_phy* %205, i32 0, i32 1
  store i64 %204, i64* %206, align 8
  br label %207

207:                                              ; preds = %188, %187
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %8, align 4
  br label %173

210:                                              ; preds = %173
  %211 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %212 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 14
  %214 = call i32 @INIT_LIST_HEAD(i32* %213)
  %215 = load i32, i32* @DMA_SLAVE, align 4
  %216 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %217 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 13
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @dma_cap_set(i32 %215, i32 %219)
  %221 = load i32, i32* @DMA_MEMCPY, align 4
  %222 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %223 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 13
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @dma_cap_set(i32 %221, i32 %225)
  %227 = load i32, i32* @DMA_CYCLIC, align 4
  %228 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %229 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %228, i32 0, i32 5
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 13
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @dma_cap_set(i32 %227, i32 %231)
  %233 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %234 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %233, i32 0, i32 0
  %235 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %236 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 12
  store %struct.TYPE_18__* %234, %struct.TYPE_18__** %237, align 8
  %238 = load i32, i32* @k3_dma_free_chan_resources, align 4
  %239 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %240 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 11
  store i32 %238, i32* %241, align 4
  %242 = load i32, i32* @k3_dma_tx_status, align 4
  %243 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %244 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %243, i32 0, i32 5
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 10
  store i32 %242, i32* %245, align 8
  %246 = load i32, i32* @k3_dma_prep_memcpy, align 4
  %247 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %248 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 9
  store i32 %246, i32* %249, align 4
  %250 = load i32, i32* @k3_dma_prep_slave_sg, align 4
  %251 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %252 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 8
  store i32 %250, i32* %253, align 8
  %254 = load i32, i32* @k3_dma_prep_dma_cyclic, align 4
  %255 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %256 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 7
  store i32 %254, i32* %257, align 4
  %258 = load i32, i32* @k3_dma_issue_pending, align 4
  %259 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %260 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %259, i32 0, i32 5
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 6
  store i32 %258, i32* %261, align 8
  %262 = load i32, i32* @k3_dma_config, align 4
  %263 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %264 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %263, i32 0, i32 5
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 5
  store i32 %262, i32* %265, align 4
  %266 = load i32, i32* @k3_dma_transfer_pause, align 4
  %267 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %268 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %267, i32 0, i32 5
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 4
  store i32 %266, i32* %269, align 8
  %270 = load i32, i32* @k3_dma_transfer_resume, align 4
  %271 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %272 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %271, i32 0, i32 5
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 3
  store i32 %270, i32* %273, align 4
  %274 = load i32, i32* @k3_dma_terminate_all, align 4
  %275 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %276 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 2
  store i32 %274, i32* %277, align 8
  %278 = load i32, i32* @k3_dma_synchronize, align 4
  %279 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %280 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %279, i32 0, i32 5
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 1
  store i32 %278, i32* %281, align 4
  %282 = load i32, i32* @DMAENGINE_ALIGN_8_BYTES, align 4
  %283 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %284 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %283, i32 0, i32 5
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 0
  store i32 %282, i32* %285, align 8
  %286 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %287 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %286, i32 0, i32 0
  %288 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %289 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @GFP_KERNEL, align 4
  %292 = call i8* @devm_kcalloc(%struct.TYPE_18__* %287, i32 %290, i32 12, i32 %291)
  %293 = bitcast i8* %292 to %struct.k3_dma_chan*
  %294 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %295 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %294, i32 0, i32 9
  store %struct.k3_dma_chan* %293, %struct.k3_dma_chan** %295, align 8
  %296 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %297 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %296, i32 0, i32 9
  %298 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %297, align 8
  %299 = icmp eq %struct.k3_dma_chan* %298, null
  br i1 %299, label %300, label %303

300:                                              ; preds = %210
  %301 = load i32, i32* @ENOMEM, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %2, align 4
  br label %397

303:                                              ; preds = %210
  store i32 0, i32* %8, align 4
  br label %304

304:                                              ; preds = %332, %303
  %305 = load i32, i32* %8, align 4
  %306 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %307 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = icmp slt i32 %305, %308
  br i1 %309, label %310, label %335

310:                                              ; preds = %304
  %311 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %312 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %311, i32 0, i32 9
  %313 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %312, align 8
  %314 = load i32, i32* %8, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %313, i64 %315
  store %struct.k3_dma_chan* %316, %struct.k3_dma_chan** %12, align 8
  %317 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %318 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %12, align 8
  %319 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %318, i32 0, i32 2
  store i32 %317, i32* %319, align 4
  %320 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %12, align 8
  %321 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %320, i32 0, i32 1
  %322 = call i32 @INIT_LIST_HEAD(i32* %321)
  %323 = load i32, i32* @k3_dma_free_desc, align 4
  %324 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %12, align 8
  %325 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 0
  store i32 %323, i32* %326, align 4
  %327 = load %struct.k3_dma_chan*, %struct.k3_dma_chan** %12, align 8
  %328 = getelementptr inbounds %struct.k3_dma_chan, %struct.k3_dma_chan* %327, i32 0, i32 0
  %329 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %330 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %329, i32 0, i32 5
  %331 = call i32 @vchan_init(%struct.TYPE_16__* %328, %struct.TYPE_17__* %330)
  br label %332

332:                                              ; preds = %310
  %333 = load i32, i32* %8, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %8, align 4
  br label %304

335:                                              ; preds = %304
  %336 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %337 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %336, i32 0, i32 4
  %338 = load i64, i64* %337, align 8
  %339 = call i32 @clk_prepare_enable(i64 %338)
  store i32 %339, i32* %9, align 4
  %340 = load i32, i32* %9, align 4
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %335
  %343 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %344 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %343, i32 0, i32 0
  %345 = load i32, i32* %9, align 4
  %346 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %344, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %345)
  %347 = load i32, i32* %9, align 4
  store i32 %347, i32* %2, align 4
  br label %397

348:                                              ; preds = %335
  %349 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %350 = call i32 @k3_dma_enable_dma(%struct.k3_dma_dev* %349, i32 1)
  %351 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %352 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %351, i32 0, i32 5
  %353 = call i32 @dma_async_device_register(%struct.TYPE_17__* %352)
  store i32 %353, i32* %9, align 4
  %354 = load i32, i32* %9, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %348
  br label %391

357:                                              ; preds = %348
  %358 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %359 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @k3_of_dma_simple_xlate, align 4
  %363 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %364 = call i32 @of_dma_controller_register(i32 %361, i32 %362, %struct.k3_dma_dev* %363)
  store i32 %364, i32* %9, align 4
  %365 = load i32, i32* %9, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %357
  br label %387

368:                                              ; preds = %357
  %369 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %370 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %369, i32 0, i32 8
  %371 = call i32 @spin_lock_init(i32* %370)
  %372 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %373 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %372, i32 0, i32 7
  %374 = call i32 @INIT_LIST_HEAD(i32* %373)
  %375 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %376 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %375, i32 0, i32 6
  %377 = load i32, i32* @k3_dma_tasklet, align 4
  %378 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %379 = ptrtoint %struct.k3_dma_dev* %378 to i64
  %380 = call i32 @tasklet_init(i32* %376, i32 %377, i64 %379)
  %381 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %382 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %383 = call i32 @platform_set_drvdata(%struct.platform_device* %381, %struct.k3_dma_dev* %382)
  %384 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %385 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %384, i32 0, i32 0
  %386 = call i32 @dev_info(%struct.TYPE_18__* %385, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %397

387:                                              ; preds = %367
  %388 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %389 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %388, i32 0, i32 5
  %390 = call i32 @dma_async_device_unregister(%struct.TYPE_17__* %389)
  br label %391

391:                                              ; preds = %387, %356
  %392 = load %struct.k3_dma_dev*, %struct.k3_dma_dev** %5, align 8
  %393 = getelementptr inbounds %struct.k3_dma_dev, %struct.k3_dma_dev* %392, i32 0, i32 4
  %394 = load i64, i64* %393, align 8
  %395 = call i32 @clk_disable_unprepare(i64 %394)
  %396 = load i32, i32* %9, align 4
  store i32 %396, i32* %2, align 4
  br label %397

397:                                              ; preds = %391, %368, %342, %300, %169, %151, %134, %113, %52, %37, %28, %18
  %398 = load i32, i32* %2, align 4
  ret i32 %398
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.k3_dma_dev* @devm_kzalloc(%struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.k3dma_soc_data* @device_get_match_data(%struct.TYPE_18__*) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_18__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_18__*, i32, i32, i32, i32, %struct.k3_dma_dev*) #1

declare dso_local i32 @dmam_pool_create(i32, %struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @vchan_init(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @k3_dma_enable_dma(%struct.k3_dma_dev*, i32) #1

declare dso_local i32 @dma_async_device_register(%struct.TYPE_17__*) #1

declare dso_local i32 @of_dma_controller_register(i32, i32, %struct.k3_dma_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.k3_dma_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @dma_async_device_unregister(%struct.TYPE_17__*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
