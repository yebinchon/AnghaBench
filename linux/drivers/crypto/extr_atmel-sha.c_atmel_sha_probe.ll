; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.crypto_platform_data* }
%struct.crypto_platform_data = type { i32 }
%struct.atmel_sha_dev = type { i32, i32, i32, %struct.crypto_platform_data*, %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.crypto_platform_data*, i32, i32, i32, %struct.device* }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@atmel_sha_done_task = common dso_local global i32 0, align 4
@atmel_sha_queue_task = common dso_local global i32 0, align 4
@ATMEL_SHA_QUEUE_LENGTH = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no MEM resource info\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@atmel_sha_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"atmel-sha\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"unable to request sha irq.\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"sha_clk\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"clock initialization failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"can't ioremap\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"platform data not available\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"using %s for DMA transfers\0A\00", align 1
@atmel_sha = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"Atmel SHA1/SHA256%s%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"/SHA224\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"/SHA384/SHA512\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"initialization failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_sha_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.atmel_sha_dev*, align 8
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
  %14 = call %struct.atmel_sha_dev* @devm_kzalloc(%struct.device* %12, i32 88, i32 %13)
  store %struct.atmel_sha_dev* %14, %struct.atmel_sha_dev** %4, align 8
  %15 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %16 = icmp eq %struct.atmel_sha_dev* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %248

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %23 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %22, i32 0, i32 11
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.atmel_sha_dev* %25)
  %27 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %28 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %27, i32 0, i32 5
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %31 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %30, i32 0, i32 10
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %34 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %33, i32 0, i32 1
  %35 = load i32, i32* @atmel_sha_done_task, align 4
  %36 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %37 = ptrtoint %struct.atmel_sha_dev* %36 to i64
  %38 = call i32 @tasklet_init(i32* %34, i32 %35, i64 %37)
  %39 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %40 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %39, i32 0, i32 2
  %41 = load i32, i32* @atmel_sha_queue_task, align 4
  %42 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %43 = ptrtoint %struct.atmel_sha_dev* %42 to i64
  %44 = call i32 @tasklet_init(i32* %40, i32 %41, i64 %43)
  %45 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %46 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %45, i32 0, i32 9
  %47 = load i32, i32* @ATMEL_SHA_QUEUE_LENGTH, align 4
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
  br label %241

59:                                               ; preds = %20
  %60 = load %struct.resource*, %struct.resource** %7, align 8
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %64 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = call i32 @platform_get_irq(%struct.platform_device* %65, i32 0)
  %67 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %68 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %70 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %75 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %8, align 4
  br label %241

