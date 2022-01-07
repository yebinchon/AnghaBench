; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.stm32_cryp = type { %struct.reset_control*, i32, i32, %struct.device*, %struct.reset_control*, i32 }
%struct.reset_control = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@stm32_cryp_irq = common dso_local global i32 0, align 4
@stm32_cryp_irq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Cannot grab IRQ\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Could not get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to enable clock\0A\00", align 1
@CRYP_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@cryp_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Could not init crypto engine\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Could not start crypto engine\0A\00", align 1
@crypto_algs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Could not register algs\0A\00", align 1
@aead_algs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"Initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_cryp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cryp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.stm32_cryp*, align 8
  %6 = alloca %struct.reset_control*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.stm32_cryp* @devm_kzalloc(%struct.device* %11, i32 40, i32 %12)
  store %struct.stm32_cryp* %13, %struct.stm32_cryp** %5, align 8
  %14 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %15 = icmp ne %struct.stm32_cryp* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %210

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @of_device_get_match_data(%struct.device* %20)
  %22 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %23 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %25 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %210

31:                                               ; preds = %19
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %34 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %33, i32 0, i32 3
  store %struct.device* %32, %struct.device** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = call %struct.reset_control* @devm_platform_ioremap_resource(%struct.platform_device* %35, i32 0)
  %37 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %38 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %37, i32 0, i32 4
  store %struct.reset_control* %36, %struct.reset_control** %38, align 8
  %39 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %40 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %39, i32 0, i32 4
  %41 = load %struct.reset_control*, %struct.reset_control** %40, align 8
  %42 = call i64 @IS_ERR(%struct.reset_control* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %46 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %45, i32 0, i32 4
  %47 = load %struct.reset_control*, %struct.reset_control** %46, align 8
  %48 = call i32 @PTR_ERR(%struct.reset_control* %47)
  store i32 %48, i32* %2, align 4
  br label %210

49:                                               ; preds = %31
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i32 @platform_get_irq(%struct.platform_device* %50, i32 0)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %210

56:                                               ; preds = %49
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @stm32_cryp_irq, align 4
  %60 = load i32, i32* @stm32_cryp_irq_thread, align 4
  %61 = load i32, i32* @IRQF_ONESHOT, align 4
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @dev_name(%struct.device* %62)
  %64 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %65 = call i32 @devm_request_threaded_irq(%struct.device* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %63, %struct.stm32_cryp* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %210

72:                                               ; preds = %56
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = call %struct.reset_control* @devm_clk_get(%struct.device* %73, i32* null)
  %75 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %76 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %75, i32 0, i32 0
  store %struct.reset_control* %74, %struct.reset_control** %76, align 8
  %77 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %78 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %77, i32 0, i32 0
  %79 = load %struct.reset_control*, %struct.reset_control** %78, align 8
  %80 = call i64 @IS_ERR(%struct.reset_control* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %72
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %86 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %85, i32 0, i32 0
  %87 = load %struct.reset_control*, %struct.reset_control** %86, align 8
  %88 = call i32 @PTR_ERR(%struct.reset_control* %87)
  store i32 %88, i32* %2, align 4
  br label %210

89:                                               ; preds = %72
  %90 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %91 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %90, i32 0, i32 0
  %92 = load %struct.reset_control*, %struct.reset_control** %91, align 8
  %93 = call i32 @clk_prepare_enable(%struct.reset_control* %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %98 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %97, i32 0, i32 3
  %99 = load %struct.device*, %struct.device** %98, align 8
  %100 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %210

102:                                              ; preds = %89
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load i32, i32* @CRYP_AUTOSUSPEND_DELAY, align 4
  %105 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %103, i32 %104)
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = call i32 @pm_runtime_use_autosuspend(%struct.device* %106)
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = call i32 @pm_runtime_get_noresume(%struct.device* %108)
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = call i32 @pm_runtime_set_active(%struct.device* %110)
  %112 = load %struct.device*, %struct.device** %4, align 8
  %113 = call i32 @pm_runtime_enable(%struct.device* %112)
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = call %struct.reset_control* @devm_reset_control_get(%struct.device* %114, i32* null)
  store %struct.reset_control* %115, %struct.reset_control** %6, align 8
  %116 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %117 = call i64 @IS_ERR(%struct.reset_control* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %102
  %120 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %121 = call i32 @reset_control_assert(%struct.reset_control* %120)
  %122 = call i32 @udelay(i32 2)
  %123 = load %struct.reset_control*, %struct.reset_control** %6, align 8
  %124 = call i32 @reset_control_deassert(%struct.reset_control* %123)
  br label %125

125:                                              ; preds = %119, %102
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %128 = call i32 @platform_set_drvdata(%struct.platform_device* %126, %struct.stm32_cryp* %127)
  %129 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cryp_list, i32 0, i32 0))
  %130 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %131 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %130, i32 0, i32 1
  %132 = call i32 @list_add(i32* %131, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cryp_list, i32 0, i32 1))
  %133 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cryp_list, i32 0, i32 0))
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = call i32 @crypto_engine_alloc_init(%struct.device* %134, i32 1)
  %136 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %137 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %139 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %125
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = call i32 @dev_err(%struct.device* %143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %8, align 4
  br label %191

147:                                              ; preds = %125
  %148 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %149 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @crypto_engine_start(i32 %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = call i32 @dev_err(%struct.device* %155, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %186

157:                                              ; preds = %147
  %158 = load i32, i32* @crypto_algs, align 4
  %159 = load i32, i32* @crypto_algs, align 4
  %160 = call i32 @ARRAY_SIZE(i32 %159)
  %161 = call i32 @crypto_register_algs(i32 %158, i32 %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = call i32 @dev_err(%struct.device* %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %185

167:                                              ; preds = %157
  %168 = load i32, i32* @aead_algs, align 4
  %169 = load i32, i32* @aead_algs, align 4
  %170 = call i32 @ARRAY_SIZE(i32 %169)
  %171 = call i32 @crypto_register_aeads(i32 %168, i32 %170)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %180

175:                                              ; preds = %167
  %176 = load %struct.device*, %struct.device** %4, align 8
  %177 = call i32 @dev_info(%struct.device* %176, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %178 = load %struct.device*, %struct.device** %4, align 8
  %179 = call i32 @pm_runtime_put_sync(%struct.device* %178)
  store i32 0, i32* %2, align 4
  br label %210

180:                                              ; preds = %174
  %181 = load i32, i32* @crypto_algs, align 4
  %182 = load i32, i32* @crypto_algs, align 4
  %183 = call i32 @ARRAY_SIZE(i32 %182)
  %184 = call i32 @crypto_unregister_algs(i32 %181, i32 %183)
  br label %185

185:                                              ; preds = %180, %164
  br label %186

186:                                              ; preds = %185, %154
  %187 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %188 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @crypto_engine_exit(i32 %189)
  br label %191

191:                                              ; preds = %186, %142
  %192 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cryp_list, i32 0, i32 0))
  %193 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %194 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %193, i32 0, i32 1
  %195 = call i32 @list_del(i32* %194)
  %196 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cryp_list, i32 0, i32 0))
  %197 = load %struct.device*, %struct.device** %4, align 8
  %198 = call i32 @pm_runtime_disable(%struct.device* %197)
  %199 = load %struct.device*, %struct.device** %4, align 8
  %200 = call i32 @pm_runtime_put_noidle(%struct.device* %199)
  %201 = load %struct.device*, %struct.device** %4, align 8
  %202 = call i32 @pm_runtime_disable(%struct.device* %201)
  %203 = load %struct.device*, %struct.device** %4, align 8
  %204 = call i32 @pm_runtime_put_noidle(%struct.device* %203)
  %205 = load %struct.stm32_cryp*, %struct.stm32_cryp** %5, align 8
  %206 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %205, i32 0, i32 0
  %207 = load %struct.reset_control*, %struct.reset_control** %206, align 8
  %208 = call i32 @clk_disable_unprepare(%struct.reset_control* %207)
  %209 = load i32, i32* %8, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %191, %175, %96, %82, %68, %54, %44, %28, %16
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local %struct.stm32_cryp* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.reset_control* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.stm32_cryp*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.reset_control* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.reset_control*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local %struct.reset_control* @devm_reset_control_get(%struct.device*, i32*) #1

declare dso_local i32 @reset_control_assert(%struct.reset_control*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(%struct.reset_control*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_cryp*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @crypto_engine_alloc_init(%struct.device*, i32) #1

declare dso_local i32 @crypto_engine_start(i32) #1

declare dso_local i32 @crypto_register_algs(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @crypto_register_aeads(i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @crypto_unregister_algs(i32, i32) #1

declare dso_local i32 @crypto_engine_exit(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.reset_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
