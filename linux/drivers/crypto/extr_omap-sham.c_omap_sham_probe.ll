; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i64 }
%struct.omap_sham_dev = type { i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.ahash_alg* }
%struct.ahash_alg = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unable to alloc data struct.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@omap_sham_done_task = common dso_local global i32 0, align 4
@OMAP_SHAM_QUEUE_LENGTH = common dso_local global i32 0, align 4
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to request irq %d, err = %d\0A\00", align 1
@DMA_SLAVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"using polling mode instead of dma\0A\00", align 1
@DEFAULT_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@OMAP_SHA_DMA_THRESHOLD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to get sync: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"hw accel on OMAP rev %u.%u\0A\00", align 1
@sham = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@omap_sham_export = common dso_local global i32 0, align 4
@omap_sham_import = common dso_local global i32 0, align 4
@BUFLEN = common dso_local global i64 0, align 8
@omap_sham_attr_group = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"could not create sysfs device attrs\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"initialization failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_sham_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_sham_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ahash_alg*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.omap_sham_dev* @devm_kzalloc(%struct.device* %15, i32 64, i32 %16)
  store %struct.omap_sham_dev* %17, %struct.omap_sham_dev** %4, align 8
  %18 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %19 = icmp eq %struct.omap_sham_dev* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %351

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %28 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %27, i32 0, i32 12
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.omap_sham_dev* %30)
  %32 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %33 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %32, i32 0, i32 3
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %36 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %35, i32 0, i32 11
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %39 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %38, i32 0, i32 10
  %40 = load i32, i32* @omap_sham_done_task, align 4
  %41 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %42 = ptrtoint %struct.omap_sham_dev* %41 to i64
  %43 = call i32 @tasklet_init(i32* %39, i32 %40, i64 %42)
  %44 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %45 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %44, i32 0, i32 9
  %46 = load i32, i32* @OMAP_SHAM_QUEUE_LENGTH, align 4
  %47 = call i32 @crypto_init_queue(i32* %45, i32 %46)
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %25
  %53 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call i32 @omap_sham_get_res_of(%struct.omap_sham_dev* %53, %struct.device* %54, %struct.resource* %6)
  br label %60

56:                                               ; preds = %25
  %57 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i32 @omap_sham_get_res_pdev(%struct.omap_sham_dev* %57, %struct.platform_device* %58, %struct.resource* %6)
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i32 [ %55, %52 ], [ %59, %56 ]
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %351

65:                                               ; preds = %60
  %66 = load %struct.device*, %struct.device** %5, align 8
  %67 = call i32 @devm_ioremap_resource(%struct.device* %66, %struct.resource* %6)
  %68 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %69 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 4
  %70 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %71 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %77 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %8, align 4
  br label %351

80:                                               ; preds = %65
  %81 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %84 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %87 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %90 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %89, i32 0, i32 2
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = call i32 @dev_name(%struct.device* %95)
  %97 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %98 = call i32 @devm_request_irq(%struct.device* %85, i32 %88, i32 %93, i32 %94, i32 %96, %struct.omap_sham_dev* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %80
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %104 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %106)
  br label %351

108:                                              ; preds = %80
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @dma_cap_zero(i32 %109)
  %111 = load i32, i32* @DMA_SLAVE, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @dma_cap_set(i32 %111, i32 %112)
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = call i32 @dma_request_chan(%struct.device* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %116 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %117 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %119 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @IS_ERR(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %108
  %124 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %125 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @PTR_ERR(i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @EPROBE_DEFER, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %351

133:                                              ; preds = %123
  %134 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %135 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load %struct.device*, %struct.device** %5, align 8
  %137 = call i32 @dev_dbg(%struct.device* %136, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %138

138:                                              ; preds = %133, %108
  %139 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %140 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %139, i32 0, i32 2
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %145 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.device*, %struct.device** %5, align 8
  %149 = call i32 @pm_runtime_use_autosuspend(%struct.device* %148)
  %150 = load %struct.device*, %struct.device** %5, align 8
  %151 = load i32, i32* @DEFAULT_AUTOSUSPEND_DELAY, align 4
  %152 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %150, i32 %151)
  %153 = load i32, i32* @OMAP_SHA_DMA_THRESHOLD, align 4
  %154 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %155 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 4
  %156 = load %struct.device*, %struct.device** %5, align 8
  %157 = call i32 @pm_runtime_enable(%struct.device* %156)
  %158 = load %struct.device*, %struct.device** %5, align 8
  %159 = call i32 @pm_runtime_irq_safe(%struct.device* %158)
  %160 = load %struct.device*, %struct.device** %5, align 8
  %161 = call i32 @pm_runtime_get_sync(%struct.device* %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %138
  %165 = load %struct.device*, %struct.device** %5, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %165, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  br label %338

168:                                              ; preds = %138
  %169 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %170 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %171 = call i32 @SHA_REG_REV(%struct.omap_sham_dev* %170)
  %172 = call i32 @omap_sham_read(%struct.omap_sham_dev* %169, i32 %171)
  store i32 %172, i32* %11, align 4
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = call i32 @pm_runtime_put_sync(%struct.device* %174)
  %176 = load %struct.device*, %struct.device** %5, align 8
  %177 = load i32, i32* %11, align 4
  %178 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %179 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %178, i32 0, i32 2
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %177, %182
  %184 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %185 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %184, i32 0, i32 2
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = ashr i32 %183, %188
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %192 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %191, i32 0, i32 2
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %190, %195
  %197 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %198 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %197, i32 0, i32 2
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = ashr i32 %196, %201
  %203 = call i32 @dev_info(%struct.device* %176, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %189, i32 %202)
  %204 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sham, i32 0, i32 0))
  %205 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %206 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %205, i32 0, i32 3
  %207 = call i32 @list_add_tail(i32* %206, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sham, i32 0, i32 1))
  %208 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sham, i32 0, i32 0))
  store i32 0, i32* %9, align 4
  br label %209

