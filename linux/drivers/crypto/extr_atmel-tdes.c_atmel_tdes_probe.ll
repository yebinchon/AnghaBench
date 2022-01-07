; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.crypto_platform_data* }
%struct.crypto_platform_data = type { i32 }
%struct.atmel_tdes_dev = type { i32, i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.crypto_platform_data*, %struct.crypto_platform_data*, i32, i32, i32, %struct.device* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@atmel_tdes_done_task = common dso_local global i32 0, align 4
@atmel_tdes_queue_task = common dso_local global i32 0, align 4
@ATMEL_TDES_QUEUE_LENGTH = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no MEM resource info\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@atmel_tdes_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"atmel-tdes\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unable to request tdes irq.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"tdes_clk\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"clock initialization failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"can't ioremap\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"platform data not available\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"using %s, %s for DMA transfers\0A\00", align 1
@atmel_tdes = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"Atmel DES/TDES\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"initialization failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_tdes_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tdes_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.atmel_tdes_dev*, align 8
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
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.atmel_tdes_dev* @devm_kmalloc(%struct.device* %12, i32 80, i32 %13)
  store %struct.atmel_tdes_dev* %14, %struct.atmel_tdes_dev** %4, align 8
  %15 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %16 = icmp eq %struct.atmel_tdes_dev* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %234

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %23 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %22, i32 0, i32 12
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.atmel_tdes_dev* %25)
  %27 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %28 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %27, i32 0, i32 4
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %31 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %30, i32 0, i32 11
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %34 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %33, i32 0, i32 2
  %35 = load i32, i32* @atmel_tdes_done_task, align 4
  %36 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %37 = ptrtoint %struct.atmel_tdes_dev* %36 to i64
  %38 = call i32 @tasklet_init(i32* %34, i32 %35, i64 %37)
  %39 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %40 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %39, i32 0, i32 1
  %41 = load i32, i32* @atmel_tdes_queue_task, align 4
  %42 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %43 = ptrtoint %struct.atmel_tdes_dev* %42 to i64
  %44 = call i32 @tasklet_init(i32* %40, i32 %41, i64 %43)
  %45 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %46 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %45, i32 0, i32 10
  %47 = load i32, i32* @ATMEL_TDES_QUEUE_LENGTH, align 4
  %48 = call i32 @crypto_init_queue(i32* %46, i32 %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 0)
  store %struct.resource* %51, %struct.resource** %7, align 8
  %52 = load %struct.resource*, %struct.resource** %7, align 8
  %53 = icmp ne %struct.resource* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %20
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %227

59:                                               ; preds = %20
  %60 = load %struct.resource*, %struct.resource** %7, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %64 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %63, i32 0, i32 9
  store i32 %62, i32* %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = call i32 @platform_get_irq(%struct.platform_device* %65, i32 0)
  %67 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %68 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %70 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %75 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %8, align 4
  br label %227

