; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-svc.c_stratix10_svc_drv_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_stratix10-svc.c_stratix10_svc_drv_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.stratix10_svc_controller = type { i32, i32, i32, i32, i32*, i32*, %struct.gen_pool*, %struct.stratix10_svc_chan*, i64, i32, %struct.device* }
%struct.gen_pool = type { i32 }
%struct.stratix10_svc_chan = type { i32, i32, %struct.stratix10_svc_controller*, i32* }
%struct.stratix10_svc_sh_memory = type { i32* }
%struct.stratix10_svc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SVC_NUM_CHANNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@SVC_NUM_DATA_IN_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to allocate FIFO\0A\00", align 1
@SVC_CLIENT_FPGA = common dso_local global i32 0, align 4
@SVC_CLIENT_RSU = common dso_local global i32 0, align 4
@svc_ctrl = common dso_local global i32 0, align 4
@STRATIX10_RSU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to allocate %s device\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Intel Service Layer Driver Initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stratix10_svc_drv_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stratix10_svc_drv_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.stratix10_svc_controller*, align 8
  %6 = alloca %struct.stratix10_svc_chan*, align 8
  %7 = alloca %struct.gen_pool*, align 8
  %8 = alloca %struct.stratix10_svc_sh_memory*, align 8
  %9 = alloca %struct.stratix10_svc*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32* @get_invoke_func(%struct.device* %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i64 @IS_ERR(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %195

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kzalloc(%struct.device* %24, i32 8, i32 %25)
  %27 = bitcast i8* %26 to %struct.stratix10_svc_sh_memory*
  store %struct.stratix10_svc_sh_memory* %27, %struct.stratix10_svc_sh_memory** %8, align 8
  %28 = load %struct.stratix10_svc_sh_memory*, %struct.stratix10_svc_sh_memory** %8, align 8
  %29 = icmp ne %struct.stratix10_svc_sh_memory* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %195

33:                                               ; preds = %23
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.stratix10_svc_sh_memory*, %struct.stratix10_svc_sh_memory** %8, align 8
  %36 = getelementptr inbounds %struct.stratix10_svc_sh_memory, %struct.stratix10_svc_sh_memory* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.stratix10_svc_sh_memory*, %struct.stratix10_svc_sh_memory** %8, align 8
  %39 = call i32 @svc_get_sh_memory(%struct.platform_device* %37, %struct.stratix10_svc_sh_memory* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %2, align 4
  br label %195

44:                                               ; preds = %33
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.stratix10_svc_sh_memory*, %struct.stratix10_svc_sh_memory** %8, align 8
  %47 = call %struct.gen_pool* @svc_create_memory_pool(%struct.platform_device* %45, %struct.stratix10_svc_sh_memory* %46)
  store %struct.gen_pool* %47, %struct.gen_pool** %7, align 8
  %48 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %49 = icmp ne %struct.gen_pool* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %195

53:                                               ; preds = %44
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @devm_kzalloc(%struct.device* %54, i32 72, i32 %55)
  %57 = bitcast i8* %56 to %struct.stratix10_svc_controller*
  store %struct.stratix10_svc_controller* %57, %struct.stratix10_svc_controller** %5, align 8
  %58 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %59 = icmp ne %struct.stratix10_svc_controller* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %195

63:                                               ; preds = %53
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* @SVC_NUM_CHANNEL, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = load i32, i32* @__GFP_ZERO, align 4
  %68 = or i32 %66, %67
  %69 = call %struct.stratix10_svc_chan* @devm_kmalloc_array(%struct.device* %64, i32 %65, i32 24, i32 %68)
  store %struct.stratix10_svc_chan* %69, %struct.stratix10_svc_chan** %6, align 8
  %70 = load %struct.stratix10_svc_chan*, %struct.stratix10_svc_chan** %6, align 8
  %71 = icmp ne %struct.stratix10_svc_chan* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %63
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %195

75:                                               ; preds = %63
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %78 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %77, i32 0, i32 10
  store %struct.device* %76, %struct.device** %78, align 8
  %79 = load i32, i32* @SVC_NUM_CHANNEL, align 4
  %80 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %81 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 8
  %82 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %83 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %82, i32 0, i32 8
  store i64 0, i64* %83, align 8
  %84 = load %struct.stratix10_svc_chan*, %struct.stratix10_svc_chan** %6, align 8
  %85 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %86 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %85, i32 0, i32 7
  store %struct.stratix10_svc_chan* %84, %struct.stratix10_svc_chan** %86, align 8
  %87 = load %struct.gen_pool*, %struct.gen_pool** %7, align 8
  %88 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %89 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %88, i32 0, i32 6
  store %struct.gen_pool* %87, %struct.gen_pool** %89, align 8
  %90 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %91 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %90, i32 0, i32 5
  store i32* null, i32** %91, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %94 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %93, i32 0, i32 4
  store i32* %92, i32** %94, align 8
  %95 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %96 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %95, i32 0, i32 3
  %97 = call i32 @init_completion(i32* %96)
  %98 = load i32, i32* @SVC_NUM_DATA_IN_FIFO, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 4, %99
  store i64 %100, i64* %11, align 8
  %101 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %102 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %101, i32 0, i32 2
  %103 = load i64, i64* %11, align 8
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i32 @kfifo_alloc(i32* %102, i64 %103, i32 %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %75
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %2, align 4
  br label %195

112:                                              ; preds = %75
  %113 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %114 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %113, i32 0, i32 1
  %115 = call i32 @spin_lock_init(i32* %114)
  %116 = load %struct.stratix10_svc_chan*, %struct.stratix10_svc_chan** %6, align 8
  %117 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %116, i64 0
  %118 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %117, i32 0, i32 3
  store i32* null, i32** %118, align 8
  %119 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %120 = load %struct.stratix10_svc_chan*, %struct.stratix10_svc_chan** %6, align 8
  %121 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %120, i64 0
  %122 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %121, i32 0, i32 2
  store %struct.stratix10_svc_controller* %119, %struct.stratix10_svc_controller** %122, align 8
  %123 = load i32, i32* @SVC_CLIENT_FPGA, align 4
  %124 = load %struct.stratix10_svc_chan*, %struct.stratix10_svc_chan** %6, align 8
  %125 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %124, i64 0
  %126 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  %127 = load %struct.stratix10_svc_chan*, %struct.stratix10_svc_chan** %6, align 8
  %128 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %127, i64 0
  %129 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %128, i32 0, i32 0
  %130 = call i32 @spin_lock_init(i32* %129)
  %131 = load %struct.stratix10_svc_chan*, %struct.stratix10_svc_chan** %6, align 8
  %132 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %131, i64 1
  %133 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %132, i32 0, i32 3
  store i32* null, i32** %133, align 8
  %134 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %135 = load %struct.stratix10_svc_chan*, %struct.stratix10_svc_chan** %6, align 8
  %136 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %135, i64 1
  %137 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %136, i32 0, i32 2
  store %struct.stratix10_svc_controller* %134, %struct.stratix10_svc_controller** %137, align 8
  %138 = load i32, i32* @SVC_CLIENT_RSU, align 4
  %139 = load %struct.stratix10_svc_chan*, %struct.stratix10_svc_chan** %6, align 8
  %140 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %139, i64 1
  %141 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  %142 = load %struct.stratix10_svc_chan*, %struct.stratix10_svc_chan** %6, align 8
  %143 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %142, i64 1
  %144 = getelementptr inbounds %struct.stratix10_svc_chan, %struct.stratix10_svc_chan* %143, i32 0, i32 0
  %145 = call i32 @spin_lock_init(i32* %144)
  %146 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %147 = getelementptr inbounds %struct.stratix10_svc_controller, %struct.stratix10_svc_controller* %146, i32 0, i32 0
  %148 = call i32 @list_add_tail(i32* %147, i32* @svc_ctrl)
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = load %struct.stratix10_svc_controller*, %struct.stratix10_svc_controller** %5, align 8
  %151 = call i32 @platform_set_drvdata(%struct.platform_device* %149, %struct.stratix10_svc_controller* %150)
  %152 = load %struct.device*, %struct.device** %4, align 8
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call i8* @devm_kzalloc(%struct.device* %152, i32 4, i32 %153)
  %155 = bitcast i8* %154 to %struct.stratix10_svc*
  store %struct.stratix10_svc* %155, %struct.stratix10_svc** %9, align 8
  %156 = load %struct.stratix10_svc*, %struct.stratix10_svc** %9, align 8
  %157 = icmp ne %struct.stratix10_svc* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %112
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %2, align 4
  br label %195

161:                                              ; preds = %112
  %162 = load i32, i32* @STRATIX10_RSU, align 4
  %163 = call i32 @platform_device_alloc(i32 %162, i32 0)
  %164 = load %struct.stratix10_svc*, %struct.stratix10_svc** %9, align 8
  %165 = getelementptr inbounds %struct.stratix10_svc, %struct.stratix10_svc* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = load %struct.stratix10_svc*, %struct.stratix10_svc** %9, align 8
  %167 = getelementptr inbounds %struct.stratix10_svc, %struct.stratix10_svc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %161
  %171 = load %struct.device*, %struct.device** %4, align 8
  %172 = load i32, i32* @STRATIX10_RSU, align 4
  %173 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %171, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* @ENOMEM, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %2, align 4
  br label %195

176:                                              ; preds = %161
  %177 = load %struct.stratix10_svc*, %struct.stratix10_svc** %9, align 8
  %178 = getelementptr inbounds %struct.stratix10_svc, %struct.stratix10_svc* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @platform_device_add(i32 %179)
  store i32 %180, i32* %12, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %176
  %184 = load %struct.stratix10_svc*, %struct.stratix10_svc** %9, align 8
  %185 = getelementptr inbounds %struct.stratix10_svc, %struct.stratix10_svc* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @platform_device_put(i32 %186)
  %188 = load i32, i32* %12, align 4
  store i32 %188, i32* %2, align 4
  br label %195

189:                                              ; preds = %176
  %190 = load %struct.device*, %struct.device** %4, align 8
  %191 = load %struct.stratix10_svc*, %struct.stratix10_svc** %9, align 8
  %192 = call i32 @dev_set_drvdata(%struct.device* %190, %struct.stratix10_svc* %191)
  %193 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %194 = load i32, i32* %12, align 4
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %189, %183, %170, %158, %108, %72, %60, %50, %42, %30, %20
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32* @get_invoke_func(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @svc_get_sh_memory(%struct.platform_device*, %struct.stratix10_svc_sh_memory*) #1

declare dso_local %struct.gen_pool* @svc_create_memory_pool(%struct.platform_device*, %struct.stratix10_svc_sh_memory*) #1

declare dso_local %struct.stratix10_svc_chan* @devm_kmalloc_array(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kfifo_alloc(i32*, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stratix10_svc_controller*) #1

declare dso_local i32 @platform_device_alloc(i32, i32) #1

declare dso_local i32 @platform_device_add(i32) #1

declare dso_local i32 @platform_device_put(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.stratix10_svc*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
