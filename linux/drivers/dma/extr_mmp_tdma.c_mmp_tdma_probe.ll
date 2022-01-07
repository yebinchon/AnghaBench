; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_tdma.c_mmp_tdma_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.of_device_id = type { i64 }
%struct.mmp_tdma_device = type { %struct.TYPE_12__, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }
%struct.gen_pool = type { i32 }
%struct.TYPE_10__ = type { i32 }

@TDMA_CHANNEL_NUM = common dso_local global i32 0, align 4
@mmp_tdma_dt_ids = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"asram\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"asram pool not available\0A\00", align 1
@mmp_tdma_int_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"tdma\00", align 1
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_CYCLIC = common dso_local global i32 0, align 4
@mmp_tdma_alloc_chan_resources = common dso_local global i32 0, align 4
@mmp_tdma_free_chan_resources = common dso_local global i32 0, align 4
@mmp_tdma_prep_dma_cyclic = common dso_local global i32 0, align 4
@mmp_tdma_tx_status = common dso_local global i32 0, align 4
@mmp_tdma_issue_pending = common dso_local global i32 0, align 4
@mmp_tdma_config = common dso_local global i32 0, align 4
@mmp_tdma_pause_chan = common dso_local global i32 0, align 4
@mmp_tdma_resume_chan = common dso_local global i32 0, align 4
@mmp_tdma_terminate_all = common dso_local global i32 0, align 4
@DMAENGINE_ALIGN_8_BYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"unable to register\0A\00", align 1
@mmp_tdma_xlate = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to register controller\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mmp_tdma_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_tdma_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.mmp_tdma_device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gen_pool*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @TDMA_CHANNEL_NUM, align 4
  store i32 %14, i32* %12, align 4
  store %struct.gen_pool* null, %struct.gen_pool** %13, align 8
  %15 = load i32, i32* @mmp_tdma_dt_ids, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call %struct.of_device_id* @of_match_device(i32 %15, %struct.TYPE_11__* %17)
  store %struct.of_device_id* %18, %struct.of_device_id** %5, align 8
  %19 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %20 = icmp ne %struct.of_device_id* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %23 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call %struct.TYPE_10__* @platform_get_device_id(%struct.platform_device* %27)
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.mmp_tdma_device* @devm_kzalloc(%struct.TYPE_11__* %33, i32 72, i32 %34)
  store %struct.mmp_tdma_device* %35, %struct.mmp_tdma_device** %6, align 8
  %36 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %37 = icmp ne %struct.mmp_tdma_device* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %266

41:                                               ; preds = %31
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %45 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %44, i32 0, i32 2
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %45, align 8
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %59, %41
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @platform_get_irq(%struct.platform_device* %51, i32 %52)
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %46

62:                                               ; preds = %46
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = load i32, i32* @IORESOURCE_MEM, align 4
  %65 = call %struct.resource* @platform_get_resource(%struct.platform_device* %63, i32 %64, i32 0)
  store %struct.resource* %65, %struct.resource** %7, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load %struct.resource*, %struct.resource** %7, align 8
  %69 = call i32 @devm_ioremap_resource(%struct.TYPE_11__* %67, %struct.resource* %68)
  %70 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %71 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %73 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @IS_ERR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %62
  %78 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %79 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @PTR_ERR(i32 %80)
  store i32 %81, i32* %2, align 4
  br label %266