77:                                               ; preds = %59
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %81 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @atmel_tdes_irq, align 4
  %84 = load i32, i32* @IRQF_SHARED, align 4
  %85 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %86 = call i32 @devm_request_irq(%struct.device* %79, i32 %82, i32 %83, i32 %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.atmel_tdes_dev* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %227

92:                                               ; preds = %77
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call %struct.crypto_platform_data* @devm_clk_get(%struct.device* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %97 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %96, i32 0, i32 8
  store %struct.crypto_platform_data* %95, %struct.crypto_platform_data** %97, align 8
  %98 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %99 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %98, i32 0, i32 8
  %100 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %99, align 8
  %101 = call i64 @IS_ERR(%struct.crypto_platform_data* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %92
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %106 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %107 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %106, i32 0, i32 8
  %108 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %107, align 8
  %109 = call i32 @PTR_ERR(%struct.crypto_platform_data* %108)
  store i32 %109, i32* %8, align 4
  br label %227

110:                                              ; preds = %92
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.resource*, %struct.resource** %7, align 8
  %114 = call %struct.crypto_platform_data* @devm_ioremap_resource(%struct.device* %112, %struct.resource* %113)
  %115 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %116 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %115, i32 0, i32 7
  store %struct.crypto_platform_data* %114, %struct.crypto_platform_data** %116, align 8
  %117 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %118 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %117, i32 0, i32 7
  %119 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %118, align 8
  %120 = call i64 @IS_ERR(%struct.crypto_platform_data* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %110
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = call i32 @dev_err(%struct.device* %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %125 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %126 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %125, i32 0, i32 7
  %127 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %126, align 8
  %128 = call i32 @PTR_ERR(%struct.crypto_platform_data* %127)
  store i32 %128, i32* %8, align 4
  br label %227

129:                                              ; preds = %110
  %130 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %131 = call i32 @atmel_tdes_hw_version_init(%struct.atmel_tdes_dev* %130)
  %132 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %133 = call i32 @atmel_tdes_get_cap(%struct.atmel_tdes_dev* %132)
  %134 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %135 = call i32 @atmel_tdes_buff_init(%struct.atmel_tdes_dev* %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %226

139:                                              ; preds = %129
  %140 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %141 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %193

145:                                              ; preds = %139
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.device, %struct.device* %147, i32 0, i32 0
  %149 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %148, align 8
  store %struct.crypto_platform_data* %149, %struct.crypto_platform_data** %5, align 8
  %150 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %151 = icmp ne %struct.crypto_platform_data* %150, null
  br i1 %151, label %165, label %152

152:                                              ; preds = %145
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = call %struct.crypto_platform_data* @atmel_tdes_of_init(%struct.platform_device* %153)
  store %struct.crypto_platform_data* %154, %struct.crypto_platform_data** %5, align 8
  %155 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %156 = call i64 @IS_ERR(%struct.crypto_platform_data* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = call i32 @dev_err(%struct.device* %160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %162 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %163 = call i32 @PTR_ERR(%struct.crypto_platform_data* %162)
  store i32 %163, i32* %8, align 4
  br label %223

164:                                              ; preds = %152
  br label %165

165:                                              ; preds = %164, %145
  %166 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %167 = getelementptr inbounds %struct.crypto_platform_data, %struct.crypto_platform_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %165
  %171 = load i32, i32* @ENXIO, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %8, align 4
  br label %223

173:                                              ; preds = %165
  %174 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %175 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %176 = call i32 @atmel_tdes_dma_init(%struct.atmel_tdes_dev* %174, %struct.crypto_platform_data* %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %222

180:                                              ; preds = %173
  %181 = load %struct.device*, %struct.device** %6, align 8
  %182 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %183 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %182, i32 0, i32 6
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @dma_chan_name(i32 %185)
  %187 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %188 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @dma_chan_name(i32 %190)
  %192 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %181, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %186, i32 %191)
  br label %193

193:                                              ; preds = %180, %139
  %194 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @atmel_tdes, i32 0, i32 0))
  %195 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %196 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %195, i32 0, i32 4
  %197 = call i32 @list_add_tail(i32* %196, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @atmel_tdes, i32 0, i32 1))
  %198 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @atmel_tdes, i32 0, i32 0))
  %199 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %200 = call i32 @atmel_tdes_register_algs(%struct.atmel_tdes_dev* %199)
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %193
  br label %207

204:                                              ; preds = %193
  %205 = load %struct.device*, %struct.device** %6, align 8
  %206 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %205, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %238

207:                                              ; preds = %203
  %208 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @atmel_tdes, i32 0, i32 0))
  %209 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %210 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %209, i32 0, i32 4
  %211 = call i32 @list_del(i32* %210)
  %212 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @atmel_tdes, i32 0, i32 0))
  %213 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %214 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %207
  %219 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %220 = call i32 @atmel_tdes_dma_cleanup(%struct.atmel_tdes_dev* %219)
  br label %221

221:                                              ; preds = %218, %207
  br label %222

222:                                              ; preds = %221, %179
  br label %223

223:                                              ; preds = %222, %170, %158
  %224 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %225 = call i32 @atmel_tdes_buff_cleanup(%struct.atmel_tdes_dev* %224)
  br label %226

226:                                              ; preds = %223, %138
  br label %227

227:                                              ; preds = %226, %122, %103, %89, %73, %54
  %228 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %229 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %228, i32 0, i32 2
  %230 = call i32 @tasklet_kill(i32* %229)
  %231 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %4, align 8
  %232 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %231, i32 0, i32 1
  %233 = call i32 @tasklet_kill(i32* %232)
  br label %234

234:                                              ; preds = %227, %17
  %235 = load %struct.device*, %struct.device** %6, align 8
  %236 = call i32 @dev_err(%struct.device* %235, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %237 = load i32, i32* %8, align 4
  store i32 %237, i32* %2, align 4
  br label %238

238:                                              ; preds = %234, %204
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local %struct.atmel_tdes_dev* @devm_kmalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atmel_tdes_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @crypto_init_queue(i32*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.atmel_tdes_dev*) #1

declare dso_local %struct.crypto_platform_data* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_platform_data*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_platform_data*) #1

declare dso_local %struct.crypto_platform_data* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @atmel_tdes_hw_version_init(%struct.atmel_tdes_dev*) #1

declare dso_local i32 @atmel_tdes_get_cap(%struct.atmel_tdes_dev*) #1

declare dso_local i32 @atmel_tdes_buff_init(%struct.atmel_tdes_dev*) #1

declare dso_local %struct.crypto_platform_data* @atmel_tdes_of_init(%struct.platform_device*) #1

declare dso_local i32 @atmel_tdes_dma_init(%struct.atmel_tdes_dev*, %struct.crypto_platform_data*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @dma_chan_name(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atmel_tdes_register_algs(%struct.atmel_tdes_dev*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @atmel_tdes_dma_cleanup(%struct.atmel_tdes_dev*) #1

declare dso_local i32 @atmel_tdes_buff_cleanup(%struct.atmel_tdes_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
