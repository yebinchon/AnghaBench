; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.crypto_platform_data* }
%struct.crypto_platform_data = type { i32 }
%struct.atmel_aes_dev = type { i32, i32, i32, %struct.crypto_platform_data*, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.crypto_platform_data*, i32, i32, i32, %struct.device* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.resource = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@atmel_aes_done_task = common dso_local global i32 0, align 4
@atmel_aes_queue_task = common dso_local global i32 0, align 4
@ATMEL_AES_QUEUE_LENGTH = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no MEM resource info\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@atmel_aes_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"atmel-aes\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"unable to request aes irq.\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"aes_clk\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"clock initialization failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"can't ioremap\0A\00", align 1
@atmel_aes = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Atmel AES - Using %s, %s for DMA transfers\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"initialization failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_aes_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.atmel_aes_dev*, align 8
  %5 = alloca %struct.crypto_platform_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %13, align 8
  store %struct.crypto_platform_data* %14, %struct.crypto_platform_data** %5, align 8
  %15 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %16 = icmp ne %struct.crypto_platform_data* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call %struct.crypto_platform_data* @atmel_aes_of_init(%struct.platform_device* %18)
  store %struct.crypto_platform_data* %19, %struct.crypto_platform_data** %5, align 8
  %20 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %21 = call i64 @IS_ERR(%struct.crypto_platform_data* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %25 = call i32 @PTR_ERR(%struct.crypto_platform_data* %24)
  store i32 %25, i32* %8, align 4
  br label %231

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %29 = getelementptr inbounds %struct.crypto_platform_data, %struct.crypto_platform_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %231

35:                                               ; preds = %27
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.atmel_aes_dev* @devm_kzalloc(%struct.device* %37, i32 80, i32 %38)
  store %struct.atmel_aes_dev* %39, %struct.atmel_aes_dev** %4, align 8
  %40 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %41 = icmp eq %struct.atmel_aes_dev* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %231

45:                                               ; preds = %35
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %48 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %47, i32 0, i32 12
  store %struct.device* %46, %struct.device** %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %51 = call i32 @platform_set_drvdata(%struct.platform_device* %49, %struct.atmel_aes_dev* %50)
  %52 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %53 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %52, i32 0, i32 4
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %56 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %55, i32 0, i32 11
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %59 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %58, i32 0, i32 2
  %60 = load i32, i32* @atmel_aes_done_task, align 4
  %61 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %62 = ptrtoint %struct.atmel_aes_dev* %61 to i64
  %63 = call i32 @tasklet_init(i32* %59, i32 %60, i64 %62)
  %64 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %65 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %64, i32 0, i32 1
  %66 = load i32, i32* @atmel_aes_queue_task, align 4
  %67 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %68 = ptrtoint %struct.atmel_aes_dev* %67 to i64
  %69 = call i32 @tasklet_init(i32* %65, i32 %66, i64 %68)
  %70 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %71 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %70, i32 0, i32 10
  %72 = load i32, i32* @ATMEL_AES_QUEUE_LENGTH, align 4
  %73 = call i32 @crypto_init_queue(i32* %71, i32 %72)
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load i32, i32* @IORESOURCE_MEM, align 4
  %76 = call %struct.resource* @platform_get_resource(%struct.platform_device* %74, i32 %75, i32 0)
  store %struct.resource* %76, %struct.resource** %7, align 8
  %77 = load %struct.resource*, %struct.resource** %7, align 8
  %78 = icmp ne %struct.resource* %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %45
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @ENODEV, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %224

84:                                               ; preds = %45
  %85 = load %struct.resource*, %struct.resource** %7, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %89 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %88, i32 0, i32 9
  store i32 %87, i32* %89, align 8
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = call i32 @platform_get_irq(%struct.platform_device* %90, i32 0)
  %92 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %93 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %95 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %84
  %99 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %100 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %8, align 4
  br label %224

102:                                              ; preds = %84
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %106 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @atmel_aes_irq, align 4
  %109 = load i32, i32* @IRQF_SHARED, align 4
  %110 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %111 = call i32 @devm_request_irq(%struct.device* %104, i32 %107, i32 %108, i32 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.atmel_aes_dev* %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %102
  %115 = load %struct.device*, %struct.device** %6, align 8
  %116 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %224

117:                                              ; preds = %102
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call %struct.crypto_platform_data* @devm_clk_get(%struct.device* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %121 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %122 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %121, i32 0, i32 3
  store %struct.crypto_platform_data* %120, %struct.crypto_platform_data** %122, align 8
  %123 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %124 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %123, i32 0, i32 3
  %125 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %124, align 8
  %126 = call i64 @IS_ERR(%struct.crypto_platform_data* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %117
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %132 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %131, i32 0, i32 3
  %133 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %132, align 8
  %134 = call i32 @PTR_ERR(%struct.crypto_platform_data* %133)
  store i32 %134, i32* %8, align 4
  br label %224

135:                                              ; preds = %117
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load %struct.resource*, %struct.resource** %7, align 8
  %139 = call %struct.crypto_platform_data* @devm_ioremap_resource(%struct.device* %137, %struct.resource* %138)
  %140 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %141 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %140, i32 0, i32 8
  store %struct.crypto_platform_data* %139, %struct.crypto_platform_data** %141, align 8
  %142 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %143 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %142, i32 0, i32 8
  %144 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %143, align 8
  %145 = call i64 @IS_ERR(%struct.crypto_platform_data* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %135
  %148 = load %struct.device*, %struct.device** %6, align 8
  %149 = call i32 @dev_err(%struct.device* %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %150 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %151 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %150, i32 0, i32 8
  %152 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %151, align 8
  %153 = call i32 @PTR_ERR(%struct.crypto_platform_data* %152)
  store i32 %153, i32* %8, align 4
  br label %224

154:                                              ; preds = %135
  %155 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %156 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %155, i32 0, i32 3
  %157 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %156, align 8
  %158 = call i32 @clk_prepare(%struct.crypto_platform_data* %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  br label %224

162:                                              ; preds = %154
  %163 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %164 = call i32 @atmel_aes_hw_version_init(%struct.atmel_aes_dev* %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %219

168:                                              ; preds = %162
  %169 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %170 = call i32 @atmel_aes_get_cap(%struct.atmel_aes_dev* %169)
  %171 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %172 = call i32 @atmel_aes_buff_init(%struct.atmel_aes_dev* %171)
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  br label %218

176:                                              ; preds = %168
  %177 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %178 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %179 = call i32 @atmel_aes_dma_init(%struct.atmel_aes_dev* %177, %struct.crypto_platform_data* %178)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %215

183:                                              ; preds = %176
  %184 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @atmel_aes, i32 0, i32 0))
  %185 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %186 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %185, i32 0, i32 4
  %187 = call i32 @list_add_tail(i32* %186, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @atmel_aes, i32 0, i32 1))
  %188 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @atmel_aes, i32 0, i32 0))
  %189 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %190 = call i32 @atmel_aes_register_algs(%struct.atmel_aes_dev* %189)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %183
  br label %207

194:                                              ; preds = %183
  %195 = load %struct.device*, %struct.device** %6, align 8
  %196 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %197 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %196, i32 0, i32 6
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @dma_chan_name(i32 %199)
  %201 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %202 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @dma_chan_name(i32 %204)
  %206 = call i32 @dev_info(%struct.device* %195, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %200, i32 %205)
  store i32 0, i32* %2, align 4
  br label %241

207:                                              ; preds = %193
  %208 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @atmel_aes, i32 0, i32 0))
  %209 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %210 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %209, i32 0, i32 4
  %211 = call i32 @list_del(i32* %210)
  %212 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @atmel_aes, i32 0, i32 0))
  %213 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %214 = call i32 @atmel_aes_dma_cleanup(%struct.atmel_aes_dev* %213)
  br label %215