82:                                               ; preds = %62
  %83 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %84 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 12
  %86 = call i32 @INIT_LIST_HEAD(i32* %85)
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call %struct.gen_pool* @of_gen_pool_get(i64 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.gen_pool* %97, %struct.gen_pool** %13, align 8
  br label %100

98:                                               ; preds = %82
  %99 = call %struct.gen_pool* @sram_get_gpool(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.gen_pool* %99, %struct.gen_pool** %13, align 8
  br label %100

100:                                              ; preds = %98, %92
  %101 = load %struct.gen_pool*, %struct.gen_pool** %13, align 8
  %102 = icmp ne %struct.gen_pool* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(%struct.TYPE_11__* %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %266

109:                                              ; preds = %100
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %109
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = call i64 @platform_get_irq(%struct.platform_device* %114, i32 0)
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %10, align 4
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @mmp_tdma_int_handler, align 4
  %121 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %122 = call i32 @devm_request_irq(%struct.TYPE_11__* %118, i32 %119, i32 %120, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.mmp_tdma_device* %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %113
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %2, align 4
  br label %266

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127, %109
  store i32 0, i32* %8, align 4
  br label %129

129:                                              ; preds = %156, %128
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %159

133:                                              ; preds = %129
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %142

138:                                              ; preds = %133
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i64 @platform_get_irq(%struct.platform_device* %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %137
  %143 = phi i64 [ 0, %137 ], [ %141, %138 ]
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %10, align 4
  %145 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %4, align 4
  %149 = load %struct.gen_pool*, %struct.gen_pool** %13, align 8
  %150 = call i32 @mmp_tdma_chan_init(%struct.mmp_tdma_device* %145, i32 %146, i32 %147, i32 %148, %struct.gen_pool* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %142
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %2, align 4
  br label %266

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %129

159:                                              ; preds = %129
  %160 = load i32, i32* @DMA_SLAVE, align 4
  %161 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %162 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 11
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @dma_cap_set(i32 %160, i32 %164)
  %166 = load i32, i32* @DMA_CYCLIC, align 4
  %167 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %168 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 11
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dma_cap_set(i32 %166, i32 %170)
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %175 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  store %struct.TYPE_11__* %173, %struct.TYPE_11__** %176, align 8
  %177 = load i32, i32* @mmp_tdma_alloc_chan_resources, align 4
  %178 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %179 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 10
  store i32 %177, i32* %180, align 4
  %181 = load i32, i32* @mmp_tdma_free_chan_resources, align 4
  %182 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %183 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 9
  store i32 %181, i32* %184, align 8
  %185 = load i32, i32* @mmp_tdma_prep_dma_cyclic, align 4
  %186 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %187 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 8
  store i32 %185, i32* %188, align 4
  %189 = load i32, i32* @mmp_tdma_tx_status, align 4
  %190 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %191 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 7
  store i32 %189, i32* %192, align 8
  %193 = load i32, i32* @mmp_tdma_issue_pending, align 4
  %194 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %195 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 6
  store i32 %193, i32* %196, align 4
  %197 = load i32, i32* @mmp_tdma_config, align 4
  %198 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %199 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 5
  store i32 %197, i32* %200, align 8
  %201 = load i32, i32* @mmp_tdma_pause_chan, align 4
  %202 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %203 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 4
  store i32 %201, i32* %204, align 4
  %205 = load i32, i32* @mmp_tdma_resume_chan, align 4
  %206 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %207 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 3
  store i32 %205, i32* %208, align 8
  %209 = load i32, i32* @mmp_tdma_terminate_all, align 4
  %210 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %211 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 2
  store i32 %209, i32* %212, align 4
  %213 = load i32, i32* @DMAENGINE_ALIGN_8_BYTES, align 4
  %214 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %215 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 1
  store i32 %213, i32* %216, align 8
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 0
  %219 = call i32 @DMA_BIT_MASK(i32 64)
  %220 = call i32 @dma_set_mask(%struct.TYPE_11__* %218, i32 %219)
  %221 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %222 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %223 = call i32 @platform_set_drvdata(%struct.platform_device* %221, %struct.mmp_tdma_device* %222)
  %224 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %225 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %224, i32 0, i32 0
  %226 = call i32 @dmaenginem_async_device_register(%struct.TYPE_12__* %225)
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %159
  %230 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %231 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %232, align 8
  %234 = call i32 @dev_err(%struct.TYPE_11__* %233, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %235 = load i32, i32* %9, align 4
  store i32 %235, i32* %2, align 4
  br label %266

236:                                              ; preds = %159
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %260

242:                                              ; preds = %236
  %243 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %244 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* @mmp_tdma_xlate, align 4
  %248 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %249 = call i32 @of_dma_controller_register(i64 %246, i32 %247, %struct.mmp_tdma_device* %248)
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %9, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %242
  %253 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %254 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %255, align 8
  %257 = call i32 @dev_err(%struct.TYPE_11__* %256, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %258 = load i32, i32* %9, align 4
  store i32 %258, i32* %2, align 4
  br label %266

259:                                              ; preds = %242
  br label %260

260:                                              ; preds = %259, %236
  %261 = load %struct.mmp_tdma_device*, %struct.mmp_tdma_device** %6, align 8
  %262 = getelementptr inbounds %struct.mmp_tdma_device, %struct.mmp_tdma_device* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %263, align 8
  %265 = call i32 @dev_info(%struct.TYPE_11__* %264, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %266

266:                                              ; preds = %260, %252, %229, %153, %125, %103, %77, %38
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local %struct.mmp_tdma_device* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.gen_pool* @of_gen_pool_get(i64, i8*, i32) #1

declare dso_local %struct.gen_pool* @sram_get_gpool(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_11__*, i32, i32, i32, i8*, %struct.mmp_tdma_device*) #1

declare dso_local i32 @mmp_tdma_chan_init(%struct.mmp_tdma_device*, i32, i32, i32, %struct.gen_pool*) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_set_mask(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mmp_tdma_device*) #1

declare dso_local i32 @dmaenginem_async_device_register(%struct.TYPE_12__*) #1

declare dso_local i32 @of_dma_controller_register(i64, i32, %struct.mmp_tdma_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
