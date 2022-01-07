; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i32, i8*, i8*, i8*, i32, i32, i32, i8**, i64*, i8*, i64, i64, i64, i8*, i8*, i64*, i8**, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_8__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sahara_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not get ipg clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Could not get ahb clock\0A\00", align 1
@SAHARA_MAX_HW_DESC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Could not allocate hw descriptors\0A\00", align 1
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Could not allocate memory for key\0A\00", align 1
@SHA256_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Could not allocate memory for MDHA context\0A\00", align 1
@SAHARA_MAX_HW_LINK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Could not allocate hw links\0A\00", align 1
@SAHARA_QUEUE_LENGTH = common dso_local global i32 0, align 4
@dev_ptr = common dso_local global %struct.sahara_dev* null, align 8
@sahara_queue_manage = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"sahara_crypto\00", align 1
@SAHARA_REG_VERSION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"fsl,imx27-sahara\00", align 1
@SAHARA_VERSION_3 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"fsl,imx53-sahara\00", align 1
@SAHARA_VERSION_4 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"SAHARA version %d not supported\0A\00", align 1
@SAHARA_CMD_RESET = common dso_local global i32 0, align 4
@SAHARA_CMD_MODE_BATCH = common dso_local global i32 0, align 4
@SAHARA_REG_CMD = common dso_local global i32 0, align 4
@SAHARA_CONTROL_RNG_AUTORSD = common dso_local global i32 0, align 4
@SAHARA_CONTROL_ENABLE_INT = common dso_local global i32 0, align 4
@SAHARA_REG_CONTROL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"SAHARA version %d initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sahara_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sahara_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sahara_dev* @devm_kzalloc(%struct.TYPE_8__* %10, i32 144, i32 %11)
  store %struct.sahara_dev* %12, %struct.sahara_dev** %4, align 8
  %13 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %14 = icmp ne %struct.sahara_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %415

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %22 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %21, i32 0, i32 18
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %22, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %25 = call i32 @platform_set_drvdata(%struct.platform_device* %23, %struct.sahara_dev* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %26, i32 0)
  %28 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %29 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %28, i32 0, i32 17
  store i8* %27, i8** %29, align 8
  %30 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %31 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %30, i32 0, i32 17
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @IS_ERR(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  %36 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %37 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %36, i32 0, i32 17
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @PTR_ERR(i8* %38)
  store i32 %39, i32* %2, align 4
  br label %415

40:                                               ; preds = %18
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = call i32 @platform_get_irq(%struct.platform_device* %41, i32 0)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %415

47:                                               ; preds = %40
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @sahara_irq_handler, align 4
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_name(%struct.TYPE_8__* %53)
  %55 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %56 = call i32 @devm_request_irq(%struct.TYPE_8__* %49, i32 %50, i32 %51, i32 0, i32 %54, %struct.sahara_dev* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %415

64:                                               ; preds = %47
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i8* @devm_clk_get(%struct.TYPE_8__* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %69 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %71 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @IS_ERR(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %64
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %80 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %2, align 4
  br label %415

83:                                               ; preds = %64
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i8* @devm_clk_get(%struct.TYPE_8__* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %88 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %90 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @IS_ERR(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %83
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %99 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @PTR_ERR(i8* %100)
  store i32 %101, i32* %2, align 4
  br label %415

102:                                              ; preds = %83
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load i32, i32* @SAHARA_MAX_HW_DESC, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %110 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %109, i32 0, i32 15
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call i8* @dmam_alloc_coherent(%struct.TYPE_8__* %104, i32 %108, i64* %112, i32 %113)
  %115 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %116 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %115, i32 0, i32 16
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 0
  store i8* %114, i8** %118, align 8
  %119 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %120 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %119, i32 0, i32 16
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 0
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %102
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %127, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %415

131:                                              ; preds = %102
  %132 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %133 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %132, i32 0, i32 16
  %134 = load i8**, i8*** %133, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr i8, i8* %136, i64 1
  %138 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %139 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %138, i32 0, i32 16
  %140 = load i8**, i8*** %139, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 1
  store i8* %137, i8** %141, align 8
  %142 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %143 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %142, i32 0, i32 15
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = load i64, i64* %145, align 8
  %147 = add i64 %146, 4
  %148 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %149 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %148, i32 0, i32 15
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 1
  store i64 %147, i64* %151, align 8
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = load i32, i32* @AES_KEYSIZE_128, align 4
  %155 = mul nsw i32 2, %154
  %156 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %157 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %156, i32 0, i32 11
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = call i8* @dmam_alloc_coherent(%struct.TYPE_8__* %153, i32 %155, i64* %157, i32 %158)
  %160 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %161 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %160, i32 0, i32 13
  store i8* %159, i8** %161, align 8
  %162 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %163 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %162, i32 0, i32 13
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %131
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %168, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %415

172:                                              ; preds = %131
  %173 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %174 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %173, i32 0, i32 13
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* @AES_KEYSIZE_128, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr i8, i8* %175, i64 %177
  %179 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %180 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %179, i32 0, i32 14
  store i8* %178, i8** %180, align 8
  %181 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %182 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %181, i32 0, i32 11
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @AES_KEYSIZE_128, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %183, %185
  %187 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %188 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %187, i32 0, i32 12
  store i64 %186, i64* %188, align 8
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = load i32, i32* @SHA256_DIGEST_SIZE, align 4
  %192 = add nsw i32 %191, 4
  %193 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %194 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %193, i32 0, i32 10
  %195 = load i32, i32* @GFP_KERNEL, align 4
  %196 = call i8* @dmam_alloc_coherent(%struct.TYPE_8__* %190, i32 %192, i64* %194, i32 %195)
  %197 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %198 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %197, i32 0, i32 9
  store i8* %196, i8** %198, align 8
  %199 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %200 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %199, i32 0, i32 9
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %209, label %203

203:                                              ; preds = %172
  %204 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %205 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %204, i32 0, i32 0
  %206 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %205, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %207 = load i32, i32* @ENOMEM, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %2, align 4
  br label %415

209:                                              ; preds = %172
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %210, i32 0, i32 0
  %212 = load i32, i32* @SAHARA_MAX_HW_LINK, align 4
  %213 = sext i32 %212 to i64
  %214 = mul i64 %213, 4
  %215 = trunc i64 %214 to i32
  %216 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %217 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %216, i32 0, i32 8
  %218 = load i64*, i64** %217, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 0
  %220 = load i32, i32* @GFP_KERNEL, align 4
  %221 = call i8* @dmam_alloc_coherent(%struct.TYPE_8__* %211, i32 %215, i64* %219, i32 %220)
  %222 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %223 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %222, i32 0, i32 7
  %224 = load i8**, i8*** %223, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 0
  store i8* %221, i8** %225, align 8
  %226 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %227 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %226, i32 0, i32 7
  %228 = load i8**, i8*** %227, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 0
  %230 = load i8*, i8** %229, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %238, label %232

232:                                              ; preds = %209
  %233 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %234 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %233, i32 0, i32 0
  %235 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %234, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %236 = load i32, i32* @ENOMEM, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %2, align 4
  br label %415

238:                                              ; preds = %209
  store i32 1, i32* %8, align 4
  br label %239

239:                                              ; preds = %274, %238
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* @SAHARA_MAX_HW_LINK, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %277

243:                                              ; preds = %239
  %244 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %245 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %244, i32 0, i32 8
  %246 = load i64*, i64** %245, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %246, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = add i64 %251, 4
  %253 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %254 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %253, i32 0, i32 8
  %255 = load i64*, i64** %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %255, i64 %257
  store i64 %252, i64* %258, align 8
  %259 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %260 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %259, i32 0, i32 7
  %261 = load i8**, i8*** %260, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sub nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8*, i8** %261, i64 %264
  %266 = load i8*, i8** %265, align 8
  %267 = getelementptr i8, i8* %266, i64 1
  %268 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %269 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %268, i32 0, i32 7
  %270 = load i8**, i8*** %269, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8*, i8** %270, i64 %272
  store i8* %267, i8** %273, align 8
  br label %274

274:                                              ; preds = %243
  %275 = load i32, i32* %8, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %8, align 4
  br label %239

277:                                              ; preds = %239
  %278 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %279 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %278, i32 0, i32 6
  %280 = load i32, i32* @SAHARA_QUEUE_LENGTH, align 4
  %281 = call i32 @crypto_init_queue(i32* %279, i32 %280)
  %282 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %283 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %282, i32 0, i32 5
  %284 = call i32 @mutex_init(i32* %283)
  %285 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  store %struct.sahara_dev* %285, %struct.sahara_dev** @dev_ptr, align 8
  %286 = load i32, i32* @sahara_queue_manage, align 4
  %287 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %288 = call i8* @kthread_run(i32 %286, %struct.sahara_dev* %287, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %289 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %290 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %289, i32 0, i32 3
  store i8* %288, i8** %290, align 8
  %291 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %292 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %291, i32 0, i32 3
  %293 = load i8*, i8** %292, align 8
  %294 = call i64 @IS_ERR(i8* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %277
  %297 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %298 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %297, i32 0, i32 3
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 @PTR_ERR(i8* %299)
  store i32 %300, i32* %2, align 4
  br label %415

301:                                              ; preds = %277
  %302 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %303 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %302, i32 0, i32 4
  %304 = call i32 @init_completion(i32* %303)
  %305 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %306 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %305, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @clk_prepare_enable(i8* %307)
  store i32 %308, i32* %7, align 4
  %309 = load i32, i32* %7, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %301
  %312 = load i32, i32* %7, align 4
  store i32 %312, i32* %2, align 4
  br label %415

313:                                              ; preds = %301
  %314 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %315 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %314, i32 0, i32 2
  %316 = load i8*, i8** %315, align 8
  %317 = call i32 @clk_prepare_enable(i8* %316)
  store i32 %317, i32* %7, align 4
  %318 = load i32, i32* %7, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %313
  br label %409

321:                                              ; preds = %313
  %322 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %323 = load i32, i32* @SAHARA_REG_VERSION, align 4
  %324 = call i32 @sahara_read(%struct.sahara_dev* %322, i32 %323)
  store i32 %324, i32* %5, align 4
  %325 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %326 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = call i64 @of_device_is_compatible(i32 %328, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %339

331:                                              ; preds = %321
  %332 = load i32, i32* %5, align 4
  %333 = load i32, i32* @SAHARA_VERSION_3, align 4
  %334 = icmp ne i32 %332, %333
  br i1 %334, label %335, label %338

335:                                              ; preds = %331
  %336 = load i32, i32* @ENODEV, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %7, align 4
  br label %338

338:                                              ; preds = %335, %331
  br label %360

339:                                              ; preds = %321
  %340 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %341 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = call i64 @of_device_is_compatible(i32 %343, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %359

346:                                              ; preds = %339
  %347 = load i32, i32* %5, align 4
  %348 = ashr i32 %347, 8
  %349 = and i32 %348, 255
  %350 = load i32, i32* @SAHARA_VERSION_4, align 4
  %351 = icmp ne i32 %349, %350
  br i1 %351, label %352, label %355

352:                                              ; preds = %346
  %353 = load i32, i32* @ENODEV, align 4
  %354 = sub nsw i32 0, %353
  store i32 %354, i32* %7, align 4
  br label %355

355:                                              ; preds = %352, %346
  %356 = load i32, i32* %5, align 4
  %357 = ashr i32 %356, 8
  %358 = and i32 %357, 255
  store i32 %358, i32* %5, align 4
  br label %359

359:                                              ; preds = %355, %339
  br label %360

360:                                              ; preds = %359, %338
  %361 = load i32, i32* %7, align 4
  %362 = load i32, i32* @ENODEV, align 4
  %363 = sub nsw i32 0, %362
  %364 = icmp eq i32 %361, %363
  br i1 %364, label %365, label %370

365:                                              ; preds = %360
  %366 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %367 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %366, i32 0, i32 0
  %368 = load i32, i32* %5, align 4
  %369 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %367, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %368)
  br label %400

370:                                              ; preds = %360
  %371 = load i32, i32* %5, align 4
  %372 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %373 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %372, i32 0, i32 0
  store i32 %371, i32* %373, align 8
  %374 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %375 = load i32, i32* @SAHARA_CMD_RESET, align 4
  %376 = load i32, i32* @SAHARA_CMD_MODE_BATCH, align 4
  %377 = or i32 %375, %376
  %378 = load i32, i32* @SAHARA_REG_CMD, align 4
  %379 = call i32 @sahara_write(%struct.sahara_dev* %374, i32 %377, i32 %378)
  %380 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %381 = call i32 @SAHARA_CONTROL_SET_THROTTLE(i32 0)
  %382 = call i32 @SAHARA_CONTROL_SET_MAXBURST(i32 8)
  %383 = or i32 %381, %382
  %384 = load i32, i32* @SAHARA_CONTROL_RNG_AUTORSD, align 4
  %385 = or i32 %383, %384
  %386 = load i32, i32* @SAHARA_CONTROL_ENABLE_INT, align 4
  %387 = or i32 %385, %386
  %388 = load i32, i32* @SAHARA_REG_CONTROL, align 4
  %389 = call i32 @sahara_write(%struct.sahara_dev* %380, i32 %387, i32 %388)
  %390 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %391 = call i32 @sahara_register_algs(%struct.sahara_dev* %390)
  store i32 %391, i32* %7, align 4
  %392 = load i32, i32* %7, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %370
  br label %400

395:                                              ; preds = %370
  %396 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %397 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %396, i32 0, i32 0
  %398 = load i32, i32* %5, align 4
  %399 = call i32 @dev_info(%struct.TYPE_8__* %397, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %398)
  store i32 0, i32* %2, align 4
  br label %415

400:                                              ; preds = %394, %365
  %401 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %402 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %401, i32 0, i32 3
  %403 = load i8*, i8** %402, align 8
  %404 = call i32 @kthread_stop(i8* %403)
  store %struct.sahara_dev* null, %struct.sahara_dev** @dev_ptr, align 8
  %405 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %406 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %405, i32 0, i32 2
  %407 = load i8*, i8** %406, align 8
  %408 = call i32 @clk_disable_unprepare(i8* %407)
  br label %409

409:                                              ; preds = %400, %320
  %410 = load %struct.sahara_dev*, %struct.sahara_dev** %4, align 8
  %411 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %410, i32 0, i32 1
  %412 = load i8*, i8** %411, align 8
  %413 = call i32 @clk_disable_unprepare(i8* %412)
  %414 = load i32, i32* %7, align 4
  store i32 %414, i32* %2, align 4
  br label %415

415:                                              ; preds = %409, %395, %311, %296, %232, %203, %166, %125, %94, %75, %59, %45, %35, %15
  %416 = load i32, i32* %2, align 4
  ret i32 %416
}

declare dso_local %struct.sahara_dev* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sahara_dev*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_8__*, i32, i32, i32, i32, %struct.sahara_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @dmam_alloc_coherent(%struct.TYPE_8__*, i32, i64*, i32) #1

declare dso_local i32 @crypto_init_queue(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @kthread_run(i32, %struct.sahara_dev*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @sahara_read(%struct.sahara_dev*, i32) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @sahara_write(%struct.sahara_dev*, i32, i32) #1

declare dso_local i32 @SAHARA_CONTROL_SET_THROTTLE(i32) #1

declare dso_local i32 @SAHARA_CONTROL_SET_MAXBURST(i32) #1

declare dso_local i32 @sahara_register_algs(%struct.sahara_dev*) #1

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @kthread_stop(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