215:                                              ; preds = %207, %182
  %216 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %217 = call i32 @atmel_aes_buff_cleanup(%struct.atmel_aes_dev* %216)
  br label %218

218:                                              ; preds = %215, %175
  br label %219

219:                                              ; preds = %218, %167
  %220 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %221 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %220, i32 0, i32 3
  %222 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %221, align 8
  %223 = call i32 @clk_unprepare(%struct.crypto_platform_data* %222)
  br label %224

224:                                              ; preds = %219, %161, %147, %128, %114, %98, %79
  %225 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %226 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %225, i32 0, i32 2
  %227 = call i32 @tasklet_kill(i32* %226)
  %228 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %4, align 8
  %229 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %228, i32 0, i32 1
  %230 = call i32 @tasklet_kill(i32* %229)
  br label %231

231:                                              ; preds = %224, %42, %32, %23
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* @EPROBE_DEFER, align 4
  %234 = sub nsw i32 0, %233
  %235 = icmp ne i32 %232, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load %struct.device*, %struct.device** %6, align 8
  %238 = call i32 @dev_err(%struct.device* %237, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %239

239:                                              ; preds = %236, %231
  %240 = load i32, i32* %8, align 4
  store i32 %240, i32* %2, align 4
  br label %241

241:                                              ; preds = %239, %194
  %242 = load i32, i32* %2, align 4
  ret i32 %242
}

declare dso_local %struct.crypto_platform_data* @atmel_aes_of_init(%struct.platform_device*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_platform_data*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_platform_data*) #1

declare dso_local %struct.atmel_aes_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atmel_aes_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @crypto_init_queue(i32*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.atmel_aes_dev*) #1

declare dso_local %struct.crypto_platform_data* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local %struct.crypto_platform_data* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @clk_prepare(%struct.crypto_platform_data*) #1

declare dso_local i32 @atmel_aes_hw_version_init(%struct.atmel_aes_dev*) #1

declare dso_local i32 @atmel_aes_get_cap(%struct.atmel_aes_dev*) #1

declare dso_local i32 @atmel_aes_buff_init(%struct.atmel_aes_dev*) #1

declare dso_local i32 @atmel_aes_dma_init(%struct.atmel_aes_dev*, %struct.crypto_platform_data*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atmel_aes_register_algs(%struct.atmel_aes_dev*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dma_chan_name(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @atmel_aes_dma_cleanup(%struct.atmel_aes_dev*) #1

declare dso_local i32 @atmel_aes_buff_cleanup(%struct.atmel_aes_dev*) #1

declare dso_local i32 @clk_unprepare(%struct.crypto_platform_data*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