77:                                               ; preds = %59
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %81 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @atmel_sha_irq, align 4
  %84 = load i32, i32* @IRQF_SHARED, align 4
  %85 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %86 = call i32 @devm_request_irq(%struct.device* %79, i32 %82, i32 %83, i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.atmel_sha_dev* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load %struct.device*, %struct.device** %6, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %241

92:                                               ; preds = %77
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call %struct.crypto_platform_data* @devm_clk_get(%struct.device* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %97 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %96, i32 0, i32 3
  store %struct.crypto_platform_data* %95, %struct.crypto_platform_data** %97, align 8
  %98 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %99 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %98, i32 0, i32 3
  %100 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %99, align 8
  %101 = call i64 @IS_ERR(%struct.crypto_platform_data* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %92
  %104 = load %struct.device*, %struct.device** %6, align 8
  %105 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %106 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %107 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %106, i32 0, i32 3
  %108 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %107, align 8
  %109 = call i32 @PTR_ERR(%struct.crypto_platform_data* %108)
  store i32 %109, i32* %8, align 4
  br label %241

110:                                              ; preds = %92
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.resource*, %struct.resource** %7, align 8
  %114 = call %struct.crypto_platform_data* @devm_ioremap_resource(%struct.device* %112, %struct.resource* %113)
  %115 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %116 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %115, i32 0, i32 7
  store %struct.crypto_platform_data* %114, %struct.crypto_platform_data** %116, align 8
  %117 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %118 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %117, i32 0, i32 7
  %119 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %118, align 8
  %120 = call i64 @IS_ERR(%struct.crypto_platform_data* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %110
  %123 = load %struct.device*, %struct.device** %6, align 8
  %124 = call i32 @dev_err(%struct.device* %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %125 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %126 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %125, i32 0, i32 7
  %127 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %126, align 8
  %128 = call i32 @PTR_ERR(%struct.crypto_platform_data* %127)
  store i32 %128, i32* %8, align 4
  br label %241

129:                                              ; preds = %110
  %130 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %131 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %130, i32 0, i32 3
  %132 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %131, align 8
  %133 = call i32 @clk_prepare(%struct.crypto_platform_data* %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %241

137:                                              ; preds = %129
  %138 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %139 = call i32 @atmel_sha_hw_version_init(%struct.atmel_sha_dev* %138)
  %140 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %141 = call i32 @atmel_sha_get_cap(%struct.atmel_sha_dev* %140)
  %142 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %143 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %192

147:                                              ; preds = %137
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.device, %struct.device* %149, i32 0, i32 0
  %151 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %150, align 8
  store %struct.crypto_platform_data* %151, %struct.crypto_platform_data** %5, align 8
  %152 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %153 = icmp ne %struct.crypto_platform_data* %152, null
  br i1 %153, label %167, label %154

154:                                              ; preds = %147
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = call %struct.crypto_platform_data* @atmel_sha_of_init(%struct.platform_device* %155)
  store %struct.crypto_platform_data* %156, %struct.crypto_platform_data** %5, align 8
  %157 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %158 = call i64 @IS_ERR(%struct.crypto_platform_data* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = call i32 @dev_err(%struct.device* %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %164 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %165 = call i32 @PTR_ERR(%struct.crypto_platform_data* %164)
  store i32 %165, i32* %8, align 4
  br label %236

166:                                              ; preds = %154
  br label %167

167:                                              ; preds = %166, %147
  %168 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %169 = getelementptr inbounds %struct.crypto_platform_data, %struct.crypto_platform_data* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* @ENXIO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %8, align 4
  br label %236

175:                                              ; preds = %167
  %176 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %177 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %5, align 8
  %178 = call i32 @atmel_sha_dma_init(%struct.atmel_sha_dev* %176, %struct.crypto_platform_data* %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %235

182:                                              ; preds = %175
  %183 = load %struct.device*, %struct.device** %6, align 8
  %184 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %185 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @dma_chan_name(i32 %187)
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to i8*
  %191 = call i32 (%struct.device*, i8*, i8*, ...) @dev_info(%struct.device* %183, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %190)
  br label %192

192:                                              ; preds = %182, %137
  %193 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @atmel_sha, i32 0, i32 0))
  %194 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %195 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %194, i32 0, i32 5
  %196 = call i32 @list_add_tail(i32* %195, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @atmel_sha, i32 0, i32 1))
  %197 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @atmel_sha, i32 0, i32 0))
  %198 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %199 = call i32 @atmel_sha_register_algs(%struct.atmel_sha_dev* %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %192
  br label %220

203:                                              ; preds = %192
  %204 = load %struct.device*, %struct.device** %6, align 8
  %205 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %206 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %212 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %213 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %212, i32 0, i32 4
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  %217 = zext i1 %216 to i64
  %218 = select i1 %216, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %219 = call i32 (%struct.device*, i8*, i8*, ...) @dev_info(%struct.device* %204, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %211, i8* %218)
  store i32 0, i32* %2, align 4
  br label %252

220:                                              ; preds = %202
  %221 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @atmel_sha, i32 0, i32 0))
  %222 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %223 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %222, i32 0, i32 5
  %224 = call i32 @list_del(i32* %223)
  %225 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @atmel_sha, i32 0, i32 0))
  %226 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %227 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %220
  %232 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %233 = call i32 @atmel_sha_dma_cleanup(%struct.atmel_sha_dev* %232)
  br label %234

234:                                              ; preds = %231, %220
  br label %235

235:                                              ; preds = %234, %181
  br label %236

236:                                              ; preds = %235, %172, %160
  %237 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %238 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %237, i32 0, i32 3
  %239 = load %struct.crypto_platform_data*, %struct.crypto_platform_data** %238, align 8
  %240 = call i32 @clk_unprepare(%struct.crypto_platform_data* %239)
  br label %241

241:                                              ; preds = %236, %136, %122, %103, %89, %73, %54
  %242 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %243 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %242, i32 0, i32 2
  %244 = call i32 @tasklet_kill(i32* %243)
  %245 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %246 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %245, i32 0, i32 1
  %247 = call i32 @tasklet_kill(i32* %246)
  br label %248

248:                                              ; preds = %241, %17
  %249 = load %struct.device*, %struct.device** %6, align 8
  %250 = call i32 @dev_err(%struct.device* %249, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %251 = load i32, i32* %8, align 4
  store i32 %251, i32* %2, align 4
  br label %252

252:                                              ; preds = %248, %203
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local %struct.atmel_sha_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atmel_sha_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @crypto_init_queue(i32*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.atmel_sha_dev*) #1

declare dso_local %struct.crypto_platform_data* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_platform_data*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_platform_data*) #1

declare dso_local %struct.crypto_platform_data* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @clk_prepare(%struct.crypto_platform_data*) #1

declare dso_local i32 @atmel_sha_hw_version_init(%struct.atmel_sha_dev*) #1

declare dso_local i32 @atmel_sha_get_cap(%struct.atmel_sha_dev*) #1

declare dso_local %struct.crypto_platform_data* @atmel_sha_of_init(%struct.platform_device*) #1

declare dso_local i32 @atmel_sha_dma_init(%struct.atmel_sha_dev*, %struct.crypto_platform_data*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, ...) #1

declare dso_local i32 @dma_chan_name(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atmel_sha_register_algs(%struct.atmel_sha_dev*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @atmel_sha_dma_cleanup(%struct.atmel_sha_dev*) #1

declare dso_local i32 @clk_unprepare(%struct.crypto_platform_data*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