209:                                              ; preds = %277, %168
  %210 = load i32, i32* %9, align 4
  %211 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %212 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %211, i32 0, i32 2
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = icmp slt i32 %210, %215
  br i1 %216, label %217, label %280

217:                                              ; preds = %209
  store i32 0, i32* %10, align 4
  br label %218

218:                                              ; preds = %273, %217
  %219 = load i32, i32* %10, align 4
  %220 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %221 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %220, i32 0, i32 2
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 5
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %219, %229
  br i1 %230, label %231, label %276

231:                                              ; preds = %218
  %232 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %233 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %232, i32 0, i32 2
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 5
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 2
  %241 = load %struct.ahash_alg*, %struct.ahash_alg** %240, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %241, i64 %243
  store %struct.ahash_alg* %244, %struct.ahash_alg** %12, align 8
  %245 = load i32, i32* @omap_sham_export, align 4
  %246 = load %struct.ahash_alg*, %struct.ahash_alg** %12, align 8
  %247 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* @omap_sham_import, align 4
  %249 = load %struct.ahash_alg*, %struct.ahash_alg** %12, align 8
  %250 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %249, i32 0, i32 1
  store i32 %248, i32* %250, align 8
  %251 = load i64, i64* @BUFLEN, align 8
  %252 = add i64 4, %251
  %253 = load %struct.ahash_alg*, %struct.ahash_alg** %12, align 8
  %254 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  store i64 %252, i64* %255, align 8
  %256 = load %struct.ahash_alg*, %struct.ahash_alg** %12, align 8
  %257 = call i32 @crypto_register_ahash(%struct.ahash_alg* %256)
  store i32 %257, i32* %8, align 4
  %258 = load i32, i32* %8, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %231
  br label %290

261:                                              ; preds = %231
  %262 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %263 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %262, i32 0, i32 2
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 5
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %261
  %274 = load i32, i32* %10, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %10, align 4
  br label %218

276:                                              ; preds = %218
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %9, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %9, align 4
  br label %209

280:                                              ; preds = %209
  %281 = load %struct.device*, %struct.device** %5, align 8
  %282 = getelementptr inbounds %struct.device, %struct.device* %281, i32 0, i32 0
  %283 = call i32 @sysfs_create_group(i32* %282, i32* @omap_sham_attr_group)
  store i32 %283, i32* %8, align 4
  %284 = load i32, i32* %8, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %280
  %287 = load %struct.device*, %struct.device** %5, align 8
  %288 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %287, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %290

289:                                              ; preds = %280
  store i32 0, i32* %2, align 4
  br label %355

290:                                              ; preds = %286, %260
  %291 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %292 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %291, i32 0, i32 2
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = sub nsw i32 %295, 1
  store i32 %296, i32* %9, align 4
  br label %297

297:                                              ; preds = %334, %290
  %298 = load i32, i32* %9, align 4
  %299 = icmp sge i32 %298, 0
  br i1 %299, label %300, label %337

300:                                              ; preds = %297
  %301 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %302 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %301, i32 0, i32 2
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 5
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %304, align 8
  %306 = load i32, i32* %9, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = sub nsw i32 %310, 1
  store i32 %311, i32* %10, align 4
  br label %312

312:                                              ; preds = %330, %300
  %313 = load i32, i32* %10, align 4
  %314 = icmp sge i32 %313, 0
  br i1 %314, label %315, label %333

315:                                              ; preds = %312
  %316 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %317 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %316, i32 0, i32 2
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 5
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %319, align 8
  %321 = load i32, i32* %9, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 2
  %325 = load %struct.ahash_alg*, %struct.ahash_alg** %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %325, i64 %327
  %329 = call i32 @crypto_unregister_ahash(%struct.ahash_alg* %328)
  br label %330

330:                                              ; preds = %315
  %331 = load i32, i32* %10, align 4
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %10, align 4
  br label %312

333:                                              ; preds = %312
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %9, align 4
  %336 = add nsw i32 %335, -1
  store i32 %336, i32* %9, align 4
  br label %297

337:                                              ; preds = %297
  br label %338

338:                                              ; preds = %337, %164
  %339 = load %struct.device*, %struct.device** %5, align 8
  %340 = call i32 @pm_runtime_disable(%struct.device* %339)
  %341 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %342 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %350, label %345

345:                                              ; preds = %338
  %346 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %347 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @dma_release_channel(i32 %348)
  br label %350

350:                                              ; preds = %345, %338
  br label %351

351:                                              ; preds = %350, %132, %101, %75, %64, %20
  %352 = load %struct.device*, %struct.device** %5, align 8
  %353 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %352, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %354 = load i32, i32* %8, align 4
  store i32 %354, i32* %2, align 4
  br label %355

355:                                              ; preds = %351, %289
  %356 = load i32, i32* %2, align 4
  ret i32 %356
}

declare dso_local %struct.omap_sham_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.omap_sham_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @crypto_init_queue(i32*, i32) #1

declare dso_local i32 @omap_sham_get_res_of(%struct.omap_sham_dev*, %struct.device*, %struct.resource*) #1

declare dso_local i32 @omap_sham_get_res_pdev(%struct.omap_sham_dev*, %struct.platform_device*, %struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.omap_sham_dev*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @dma_request_chan(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_irq_safe(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @omap_sham_read(%struct.omap_sham_dev*, i32) #1

declare dso_local i32 @SHA_REG_REV(%struct.omap_sham_dev*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @crypto_register_ahash(%struct.ahash_alg*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @crypto_unregister_ahash(%struct.ahash_alg*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @dma_release_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
