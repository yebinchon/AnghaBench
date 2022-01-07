; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.mmp_pdma_device = type { i32, %struct.TYPE_12__, %struct.TYPE_11__*, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_device_id = type { i32 }
%struct.mmp_dma_platdata = type { i32 }
%struct.resource = type { i32 }

@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_2_BYTES = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@mmp_pdma_dt_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"#dma-channels\00", align 1
@mmp_pdma_int_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pdma\00", align 1
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@DMA_CYCLIC = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@mmp_pdma_alloc_chan_resources = common dso_local global i32 0, align 4
@mmp_pdma_free_chan_resources = common dso_local global i32 0, align 4
@mmp_pdma_tx_status = common dso_local global i32 0, align 4
@mmp_pdma_prep_memcpy = common dso_local global i32 0, align 4
@mmp_pdma_prep_slave_sg = common dso_local global i32 0, align 4
@mmp_pdma_prep_dma_cyclic = common dso_local global i32 0, align 4
@mmp_pdma_issue_pending = common dso_local global i32 0, align 4
@mmp_pdma_config = common dso_local global i32 0, align 4
@mmp_pdma_terminate_all = common dso_local global i32 0, align 4
@DMAENGINE_ALIGN_8_BYTES = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_RESIDUE_GRANULARITY_DESCRIPTOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"unable to register\0A\00", align 1
@mmp_pdma_dma_xlate = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"of_dma_controller_register failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"initialized %d channels\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mmp_pdma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_pdma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mmp_pdma_device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.mmp_dma_platdata*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.mmp_dma_platdata* @dev_get_platdata(%struct.TYPE_11__* %15)
  store %struct.mmp_dma_platdata* %16, %struct.mmp_dma_platdata** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  %18 = load i32, i32* @DMA_SLAVE_BUSWIDTH_2_BYTES, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.mmp_pdma_device* @devm_kzalloc(%struct.TYPE_11__* %23, i32 112, i32 %24)
  store %struct.mmp_pdma_device* %25, %struct.mmp_pdma_device** %4, align 8
  %26 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %27 = icmp ne %struct.mmp_pdma_device* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %335

31:                                               ; preds = %1
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %35 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %34, i32 0, i32 2
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %35, align 8
  %36 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %37 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %36, i32 0, i32 5
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 0)
  store %struct.resource* %41, %struct.resource** %7, align 8
  %42 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %43 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %42, i32 0, i32 2
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = load %struct.resource*, %struct.resource** %7, align 8
  %46 = call i32 @devm_ioremap_resource(%struct.TYPE_11__* %44, %struct.resource* %45)
  %47 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %48 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %50 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %31
  %55 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %56 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %335

59:                                               ; preds = %31
  %60 = load i32, i32* @mmp_pdma_dt_ids, align 4
  %61 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %62 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %61, i32 0, i32 2
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = call %struct.of_device_id* @of_match_device(i32 %60, %struct.TYPE_11__* %63)
  store %struct.of_device_id* %64, %struct.of_device_id** %5, align 8
  %65 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %66 = icmp ne %struct.of_device_id* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %69 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %68, i32 0, i32 2
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @of_property_read_u32(i64 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %11)
  br label %88

74:                                               ; preds = %59
  %75 = load %struct.mmp_dma_platdata*, %struct.mmp_dma_platdata** %6, align 8
  %76 = icmp ne %struct.mmp_dma_platdata* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.mmp_dma_platdata*, %struct.mmp_dma_platdata** %6, align 8
  %79 = getelementptr inbounds %struct.mmp_dma_platdata, %struct.mmp_dma_platdata* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.mmp_dma_platdata*, %struct.mmp_dma_platdata** %6, align 8
  %84 = getelementptr inbounds %struct.mmp_dma_platdata, %struct.mmp_dma_platdata* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %11, align 4
  br label %87

86:                                               ; preds = %77, %74
  store i32 32, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %82
  br label %88

