; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mpc512x_dma.c_mpc_dma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mpc512x_dma.c_mpc_dma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dma_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.mpc_dma = type { i32, i8*, i8*, %struct.TYPE_4__*, i32, %struct.mpc_dma_chan*, %struct.dma_device, i32, %struct.mpc_dma_tcd* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mpc_dma_chan = type { %struct.TYPE_3__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.dma_device* }
%struct.mpc_dma_tcd = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Error mapping IRQ!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"fsl,mpc8308-dma\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Error parsing memory region!\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Error requesting memory region!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Error mapping memory region!\0A\00", align 1
@MPC_DMA_TCD_OFFSET = common dso_local global i32 0, align 4
@mpc_dma_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Error requesting IRQ!\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Error requesting IRQ2!\0A\00", align 1
@mpc_dma_alloc_chan_resources = common dso_local global i32 0, align 4
@mpc_dma_free_chan_resources = common dso_local global i32 0, align 4
@mpc_dma_issue_pending = common dso_local global i32 0, align 4
@mpc_dma_tx_status = common dso_local global i32 0, align 4
@mpc_dma_prep_memcpy = common dso_local global i32 0, align 4
@mpc_dma_prep_slave_sg = common dso_local global i32 0, align 4
@mpc_dma_device_config = common dso_local global i32 0, align 4
@mpc_dma_device_terminate_all = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@MPC8308_DMACHAN_MAX = common dso_local global i32 0, align 4
@MPC512x_DMACHAN_MAX = common dso_local global i32 0, align 4
@mpc_dma_tasklet = common dso_local global i32 0, align 4
@MPC_DMA_DMACR_ERCA = common dso_local global i32 0, align 4
@MPC_DMA_DMAGPOR_SNOOP_ENABLE = common dso_local global i32 0, align 4
@MPC_DMA_DMACR_EDCG = common dso_local global i32 0, align 4
@MPC_DMA_DMACR_ERGA = common dso_local global i32 0, align 4
@of_dma_xlate_by_chan_id = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Could not register for OF lookup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc_dma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_dma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dma_device*, align 8
  %7 = alloca %struct.mpc_dma*, align 8
  %8 = alloca %struct.mpc_dma_chan*, align 8
  %9 = alloca %struct.resource, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %4, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %5, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mpc_dma* @devm_kzalloc(%struct.device* %21, i32 112, i32 %22)
  store %struct.mpc_dma* %23, %struct.mpc_dma** %7, align 8
  %24 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %25 = icmp ne %struct.mpc_dma* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %12, align 4
  br label %409

29:                                               ; preds = %1
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = call i8* @irq_of_parse_and_map(%struct.device_node* %30, i32 0)
  %32 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %33 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %35 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %12, align 4
  br label %409

43:                                               ; preds = %29
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = call i64 @of_device_is_compatible(%struct.device_node* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %49 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.device_node*, %struct.device_node** %4, align 8
  %51 = call i8* @irq_of_parse_and_map(%struct.device_node* %50, i32 1)
  %52 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %53 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %55 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %47
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %12, align 4
  br label %404

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %43
  %65 = load %struct.device_node*, %struct.device_node** %4, align 8
  %66 = call i32 @of_address_to_resource(%struct.device_node* %65, i32 0, %struct.resource* %9)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %393

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  %75 = call i32 @resource_size(%struct.resource* %9)
  store i32 %75, i32* %11, align 4
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @DRV_NAME, align 4
  %80 = call i32 @devm_request_mem_region(%struct.device* %76, i32 %77, i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %72
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EBUSY, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  br label %393

87:                                               ; preds = %72
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call %struct.TYPE_4__* @devm_ioremap(%struct.device* %88, i32 %89, i32 %90)
  %92 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %93 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %92, i32 0, i32 3
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %93, align 8
  %94 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %95 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = icmp ne %struct.TYPE_4__* %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %87
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %12, align 4
  br label %393

103:                                              ; preds = %87
  %104 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %105 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %104, i32 0, i32 3
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = bitcast %struct.TYPE_4__* %106 to i32*
  %108 = load i32, i32* @MPC_DMA_TCD_OFFSET, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = bitcast i32* %110 to %struct.mpc_dma_tcd*
  %112 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %113 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %112, i32 0, i32 8
  store %struct.mpc_dma_tcd* %111, %struct.mpc_dma_tcd** %113, align 8
  %114 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %115 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* @DRV_NAME, align 4
  %118 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %119 = call i32 @request_irq(i8* %116, i32* @mpc_dma_irq, i32 0, i32 %117, %struct.mpc_dma* %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %103
  %123 = load %struct.device*, %struct.device** %5, align 8
  %124 = call i32 @dev_err(%struct.device* %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %12, align 4
  br label %393

127:                                              ; preds = %103
  %128 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %129 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %134 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* @DRV_NAME, align 4
  %137 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %138 = call i32 @request_irq(i8* %135, i32* @mpc_dma_irq, i32 0, i32 %136, %struct.mpc_dma* %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load %struct.device*, %struct.device** %5, align 8
  %143 = call i32 @dev_err(%struct.device* %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %12, align 4
  br label %387

146:                                              ; preds = %132
  br label %147

147:                                              ; preds = %146, %127
  %148 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %149 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %148, i32 0, i32 7
  %150 = call i32 @spin_lock_init(i32* %149)
  %151 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %152 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %151, i32 0, i32 6
  store %struct.dma_device* %152, %struct.dma_device** %6, align 8
  %153 = load %struct.device*, %struct.device** %5, align 8
  %154 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %155 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %154, i32 0, i32 10
  store %struct.device* %153, %struct.device** %155, align 8
  %156 = load i32, i32* @mpc_dma_alloc_chan_resources, align 4
  %157 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %158 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %157, i32 0, i32 9
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @mpc_dma_free_chan_resources, align 4
  %160 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %161 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %160, i32 0, i32 8
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @mpc_dma_issue_pending, align 4
  %163 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %164 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %163, i32 0, i32 7
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @mpc_dma_tx_status, align 4
  %166 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %167 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %166, i32 0, i32 6
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* @mpc_dma_prep_memcpy, align 4
  %169 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %170 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @mpc_dma_prep_slave_sg, align 4
  %172 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %173 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* @mpc_dma_device_config, align 4
  %175 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %176 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* @mpc_dma_device_terminate_all, align 4
  %178 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %179 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %181 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %180, i32 0, i32 0
  %182 = call i32 @INIT_LIST_HEAD(i32* %181)
  %183 = load i32, i32* @DMA_MEMCPY, align 4
  %184 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %185 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @dma_cap_set(i32 %183, i32 %186)
  %188 = load i32, i32* @DMA_SLAVE, align 4
  %189 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %190 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @dma_cap_set(i32 %188, i32 %191)
  %193 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %194 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %147
  %198 = load i32, i32* @MPC8308_DMACHAN_MAX, align 4
  store i32 %198, i32* %14, align 4
  br label %201

199:                                              ; preds = %147
  %200 = load i32, i32* @MPC512x_DMACHAN_MAX, align 4
  store i32 %200, i32* %14, align 4
  br label %201

201:                                              ; preds = %199, %197
  store i32 0, i32* %13, align 4
  br label %202

202:                                              ; preds = %244, %201
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %14, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %247

206:                                              ; preds = %202
  %207 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %208 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %207, i32 0, i32 5
  %209 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %208, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %209, i64 %211
  store %struct.mpc_dma_chan* %212, %struct.mpc_dma_chan** %8, align 8
  %213 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %214 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %8, align 8
  %215 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  store %struct.dma_device* %213, %struct.dma_device** %216, align 8
  %217 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %8, align 8
  %218 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %217, i32 0, i32 0
  %219 = call i32 @dma_cookie_init(%struct.TYPE_3__* %218)
  %220 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %8, align 8
  %221 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %220, i32 0, i32 6
  %222 = call i32 @INIT_LIST_HEAD(i32* %221)
  %223 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %8, align 8
  %224 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %223, i32 0, i32 5
  %225 = call i32 @INIT_LIST_HEAD(i32* %224)
  %226 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %8, align 8
  %227 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %226, i32 0, i32 4
  %228 = call i32 @INIT_LIST_HEAD(i32* %227)
  %229 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %8, align 8
  %230 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %229, i32 0, i32 3
  %231 = call i32 @INIT_LIST_HEAD(i32* %230)
  %232 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %8, align 8
  %233 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %232, i32 0, i32 2
  %234 = call i32 @INIT_LIST_HEAD(i32* %233)
  %235 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %8, align 8
  %236 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %235, i32 0, i32 1
  %237 = call i32 @spin_lock_init(i32* %236)
  %238 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %8, align 8
  %239 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 0
  %241 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %242 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %241, i32 0, i32 0
  %243 = call i32 @list_add_tail(i32* %240, i32* %242)
  br label %244

244:                                              ; preds = %206
  %245 = load i32, i32* %13, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %13, align 4
  br label %202

247:                                              ; preds = %202
  %248 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %249 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %248, i32 0, i32 4
  %250 = load i32, i32* @mpc_dma_tasklet, align 4
  %251 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %252 = ptrtoint %struct.mpc_dma* %251 to i64
  %253 = call i32 @tasklet_init(i32* %249, i32 %250, i64 %252)
  %254 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %255 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %286

258:                                              ; preds = %247
  %259 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %260 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %259, i32 0, i32 3
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 10
  %263 = load i32, i32* @MPC_DMA_DMACR_ERCA, align 4
  %264 = call i32 @out_be32(i32* %262, i32 %263)
  %265 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %266 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %265, i32 0, i32 3
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 11
  %269 = load i32, i32* @MPC_DMA_DMAGPOR_SNOOP_ENABLE, align 4
  %270 = call i32 @out_be32(i32* %268, i32 %269)
  %271 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %272 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %271, i32 0, i32 3
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 6
  %275 = call i32 @out_be32(i32* %274, i32 0)
  %276 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %277 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %276, i32 0, i32 3
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 4
  %280 = call i32 @out_be32(i32* %279, i32 65535)
  %281 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %282 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %281, i32 0, i32 3
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 2
  %285 = call i32 @out_be32(i32* %284, i32 65535)
  br label %347

286:                                              ; preds = %247
  %287 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %288 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %287, i32 0, i32 3
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 10
  %291 = load i32, i32* @MPC_DMA_DMACR_EDCG, align 4
  %292 = load i32, i32* @MPC_DMA_DMACR_ERGA, align 4
  %293 = or i32 %291, %292
  %294 = load i32, i32* @MPC_DMA_DMACR_ERCA, align 4
  %295 = or i32 %293, %294
  %296 = call i32 @out_be32(i32* %290, i32 %295)
  %297 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %298 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %297, i32 0, i32 3
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 9
  %301 = call i32 @out_be32(i32* %300, i32 0)
  %302 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %303 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %302, i32 0, i32 3
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 8
  %306 = call i32 @out_be32(i32* %305, i32 0)
  %307 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %308 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %307, i32 0, i32 3
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 7
  %311 = call i32 @out_be32(i32* %310, i32 0)
  %312 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %313 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %312, i32 0, i32 3
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 6
  %316 = call i32 @out_be32(i32* %315, i32 0)
  %317 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %318 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %317, i32 0, i32 3
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 5
  %321 = call i32 @out_be32(i32* %320, i32 -1)
  %322 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %323 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %322, i32 0, i32 3
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 4
  %326 = call i32 @out_be32(i32* %325, i32 -1)
  %327 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %328 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %327, i32 0, i32 3
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 3
  %331 = call i32 @out_be32(i32* %330, i32 -1)
  %332 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %333 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %332, i32 0, i32 3
  %334 = load %struct.TYPE_4__*, %struct.TYPE_4__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 2
  %336 = call i32 @out_be32(i32* %335, i32 -1)
  %337 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %338 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %337, i32 0, i32 3
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 1
  %341 = call i32 @out_be32(i32* %340, i32 0)
  %342 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %343 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %342, i32 0, i32 3
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 0
  %346 = call i32 @out_be32(i32* %345, i32 0)
  br label %347

347:                                              ; preds = %286, %258
  %348 = load %struct.device*, %struct.device** %5, align 8
  %349 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %350 = call i32 @dev_set_drvdata(%struct.device* %348, %struct.mpc_dma* %349)
  %351 = load %struct.dma_device*, %struct.dma_device** %6, align 8
  %352 = call i32 @dma_async_device_register(%struct.dma_device* %351)
  store i32 %352, i32* %12, align 4
  %353 = load i32, i32* %12, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %347
  br label %375

356:                                              ; preds = %347
  %357 = load %struct.device*, %struct.device** %5, align 8
  %358 = getelementptr inbounds %struct.device, %struct.device* %357, i32 0, i32 0
  %359 = load %struct.device_node*, %struct.device_node** %358, align 8
  %360 = icmp ne %struct.device_node* %359, null
  br i1 %360, label %361, label %374

361:                                              ; preds = %356
  %362 = load %struct.device*, %struct.device** %5, align 8
  %363 = getelementptr inbounds %struct.device, %struct.device* %362, i32 0, i32 0
  %364 = load %struct.device_node*, %struct.device_node** %363, align 8
  %365 = load i32, i32* @of_dma_xlate_by_chan_id, align 4
  %366 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %367 = call i32 @of_dma_controller_register(%struct.device_node* %364, i32 %365, %struct.mpc_dma* %366)
  store i32 %367, i32* %12, align 4
  %368 = load i32, i32* %12, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %373

370:                                              ; preds = %361
  %371 = load %struct.device*, %struct.device** %5, align 8
  %372 = call i32 @dev_warn(%struct.device* %371, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %373

373:                                              ; preds = %370, %361
  br label %374

374:                                              ; preds = %373, %356
  store i32 0, i32* %2, align 4
  br label %411

375:                                              ; preds = %355
  %376 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %377 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %386

380:                                              ; preds = %375
  %381 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %382 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %381, i32 0, i32 2
  %383 = load i8*, i8** %382, align 8
  %384 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %385 = call i32 @free_irq(i8* %383, %struct.mpc_dma* %384)
  br label %386

386:                                              ; preds = %380, %375
  br label %387

387:                                              ; preds = %386, %141
  %388 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %389 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %388, i32 0, i32 1
  %390 = load i8*, i8** %389, align 8
  %391 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %392 = call i32 @free_irq(i8* %390, %struct.mpc_dma* %391)
  br label %393

393:                                              ; preds = %387, %122, %98, %82, %69
  %394 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %395 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %403

398:                                              ; preds = %393
  %399 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %400 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %399, i32 0, i32 2
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 @irq_dispose_mapping(i8* %401)
  br label %403

403:                                              ; preds = %398, %393
  br label %404

404:                                              ; preds = %403, %58
  %405 = load %struct.mpc_dma*, %struct.mpc_dma** %7, align 8
  %406 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %405, i32 0, i32 1
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 @irq_dispose_mapping(i8* %407)
  br label %409

409:                                              ; preds = %404, %38, %26
  %410 = load i32, i32* %12, align 4
  store i32 %410, i32* %2, align 4
  br label %411

411:                                              ; preds = %409, %374
  %412 = load i32, i32* %2, align 4
  ret i32 %412
}

declare dso_local %struct.mpc_dma* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_request_mem_region(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @request_irq(i8*, i32*, i32, i32, %struct.mpc_dma*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_cookie_init(%struct.TYPE_3__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.mpc_dma*) #1

declare dso_local i32 @dma_async_device_register(%struct.dma_device*) #1

declare dso_local i32 @of_dma_controller_register(%struct.device_node*, i32, %struct.mpc_dma*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @free_irq(i8*, %struct.mpc_dma*) #1

declare dso_local i32 @irq_dispose_mapping(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
