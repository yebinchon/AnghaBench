; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-hash.c_stm32_hash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.stm32_hash_dev = type { i32, i64, i32, i32, i32, %struct.device*, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@stm32_hash_irq_handler = common dso_local global i32 0, align 4
@stm32_hash_irq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Cannot grab IRQ\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to get clock for hash (%lu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to enable hash clock (%d)\0A\00", align 1
@HASH_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"DMA mode not available\0A\00", align 1
@stm32_hash = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HASH_HWCFGR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"Init HASH done HW ver %x DMA mode %u\0A\00", align 1
@HASH_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_hash_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_hash_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_hash_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.stm32_hash_dev* @devm_kzalloc(%struct.device* %11, i32 56, i32 %12)
  store %struct.stm32_hash_dev* %13, %struct.stm32_hash_dev** %4, align 8
  %14 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %15 = icmp ne %struct.stm32_hash_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %232

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %6, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load %struct.resource*, %struct.resource** %6, align 8
  %25 = call i32 @devm_ioremap_resource(%struct.device* %23, %struct.resource* %24)
  %26 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %27 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 8
  %28 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %29 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %35 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %232

38:                                               ; preds = %19
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %43 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 4
  %44 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i32 @stm32_hash_get_of_match(%struct.stm32_hash_dev* %44, %struct.device* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %232

51:                                               ; preds = %38
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = call i32 @platform_get_irq(%struct.platform_device* %52, i32 0)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %232

58:                                               ; preds = %51
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @stm32_hash_irq_handler, align 4
  %62 = load i32, i32* @stm32_hash_irq_thread, align 4
  %63 = load i32, i32* @IRQF_ONESHOT, align 4
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i32 @dev_name(%struct.device* %64)
  %66 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %67 = call i32 @devm_request_threaded_irq(%struct.device* %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %65, %struct.stm32_hash_dev* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %232

74:                                               ; preds = %58
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call i32 @devm_clk_get(%struct.device* %76, i32* null)
  %78 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %79 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %81 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @IS_ERR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %74
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %88 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @PTR_ERR(i32 %89)
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %93 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @PTR_ERR(i32 %94)
  store i32 %95, i32* %2, align 4
  br label %232

96:                                               ; preds = %74
  %97 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %98 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @clk_prepare_enable(i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.device*, %struct.device** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %232

108:                                              ; preds = %96
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = load i32, i32* @HASH_AUTOSUSPEND_DELAY, align 4
  %111 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %109, i32 %110)
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = call i32 @pm_runtime_use_autosuspend(%struct.device* %112)
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = call i32 @pm_runtime_get_noresume(%struct.device* %114)
  %116 = load %struct.device*, %struct.device** %5, align 8
  %117 = call i32 @pm_runtime_set_active(%struct.device* %116)
  %118 = load %struct.device*, %struct.device** %5, align 8
  %119 = call i32 @pm_runtime_enable(%struct.device* %118)
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 @devm_reset_control_get(%struct.device* %121, i32* null)
  %123 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %124 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 8
  %125 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %126 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @IS_ERR(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %140, label %130

130:                                              ; preds = %108
  %131 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %132 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @reset_control_assert(i32 %133)
  %135 = call i32 @udelay(i32 2)
  %136 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %137 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @reset_control_deassert(i32 %138)
  br label %140

140:                                              ; preds = %130, %108
  %141 = load %struct.device*, %struct.device** %5, align 8
  %142 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %143 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %142, i32 0, i32 5
  store %struct.device* %141, %struct.device** %143, align 8
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %146 = call i32 @platform_set_drvdata(%struct.platform_device* %144, %struct.stm32_hash_dev* %145)
  %147 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %148 = call i32 @stm32_hash_dma_init(%struct.stm32_hash_dev* %147)
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %140
  %152 = load %struct.device*, %struct.device** %5, align 8
  %153 = call i32 @dev_dbg(%struct.device* %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %140
  %155 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stm32_hash, i32 0, i32 0))
  %156 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %157 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %156, i32 0, i32 2
  %158 = call i32 @list_add_tail(i32* %157, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stm32_hash, i32 0, i32 1))
  %159 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stm32_hash, i32 0, i32 0))
  %160 = load %struct.device*, %struct.device** %5, align 8
  %161 = call i32 @crypto_engine_alloc_init(%struct.device* %160, i32 1)
  %162 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %163 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  %164 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %165 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %154
  %169 = load i32, i32* @ENOMEM, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %7, align 4
  br label %207

171:                                              ; preds = %154
  %172 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %173 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @crypto_engine_start(i32 %174)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %202

179:                                              ; preds = %171
  %180 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %181 = load i32, i32* @HASH_HWCFGR, align 4
  %182 = call i32 @stm32_hash_read(%struct.stm32_hash_dev* %180, i32 %181)
  %183 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %184 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  %185 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %186 = call i32 @stm32_hash_register_algs(%struct.stm32_hash_dev* %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  br label %201

190:                                              ; preds = %179
  %191 = load %struct.device*, %struct.device** %5, align 8
  %192 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %193 = load i32, i32* @HASH_VER, align 4
  %194 = call i32 @stm32_hash_read(%struct.stm32_hash_dev* %192, i32 %193)
  %195 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %196 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @dev_info(%struct.device* %191, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %194, i32 %197)
  %199 = load %struct.device*, %struct.device** %5, align 8
  %200 = call i32 @pm_runtime_put_sync(%struct.device* %199)
  store i32 0, i32* %2, align 4
  br label %232

201:                                              ; preds = %189
  br label %202

202:                                              ; preds = %201, %178
  %203 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %204 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @crypto_engine_exit(i32 %205)
  br label %207

207:                                              ; preds = %202, %168
  %208 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stm32_hash, i32 0, i32 0))
  %209 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %210 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %209, i32 0, i32 2
  %211 = call i32 @list_del(i32* %210)
  %212 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stm32_hash, i32 0, i32 0))
  %213 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %214 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %207
  %218 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %219 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @dma_release_channel(i64 %220)
  br label %222

222:                                              ; preds = %217, %207
  %223 = load %struct.device*, %struct.device** %5, align 8
  %224 = call i32 @pm_runtime_disable(%struct.device* %223)
  %225 = load %struct.device*, %struct.device** %5, align 8
  %226 = call i32 @pm_runtime_put_noidle(%struct.device* %225)
  %227 = load %struct.stm32_hash_dev*, %struct.stm32_hash_dev** %4, align 8
  %228 = getelementptr inbounds %struct.stm32_hash_dev, %struct.stm32_hash_dev* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @clk_disable_unprepare(i32 %229)
  %231 = load i32, i32* %7, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %222, %190, %103, %85, %70, %56, %49, %33, %16
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local %struct.stm32_hash_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @stm32_hash_get_of_match(%struct.stm32_hash_dev*, %struct.device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.stm32_hash_dev*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @devm_reset_control_get(%struct.device*, i32*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_hash_dev*) #1

declare dso_local i32 @stm32_hash_dma_init(%struct.stm32_hash_dev*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @crypto_engine_alloc_init(%struct.device*, i32) #1

declare dso_local i32 @crypto_engine_start(i32) #1

declare dso_local i32 @stm32_hash_read(%struct.stm32_hash_dev*, i32) #1

declare dso_local i32 @stm32_hash_register_algs(%struct.stm32_hash_dev*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @crypto_engine_exit(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