88:                                               ; preds = %87, %67
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %91 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %105, %88
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i64 @platform_get_irq(%struct.platform_device* %97, i32 %98)
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %101, %96
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %92

108:                                              ; preds = %92
  %109 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %110 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %109, i32 0, i32 2
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call i32* @devm_kcalloc(%struct.TYPE_11__* %111, i32 %112, i32 4, i32 %113)
  %115 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %116 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %115, i32 0, i32 3
  store i32* %114, i32** %116, align 8
  %117 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %118 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %108
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %335

124:                                              ; preds = %108
  %125 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %126 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 16
  %128 = call i32 @INIT_LIST_HEAD(i32* %127)
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %124
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = call i64 @platform_get_irq(%struct.platform_device* %133, i32 0)
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %10, align 4
  %136 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %137 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %136, i32 0, i32 2
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @mmp_pdma_int_handler, align 4
  %141 = load i32, i32* @IRQF_SHARED, align 4
  %142 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %143 = call i32 @devm_request_irq(%struct.TYPE_11__* %138, i32 %139, i32 %140, i32 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.mmp_pdma_device* %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %132
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %2, align 4
  br label %335

148:                                              ; preds = %132
  br label %149

149:                                              ; preds = %148, %124
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %175, %149
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %178

154:                                              ; preds = %150
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %163

159:                                              ; preds = %154
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i64 @platform_get_irq(%struct.platform_device* %160, i32 %161)
  br label %163

163:                                              ; preds = %159, %158
  %164 = phi i64 [ 0, %158 ], [ %162, %159 ]
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %10, align 4
  %166 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @mmp_pdma_chan_init(%struct.mmp_pdma_device* %166, i32 %167, i32 %168)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %163
  %173 = load i32, i32* %9, align 4
  store i32 %173, i32* %2, align 4
  br label %335

174:                                              ; preds = %163
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %150

178:                                              ; preds = %150
  %179 = load i32, i32* @DMA_SLAVE, align 4
  %180 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %181 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 15
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @dma_cap_set(i32 %179, i32 %183)
  %185 = load i32, i32* @DMA_MEMCPY, align 4
  %186 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %187 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 15
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @dma_cap_set(i32 %185, i32 %189)
  %191 = load i32, i32* @DMA_CYCLIC, align 4
  %192 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %193 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 15
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @dma_cap_set(i32 %191, i32 %195)
  %197 = load i32, i32* @DMA_PRIVATE, align 4
  %198 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %199 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 15
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @dma_cap_set(i32 %197, i32 %201)
  %203 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %204 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %203, i32 0, i32 0
  %205 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %206 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 3
  store %struct.TYPE_11__* %204, %struct.TYPE_11__** %207, align 8
  %208 = load i32, i32* @mmp_pdma_alloc_chan_resources, align 4
  %209 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %210 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 14
  store i32 %208, i32* %211, align 8
  %212 = load i32, i32* @mmp_pdma_free_chan_resources, align 4
  %213 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %214 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 13
  store i32 %212, i32* %215, align 4
  %216 = load i32, i32* @mmp_pdma_tx_status, align 4
  %217 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %218 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 12
  store i32 %216, i32* %219, align 8
  %220 = load i32, i32* @mmp_pdma_prep_memcpy, align 4
  %221 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %222 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 11
  store i32 %220, i32* %223, align 4
  %224 = load i32, i32* @mmp_pdma_prep_slave_sg, align 4
  %225 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %226 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 10
  store i32 %224, i32* %227, align 8
  %228 = load i32, i32* @mmp_pdma_prep_dma_cyclic, align 4
  %229 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %230 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 9
  store i32 %228, i32* %231, align 4
  %232 = load i32, i32* @mmp_pdma_issue_pending, align 4
  %233 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %234 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 8
  store i32 %232, i32* %235, align 8
  %236 = load i32, i32* @mmp_pdma_config, align 4
  %237 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %238 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 7
  store i32 %236, i32* %239, align 4
  %240 = load i32, i32* @mmp_pdma_terminate_all, align 4
  %241 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %242 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 6
  store i32 %240, i32* %243, align 8
  %244 = load i32, i32* @DMAENGINE_ALIGN_8_BYTES, align 4
  %245 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %246 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 5
  store i32 %244, i32* %247, align 4
  %248 = load i32, i32* %13, align 4
  %249 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %250 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  store i32 %248, i32* %251, align 8
  %252 = load i32, i32* %13, align 4
  %253 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %254 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  store i32 %252, i32* %255, align 4
  %256 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %257 = call i32 @BIT(i32 %256)
  %258 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %259 = call i32 @BIT(i32 %258)
  %260 = or i32 %257, %259
  %261 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %262 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 2
  store i32 %260, i32* %263, align 8
  %264 = load i32, i32* @DMA_RESIDUE_GRANULARITY_DESCRIPTOR, align 4
  %265 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %266 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 4
  store i32 %264, i32* %267, align 8
  %268 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %269 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %268, i32 0, i32 2
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %178
  %275 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %276 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %275, i32 0, i32 2
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %276, align 8
  %278 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %279 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %278, i32 0, i32 2
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = call i32 @dma_set_mask(%struct.TYPE_11__* %277, i64 %282)
  br label %290

284:                                              ; preds = %178
  %285 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %286 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %285, i32 0, i32 2
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %286, align 8
  %288 = call i64 @DMA_BIT_MASK(i32 64)
  %289 = call i32 @dma_set_mask(%struct.TYPE_11__* %287, i64 %288)
  br label %290

290:                                              ; preds = %284, %274
  %291 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %292 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %291, i32 0, i32 1
  %293 = call i32 @dma_async_device_register(%struct.TYPE_12__* %292)
  store i32 %293, i32* %9, align 4
  %294 = load i32, i32* %9, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %290
  %297 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %298 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 3
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %299, align 8
  %301 = call i32 @dev_err(%struct.TYPE_11__* %300, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %302 = load i32, i32* %9, align 4
  store i32 %302, i32* %2, align 4
  br label %335

303:                                              ; preds = %290
  %304 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %305 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %325

309:                                              ; preds = %303
  %310 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %311 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i32, i32* @mmp_pdma_dma_xlate, align 4
  %315 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %316 = call i32 @of_dma_controller_register(i64 %313, i32 %314, %struct.mmp_pdma_device* %315)
  store i32 %316, i32* %9, align 4
  %317 = load i32, i32* %9, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %309
  %320 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %321 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %320, i32 0, i32 0
  %322 = call i32 @dev_err(%struct.TYPE_11__* %321, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %323 = load i32, i32* %9, align 4
  store i32 %323, i32* %2, align 4
  br label %335

324:                                              ; preds = %309
  br label %325

325:                                              ; preds = %324, %303
  %326 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %327 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %328 = call i32 @platform_set_drvdata(%struct.platform_device* %326, %struct.mmp_pdma_device* %327)
  %329 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %4, align 8
  %330 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 3
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %331, align 8
  %333 = load i32, i32* %11, align 4
  %334 = call i32 @dev_info(%struct.TYPE_11__* %332, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %333)
  store i32 0, i32* %2, align 4
  br label %335

335:                                              ; preds = %325, %319, %296, %172, %146, %121, %54, %28
  %336 = load i32, i32* %2, align 4
  ret i32 %336
}

declare dso_local %struct.mmp_dma_platdata* @dev_get_platdata(%struct.TYPE_11__*) #1

declare dso_local %struct.mmp_pdma_device* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32* @devm_kcalloc(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_11__*, i32, i32, i32, i8*, %struct.mmp_pdma_device*) #1

declare dso_local i32 @mmp_pdma_chan_init(%struct.mmp_pdma_device*, i32, i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dma_set_mask(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dma_async_device_register(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @of_dma_controller_register(i64, i32, %struct.mmp_pdma_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmp_pdma_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
