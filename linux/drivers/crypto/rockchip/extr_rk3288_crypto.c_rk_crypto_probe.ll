; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto.c_rk_crypto_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto.c_rk_crypto_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.rk_crypto_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device*, i8*, i8*, i8*, i8*, i8*, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"crypto-rst\00", align 1
@rk_crypto_action = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"control Interrupt is not available.\0A\00", align 1
@rk_crypto_irq_handle = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"rk-crypto\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"irq request failed.\0A\00", align 1
@rk_crypto_queue_task_cb = common dso_local global i32 0, align 4
@rk_crypto_done_task_cb = common dso_local global i32 0, align 4
@rk_crypto_enable_clk = common dso_local global i32 0, align 4
@rk_crypto_disable_clk = common dso_local global i32 0, align 4
@rk_load_data = common dso_local global i32 0, align 4
@rk_unload_data = common dso_local global i32 0, align 4
@rk_crypto_enqueue = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"err in register alg\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Crypto Accelerator successfully registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rk_crypto_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_crypto_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rk_crypto_info*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.rk_crypto_info* @devm_kzalloc(%struct.device* %10, i32 104, i32 %11)
  store %struct.rk_crypto_info* %12, %struct.rk_crypto_info** %5, align 8
  %13 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %14 = icmp ne %struct.rk_crypto_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %223

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i8* @devm_reset_control_get(%struct.device* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %22 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %21, i32 0, i32 17
  store i8* %20, i8** %22, align 8
  %23 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %24 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %23, i32 0, i32 17
  %25 = load i8*, i8** %24, align 8
  %26 = call i64 @IS_ERR(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %30 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %29, i32 0, i32 17
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @PTR_ERR(i8* %31)
  store i32 %32, i32* %6, align 4
  br label %223

33:                                               ; preds = %18
  %34 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %35 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %34, i32 0, i32 17
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @reset_control_assert(i8* %36)
  %38 = call i32 @usleep_range(i32 10, i32 20)
  %39 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %40 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %39, i32 0, i32 17
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @reset_control_deassert(i8* %41)
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = load i32, i32* @rk_crypto_action, align 4
  %45 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %46 = call i32 @devm_add_action_or_reset(%struct.device* %43, i32 %44, %struct.rk_crypto_info* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %223

50:                                               ; preds = %33
  %51 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %52 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %51, i32 0, i32 16
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %54, i32 0)
  %56 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %57 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %56, i32 0, i32 15
  store i8* %55, i8** %57, align 8
  %58 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %59 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %58, i32 0, i32 15
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %50
  %64 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %65 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %64, i32 0, i32 15
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %6, align 4
  br label %223

68:                                               ; preds = %50
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i8* @devm_clk_get(%struct.device* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %73 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %72, i32 0, i32 14
  store i8* %71, i8** %73, align 8
  %74 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %75 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %74, i32 0, i32 14
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @IS_ERR(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %81 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %80, i32 0, i32 14
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @PTR_ERR(i8* %82)
  store i32 %83, i32* %6, align 4
  br label %223

84:                                               ; preds = %68
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i8* @devm_clk_get(%struct.device* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %89 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %88, i32 0, i32 13
  store i8* %87, i8** %89, align 8
  %90 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %91 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %90, i32 0, i32 13
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @IS_ERR(i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %84
  %96 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %97 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %96, i32 0, i32 13
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @PTR_ERR(i8* %98)
  store i32 %99, i32* %6, align 4
  br label %223

100:                                              ; preds = %84
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i8* @devm_clk_get(%struct.device* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %105 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %104, i32 0, i32 12
  store i8* %103, i8** %105, align 8
  %106 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %107 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %106, i32 0, i32 12
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @IS_ERR(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %100
  %112 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %113 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %112, i32 0, i32 12
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @PTR_ERR(i8* %114)
  store i32 %115, i32* %6, align 4
  br label %223

116:                                              ; preds = %100
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = call i8* @devm_clk_get(%struct.device* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %120 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %121 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %120, i32 0, i32 11
  store i8* %119, i8** %121, align 8
  %122 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %123 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %122, i32 0, i32 11
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @IS_ERR(i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %116
  %128 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %129 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %128, i32 0, i32 11
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @PTR_ERR(i8* %130)
  store i32 %131, i32* %6, align 4
  br label %223

132:                                              ; preds = %116
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = call i32 @platform_get_irq(%struct.platform_device* %133, i32 0)
  %135 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %136 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %138 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %132
  %142 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %143 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %142, i32 0, i32 10
  %144 = load %struct.device*, %struct.device** %143, align 8
  %145 = call i32 @dev_warn(%struct.device* %144, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %146 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %147 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %6, align 4
  br label %223

149:                                              ; preds = %132
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %153 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @rk_crypto_irq_handle, align 4
  %156 = load i32, i32* @IRQF_SHARED, align 4
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = call i32 @devm_request_irq(%struct.device* %151, i32 %154, i32 %155, i32 %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %struct.platform_device* %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %149
  %162 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %163 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %162, i32 0, i32 10
  %164 = load %struct.device*, %struct.device** %163, align 8
  %165 = call i32 @dev_err(%struct.device* %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %223

166:                                              ; preds = %149
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %170 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %169, i32 0, i32 10
  store %struct.device* %168, %struct.device** %170, align 8
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %173 = call i32 @platform_set_drvdata(%struct.platform_device* %171, %struct.rk_crypto_info* %172)
  %174 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %175 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %174, i32 0, i32 3
  %176 = load i32, i32* @rk_crypto_queue_task_cb, align 4
  %177 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %178 = ptrtoint %struct.rk_crypto_info* %177 to i64
  %179 = call i32 @tasklet_init(i32* %175, i32 %176, i64 %178)
  %180 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %181 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %180, i32 0, i32 2
  %182 = load i32, i32* @rk_crypto_done_task_cb, align 4
  %183 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %184 = ptrtoint %struct.rk_crypto_info* %183 to i64
  %185 = call i32 @tasklet_init(i32* %181, i32 %182, i64 %184)
  %186 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %187 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %186, i32 0, i32 9
  %188 = call i32 @crypto_init_queue(i32* %187, i32 50)
  %189 = load i32, i32* @rk_crypto_enable_clk, align 4
  %190 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %191 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %190, i32 0, i32 8
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* @rk_crypto_disable_clk, align 4
  %193 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %194 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %193, i32 0, i32 7
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* @rk_load_data, align 4
  %196 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %197 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %196, i32 0, i32 6
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* @rk_unload_data, align 4
  %199 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %200 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* @rk_crypto_enqueue, align 4
  %202 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %203 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 8
  %204 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %205 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %204, i32 0, i32 1
  store i32 0, i32* %205, align 4
  %206 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %207 = call i32 @rk_crypto_register(%struct.rk_crypto_info* %206)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %166
  %211 = load %struct.device*, %struct.device** %4, align 8
  %212 = call i32 @dev_err(%struct.device* %211, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %216

213:                                              ; preds = %166
  %214 = load %struct.device*, %struct.device** %4, align 8
  %215 = call i32 @dev_info(%struct.device* %214, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %225

216:                                              ; preds = %210
  %217 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %218 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %217, i32 0, i32 3
  %219 = call i32 @tasklet_kill(i32* %218)
  %220 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %5, align 8
  %221 = getelementptr inbounds %struct.rk_crypto_info, %struct.rk_crypto_info* %220, i32 0, i32 2
  %222 = call i32 @tasklet_kill(i32* %221)
  br label %223

223:                                              ; preds = %216, %161, %141, %127, %111, %95, %79, %63, %49, %28, %15
  %224 = load i32, i32* %6, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %223, %213
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.rk_crypto_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @reset_control_assert(i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @reset_control_deassert(i8*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, i32, %struct.rk_crypto_info*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rk_crypto_info*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @crypto_init_queue(i32*, i32) #1

declare dso_local i32 @rk_crypto_register(%struct.rk_crypto_info*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
