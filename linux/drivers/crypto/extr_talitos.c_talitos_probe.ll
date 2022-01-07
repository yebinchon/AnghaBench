; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.talitos_private = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, i64*, i64, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i32, %struct.platform_device* }
%struct.TYPE_10__ = type { i32, i8*, i32, i32, i64 }
%struct.resource = type { i32 }
%struct.talitos_crypto_alg = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_15__, %struct.TYPE_16__, %struct.crypto_alg }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.crypto_alg }
%struct.TYPE_16__ = type { %struct.crypto_alg }
%struct.crypto_alg = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to of_iomap\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"fsl,num-channels\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"fsl,channel-fifo-len\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"fsl,exec-units-mask\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"fsl,descriptor-types-mask\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"invalid property data in device tree node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"fsl,sec3.0\00", align 1
@TALITOS_FTR_SRC_LINK_TBL_LEN_INCLUDES_EXTENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"fsl,sec2.1\00", align 1
@TALITOS_FTR_HW_AUTH_CHECK = common dso_local global i32 0, align 4
@TALITOS_FTR_SHA224_HWINIT = common dso_local global i32 0, align 4
@TALITOS_FTR_HMAC_OK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"fsl,sec1.0\00", align 1
@TALITOS_FTR_SEC1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"fsl,sec1.2\00", align 1
@TALITOS12_DEU = common dso_local global i64 0, align 8
@TALITOS12_AESU = common dso_local global i64 0, align 8
@TALITOS12_MDEU = common dso_local global i64 0, align 8
@TALITOS1_CH_STRIDE = common dso_local global i32 0, align 4
@TALITOS10_DEU = common dso_local global i64 0, align 8
@TALITOS10_AESU = common dso_local global i64 0, align 8
@TALITOS10_MDEU = common dso_local global i64 0, align 8
@TALITOS10_AFEU = common dso_local global i64 0, align 8
@TALITOS10_RNGU = common dso_local global i64 0, align 8
@TALITOS10_PKEU = common dso_local global i64 0, align 8
@TALITOS2_DEU = common dso_local global i64 0, align 8
@TALITOS2_AESU = common dso_local global i64 0, align 8
@TALITOS2_MDEU = common dso_local global i64 0, align 8
@TALITOS2_AFEU = common dso_local global i64 0, align 8
@TALITOS2_RNGU = common dso_local global i64 0, align 8
@TALITOS2_PKEU = common dso_local global i64 0, align 8
@TALITOS2_KEU = common dso_local global i64 0, align 8
@TALITOS2_CRCU = common dso_local global i64 0, align 8
@TALITOS2_CH_STRIDE = common dso_local global i32 0, align 4
@talitos1_done_ch0 = common dso_local global i32 0, align 4
@talitos1_done_4ch = common dso_local global i32 0, align 4
@talitos2_done_ch0_2 = common dso_local global i32 0, align 4
@talitos2_done_ch1_3 = common dso_local global i32 0, align 4
@talitos2_done_ch0 = common dso_local global i32 0, align 4
@talitos2_done_4ch = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"failed to allocate channel management space\0A\00", align 1
@TALITOS_CH_BASE_OFFSET = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [36 x i8] c"failed to allocate request fifo %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"failed to initialize device\0A\00", align 1
@DESC_HDR_SEL0_RNG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"failed to register hwrng: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"hwrng\0A\00", align 1
@driver_algs = common dso_local global %struct.TYPE_14__* null, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"%s alg registration failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"%s algorithms registered in /proc/crypto\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @talitos_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talitos_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.talitos_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.talitos_crypto_alg*, align 8
  %12 = alloca %struct.crypto_alg*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.talitos_private* @devm_kzalloc(%struct.device* %19, i32 144, i32 %20)
  store %struct.talitos_private* %21, %struct.talitos_private** %6, align 8
  %22 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %23 = icmp ne %struct.talitos_private* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %633

27:                                               ; preds = %1
  %28 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %29 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %28, i32 0, i32 6
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %33 = call i32 @dev_set_drvdata(%struct.device* %31, %struct.talitos_private* %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %36 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %35, i32 0, i32 20
  store %struct.platform_device* %34, %struct.platform_device** %36, align 8
  %37 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %38 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %37, i32 0, i32 19
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load i32, i32* @IORESOURCE_MEM, align 4
  %42 = call %struct.resource* @platform_get_resource(%struct.platform_device* %40, i32 %41, i32 0)
  store %struct.resource* %42, %struct.resource** %10, align 8
  %43 = load %struct.resource*, %struct.resource** %10, align 8
  %44 = icmp ne %struct.resource* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %27
  %46 = load i32, i32* @ENXIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %633

48:                                               ; preds = %27
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load %struct.resource*, %struct.resource** %10, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.resource*, %struct.resource** %10, align 8
  %54 = call i32 @resource_size(%struct.resource* %53)
  %55 = call i64 @devm_ioremap(%struct.device* %49, i32 %52, i32 %54)
  %56 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %57 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %56, i32 0, i32 9
  store i64 %55, i64* %57, align 8
  %58 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %59 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %48
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %629

67:                                               ; preds = %48
  %68 = load %struct.device_node*, %struct.device_node** %5, align 8
  %69 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %70 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %69, i32 0, i32 0
  %71 = call i32 @of_property_read_u32(%struct.device_node* %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %70)
  %72 = load %struct.device_node*, %struct.device_node** %5, align 8
  %73 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %74 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %73, i32 0, i32 1
  %75 = call i32 @of_property_read_u32(%struct.device_node* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %74)
  %76 = load %struct.device_node*, %struct.device_node** %5, align 8
  %77 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %78 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %77, i32 0, i32 2
  %79 = call i32 @of_property_read_u32(%struct.device_node* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %78)
  %80 = load %struct.device_node*, %struct.device_node** %5, align 8
  %81 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %82 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %81, i32 0, i32 3
  %83 = call i32 @of_property_read_u32(%struct.device_node* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32* %82)
  %84 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %85 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @is_power_of_2(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %67
  %90 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %91 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %96 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %101 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99, %94, %89, %67
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %8, align 4
  br label %629

109:                                              ; preds = %99
  %110 = load %struct.device_node*, %struct.device_node** %5, align 8
  %111 = call i64 @of_device_is_compatible(%struct.device_node* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i32, i32* @TALITOS_FTR_SRC_LINK_TBL_LEN_INCLUDES_EXTENT, align 4
  %115 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %116 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %109
  %120 = load %struct.device_node*, %struct.device_node** %5, align 8
  %121 = call i64 @of_device_is_compatible(%struct.device_node* %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load i32, i32* @TALITOS_FTR_HW_AUTH_CHECK, align 4
  %125 = load i32, i32* @TALITOS_FTR_SHA224_HWINIT, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @TALITOS_FTR_HMAC_OK, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %130 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %123, %119
  %134 = load %struct.device_node*, %struct.device_node** %5, align 8
  %135 = call i64 @of_device_is_compatible(%struct.device_node* %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i32, i32* @TALITOS_FTR_SEC1, align 4
  %139 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %140 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %133
  %144 = load %struct.device_node*, %struct.device_node** %5, align 8
  %145 = call i64 @of_device_is_compatible(%struct.device_node* %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %170

147:                                              ; preds = %143
  %148 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %149 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %148, i32 0, i32 9
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @TALITOS12_DEU, align 8
  %152 = add nsw i64 %150, %151
  %153 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %154 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %153, i32 0, i32 18
  store i64 %152, i64* %154, align 8
  %155 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %156 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %155, i32 0, i32 9
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @TALITOS12_AESU, align 8
  %159 = add nsw i64 %157, %158
  %160 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %161 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %160, i32 0, i32 17
  store i64 %159, i64* %161, align 8
  %162 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %163 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %162, i32 0, i32 9
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @TALITOS12_MDEU, align 8
  %166 = add nsw i64 %164, %165
  %167 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %168 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %167, i32 0, i32 16
  store i64 %166, i64* %168, align 8
  %169 = load i32, i32* @TALITOS1_CH_STRIDE, align 4
  store i32 %169, i32* %9, align 4
  br label %277

170:                                              ; preds = %143
  %171 = load %struct.device_node*, %struct.device_node** %5, align 8
  %172 = call i64 @of_device_is_compatible(%struct.device_node* %171, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %218

174:                                              ; preds = %170
  %175 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %176 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %175, i32 0, i32 9
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @TALITOS10_DEU, align 8
  %179 = add nsw i64 %177, %178
  %180 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %181 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %180, i32 0, i32 18
  store i64 %179, i64* %181, align 8
  %182 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %183 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %182, i32 0, i32 9
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @TALITOS10_AESU, align 8
  %186 = add nsw i64 %184, %185
  %187 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %188 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %187, i32 0, i32 17
  store i64 %186, i64* %188, align 8
  %189 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %190 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %189, i32 0, i32 9
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @TALITOS10_MDEU, align 8
  %193 = add nsw i64 %191, %192
  %194 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %195 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %194, i32 0, i32 16
  store i64 %193, i64* %195, align 8
  %196 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %197 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %196, i32 0, i32 9
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @TALITOS10_AFEU, align 8
  %200 = add nsw i64 %198, %199
  %201 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %202 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %201, i32 0, i32 15
  store i64 %200, i64* %202, align 8
  %203 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %204 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %203, i32 0, i32 9
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @TALITOS10_RNGU, align 8
  %207 = add nsw i64 %205, %206
  %208 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %209 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %208, i32 0, i32 14
  store i64 %207, i64* %209, align 8
  %210 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %211 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %210, i32 0, i32 9
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @TALITOS10_PKEU, align 8
  %214 = add nsw i64 %212, %213
  %215 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %216 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %215, i32 0, i32 13
  store i64 %214, i64* %216, align 8
  %217 = load i32, i32* @TALITOS1_CH_STRIDE, align 4
  store i32 %217, i32* %9, align 4
  br label %276

218:                                              ; preds = %170
  %219 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %220 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %219, i32 0, i32 9
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @TALITOS2_DEU, align 8
  %223 = add nsw i64 %221, %222
  %224 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %225 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %224, i32 0, i32 18
  store i64 %223, i64* %225, align 8
  %226 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %227 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %226, i32 0, i32 9
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @TALITOS2_AESU, align 8
  %230 = add nsw i64 %228, %229
  %231 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %232 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %231, i32 0, i32 17
  store i64 %230, i64* %232, align 8
  %233 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %234 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %233, i32 0, i32 9
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @TALITOS2_MDEU, align 8
  %237 = add nsw i64 %235, %236
  %238 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %239 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %238, i32 0, i32 16
  store i64 %237, i64* %239, align 8
  %240 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %241 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %240, i32 0, i32 9
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @TALITOS2_AFEU, align 8
  %244 = add nsw i64 %242, %243
  %245 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %246 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %245, i32 0, i32 15
  store i64 %244, i64* %246, align 8
  %247 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %248 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %247, i32 0, i32 9
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @TALITOS2_RNGU, align 8
  %251 = add nsw i64 %249, %250
  %252 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %253 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %252, i32 0, i32 14
  store i64 %251, i64* %253, align 8
  %254 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %255 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %254, i32 0, i32 9
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @TALITOS2_PKEU, align 8
  %258 = add nsw i64 %256, %257
  %259 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %260 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %259, i32 0, i32 13
  store i64 %258, i64* %260, align 8
  %261 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %262 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %261, i32 0, i32 9
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @TALITOS2_KEU, align 8
  %265 = add nsw i64 %263, %264
  %266 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %267 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %266, i32 0, i32 12
  store i64 %265, i64* %267, align 8
  %268 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %269 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %268, i32 0, i32 9
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @TALITOS2_CRCU, align 8
  %272 = add nsw i64 %270, %271
  %273 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %274 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %273, i32 0, i32 11
  store i64 %272, i64* %274, align 8
  %275 = load i32, i32* @TALITOS2_CH_STRIDE, align 4
  store i32 %275, i32* %9, align 4
  br label %276

276:                                              ; preds = %218, %174
  br label %277

277:                                              ; preds = %276, %147
  %278 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %279 = call i32 @talitos_probe_irq(%struct.platform_device* %278)
  store i32 %279, i32* %8, align 4
  %280 = load i32, i32* %8, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  br label %629

283:                                              ; preds = %277
  %284 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %285 = call i64 @has_ftr_sec1(%struct.talitos_private* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %311

287:                                              ; preds = %283
  %288 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %289 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %292, label %301

292:                                              ; preds = %287
  %293 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %294 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %293, i32 0, i32 10
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  %297 = load i32, i32* @talitos1_done_ch0, align 4
  %298 = load %struct.device*, %struct.device** %4, align 8
  %299 = ptrtoint %struct.device* %298 to i64
  %300 = call i32 @tasklet_init(i32* %296, i32 %297, i64 %299)
  br label %310

301:                                              ; preds = %287
  %302 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %303 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %302, i32 0, i32 10
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = load i32, i32* @talitos1_done_4ch, align 4
  %307 = load %struct.device*, %struct.device** %4, align 8
  %308 = ptrtoint %struct.device* %307 to i64
  %309 = call i32 @tasklet_init(i32* %305, i32 %306, i64 %308)
  br label %310

310:                                              ; preds = %301, %292
  br label %360

311:                                              ; preds = %283
  %312 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %313 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %312, i32 0, i32 8
  %314 = load i64*, i64** %313, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 1
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %335

318:                                              ; preds = %311
  %319 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %320 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %319, i32 0, i32 10
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 0
  %323 = load i32, i32* @talitos2_done_ch0_2, align 4
  %324 = load %struct.device*, %struct.device** %4, align 8
  %325 = ptrtoint %struct.device* %324 to i64
  %326 = call i32 @tasklet_init(i32* %322, i32 %323, i64 %325)
  %327 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %328 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %327, i32 0, i32 10
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 1
  %331 = load i32, i32* @talitos2_done_ch1_3, align 4
  %332 = load %struct.device*, %struct.device** %4, align 8
  %333 = ptrtoint %struct.device* %332 to i64
  %334 = call i32 @tasklet_init(i32* %330, i32 %331, i64 %333)
  br label %359

335:                                              ; preds = %311
  %336 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %337 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %340, label %349

340:                                              ; preds = %335
  %341 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %342 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %341, i32 0, i32 10
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 0
  %345 = load i32, i32* @talitos2_done_ch0, align 4
  %346 = load %struct.device*, %struct.device** %4, align 8
  %347 = ptrtoint %struct.device* %346 to i64
  %348 = call i32 @tasklet_init(i32* %344, i32 %345, i64 %347)
  br label %358

349:                                              ; preds = %335
  %350 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %351 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %350, i32 0, i32 10
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 0
  %354 = load i32, i32* @talitos2_done_4ch, align 4
  %355 = load %struct.device*, %struct.device** %4, align 8
  %356 = ptrtoint %struct.device* %355 to i64
  %357 = call i32 @tasklet_init(i32* %353, i32 %354, i64 %356)
  br label %358

358:                                              ; preds = %349, %340
  br label %359

359:                                              ; preds = %358, %318
  br label %360

360:                                              ; preds = %359, %310
  %361 = load %struct.device*, %struct.device** %4, align 8
  %362 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %363 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @GFP_KERNEL, align 4
  %366 = call i8* @devm_kcalloc(%struct.device* %361, i32 %364, i32 4, i32 %365)
  %367 = bitcast i8* %366 to %struct.TYPE_10__*
  %368 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %369 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %368, i32 0, i32 7
  store %struct.TYPE_10__* %367, %struct.TYPE_10__** %369, align 8
  %370 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %371 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %370, i32 0, i32 7
  %372 = load %struct.TYPE_10__*, %struct.TYPE_10__** %371, align 8
  %373 = icmp ne %struct.TYPE_10__* %372, null
  br i1 %373, label %379, label %374

374:                                              ; preds = %360
  %375 = load %struct.device*, %struct.device** %4, align 8
  %376 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %375, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %377 = load i32, i32* @ENOMEM, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %8, align 4
  br label %629

379:                                              ; preds = %360
  %380 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %381 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = call i32 @roundup_pow_of_two(i32 %382)
  %384 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %385 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %384, i32 0, i32 5
  store i32 %383, i32* %385, align 4
  store i32 0, i32* %7, align 4
  br label %386

386:                                              ; preds = %489, %379
  %387 = load i32, i32* %7, align 4
  %388 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %389 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = icmp slt i32 %387, %390
  br i1 %391, label %392, label %492

392:                                              ; preds = %386
  %393 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %394 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %393, i32 0, i32 9
  %395 = load i64, i64* %394, align 8
  %396 = load i32, i32* %9, align 4
  %397 = load i32, i32* %7, align 4
  %398 = add nsw i32 %397, 1
  %399 = mul nsw i32 %396, %398
  %400 = sext i32 %399 to i64
  %401 = add nsw i64 %395, %400
  %402 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %403 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %402, i32 0, i32 7
  %404 = load %struct.TYPE_10__*, %struct.TYPE_10__** %403, align 8
  %405 = load i32, i32* %7, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i32 0, i32 4
  store i64 %401, i64* %408, align 8
  %409 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %410 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %409, i32 0, i32 8
  %411 = load i64*, i64** %410, align 8
  %412 = getelementptr inbounds i64, i64* %411, i64 1
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %392
  %416 = load i32, i32* %7, align 4
  %417 = and i32 %416, 1
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %430, label %419

419:                                              ; preds = %415, %392
  %420 = load i64, i64* @TALITOS_CH_BASE_OFFSET, align 8
  %421 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %422 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %421, i32 0, i32 7
  %423 = load %struct.TYPE_10__*, %struct.TYPE_10__** %422, align 8
  %424 = load i32, i32* %7, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %426, i32 0, i32 4
  %428 = load i64, i64* %427, align 8
  %429 = add nsw i64 %428, %420
  store i64 %429, i64* %427, align 8
  br label %430

430:                                              ; preds = %419, %415
  %431 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %432 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %431, i32 0, i32 7
  %433 = load %struct.TYPE_10__*, %struct.TYPE_10__** %432, align 8
  %434 = load i32, i32* %7, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %436, i32 0, i32 3
  %438 = call i32 @spin_lock_init(i32* %437)
  %439 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %440 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %439, i32 0, i32 7
  %441 = load %struct.TYPE_10__*, %struct.TYPE_10__** %440, align 8
  %442 = load i32, i32* %7, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %441, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %444, i32 0, i32 2
  %446 = call i32 @spin_lock_init(i32* %445)
  %447 = load %struct.device*, %struct.device** %4, align 8
  %448 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %449 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %448, i32 0, i32 5
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* @GFP_KERNEL, align 4
  %452 = call i8* @devm_kcalloc(%struct.device* %447, i32 %450, i32 4, i32 %451)
  %453 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %454 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %453, i32 0, i32 7
  %455 = load %struct.TYPE_10__*, %struct.TYPE_10__** %454, align 8
  %456 = load i32, i32* %7, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %455, i64 %457
  %459 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %458, i32 0, i32 1
  store i8* %452, i8** %459, align 8
  %460 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %461 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %460, i32 0, i32 7
  %462 = load %struct.TYPE_10__*, %struct.TYPE_10__** %461, align 8
  %463 = load i32, i32* %7, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i64 %464
  %466 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %465, i32 0, i32 1
  %467 = load i8*, i8** %466, align 8
  %468 = icmp ne i8* %467, null
  br i1 %468, label %475, label %469

469:                                              ; preds = %430
  %470 = load %struct.device*, %struct.device** %4, align 8
  %471 = load i32, i32* %7, align 4
  %472 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %470, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %471)
  %473 = load i32, i32* @ENOMEM, align 4
  %474 = sub nsw i32 0, %473
  store i32 %474, i32* %8, align 4
  br label %629

475:                                              ; preds = %430
  %476 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %477 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %476, i32 0, i32 7
  %478 = load %struct.TYPE_10__*, %struct.TYPE_10__** %477, align 8
  %479 = load i32, i32* %7, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %478, i64 %480
  %482 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %481, i32 0, i32 0
  %483 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %484 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = sub nsw i32 %485, 1
  %487 = sub nsw i32 0, %486
  %488 = call i32 @atomic_set(i32* %482, i32 %487)
  br label %489

489:                                              ; preds = %475
  %490 = load i32, i32* %7, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %7, align 4
  br label %386

492:                                              ; preds = %386
  %493 = load %struct.device*, %struct.device** %4, align 8
  %494 = call i32 @DMA_BIT_MASK(i32 36)
  %495 = call i32 @dma_set_mask(%struct.device* %493, i32 %494)
  %496 = load %struct.device*, %struct.device** %4, align 8
  %497 = call i32 @init_device(%struct.device* %496)
  store i32 %497, i32* %8, align 4
  %498 = load i32, i32* %8, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %503

500:                                              ; preds = %492
  %501 = load %struct.device*, %struct.device** %4, align 8
  %502 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %501, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %629

503:                                              ; preds = %492
  %504 = load %struct.device*, %struct.device** %4, align 8
  %505 = load i32, i32* @DESC_HDR_SEL0_RNG, align 4
  %506 = call i64 @hw_supports(%struct.device* %504, i32 %505)
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %521

508:                                              ; preds = %503
  %509 = load %struct.device*, %struct.device** %4, align 8
  %510 = call i32 @talitos_register_rng(%struct.device* %509)
  store i32 %510, i32* %8, align 4
  %511 = load i32, i32* %8, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %517

513:                                              ; preds = %508
  %514 = load %struct.device*, %struct.device** %4, align 8
  %515 = load i32, i32* %8, align 4
  %516 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %514, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %515)
  br label %629

517:                                              ; preds = %508
  %518 = load %struct.device*, %struct.device** %4, align 8
  %519 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %518, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %520

520:                                              ; preds = %517
  br label %521

521:                                              ; preds = %520, %503
  store i32 0, i32* %7, align 4
  br label %522

522:                                              ; preds = %614, %521
  %523 = load i32, i32* %7, align 4
  %524 = load %struct.TYPE_14__*, %struct.TYPE_14__** @driver_algs, align 8
  %525 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %524)
  %526 = icmp slt i32 %523, %525
  br i1 %526, label %527, label %617

527:                                              ; preds = %522
  %528 = load %struct.device*, %struct.device** %4, align 8
  %529 = load %struct.TYPE_14__*, %struct.TYPE_14__** @driver_algs, align 8
  %530 = load i32, i32* %7, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %529, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = call i64 @hw_supports(%struct.device* %528, i32 %534)
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %613

537:                                              ; preds = %527
  store %struct.crypto_alg* null, %struct.crypto_alg** %12, align 8
  %538 = load %struct.device*, %struct.device** %4, align 8
  %539 = load %struct.TYPE_14__*, %struct.TYPE_14__** @driver_algs, align 8
  %540 = load i32, i32* %7, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %539, i64 %541
  %543 = call %struct.talitos_crypto_alg* @talitos_alg_alloc(%struct.device* %538, %struct.TYPE_14__* %542)
  store %struct.talitos_crypto_alg* %543, %struct.talitos_crypto_alg** %11, align 8
  %544 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %11, align 8
  %545 = call i64 @IS_ERR(%struct.talitos_crypto_alg* %544)
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %556

547:                                              ; preds = %537
  %548 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %11, align 8
  %549 = call i32 @PTR_ERR(%struct.talitos_crypto_alg* %548)
  store i32 %549, i32* %8, align 4
  %550 = load i32, i32* %8, align 4
  %551 = load i32, i32* @ENOTSUPP, align 4
  %552 = sub nsw i32 0, %551
  %553 = icmp eq i32 %550, %552
  br i1 %553, label %554, label %555

554:                                              ; preds = %547
  br label %614

555:                                              ; preds = %547
  br label %629

556:                                              ; preds = %537
  %557 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %11, align 8
  %558 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %557, i32 0, i32 1
  %559 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 4
  switch i32 %560, label %594 [
    i32 130, label %561
    i32 129, label %571
    i32 128, label %582
  ]

561:                                              ; preds = %556
  %562 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %11, align 8
  %563 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %562, i32 0, i32 1
  %564 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %564, i32 0, i32 2
  %566 = call i32 @crypto_register_alg(%struct.crypto_alg* %565)
  store i32 %566, i32* %8, align 4
  %567 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %11, align 8
  %568 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %567, i32 0, i32 1
  %569 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %569, i32 0, i32 2
  store %struct.crypto_alg* %570, %struct.crypto_alg** %12, align 8
  br label %594

571:                                              ; preds = %556
  %572 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %11, align 8
  %573 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %572, i32 0, i32 1
  %574 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %573, i32 0, i32 1
  %575 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %574, i32 0, i32 1
  %576 = call i32 @crypto_register_aead(%struct.TYPE_16__* %575)
  store i32 %576, i32* %8, align 4
  %577 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %11, align 8
  %578 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %577, i32 0, i32 1
  %579 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %578, i32 0, i32 1
  %580 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %579, i32 0, i32 1
  %581 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %580, i32 0, i32 0
  store %struct.crypto_alg* %581, %struct.crypto_alg** %12, align 8
  br label %594

582:                                              ; preds = %556
  %583 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %11, align 8
  %584 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %583, i32 0, i32 1
  %585 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %585, i32 0, i32 0
  %587 = call i32 @crypto_register_ahash(%struct.TYPE_15__* %586)
  store i32 %587, i32* %8, align 4
  %588 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %11, align 8
  %589 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %588, i32 0, i32 1
  %590 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %589, i32 0, i32 1
  %591 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %591, i32 0, i32 0
  %593 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %592, i32 0, i32 0
  store %struct.crypto_alg* %593, %struct.crypto_alg** %12, align 8
  br label %594

594:                                              ; preds = %556, %582, %571, %561
  %595 = load i32, i32* %8, align 4
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %606

597:                                              ; preds = %594
  %598 = load %struct.device*, %struct.device** %4, align 8
  %599 = load %struct.crypto_alg*, %struct.crypto_alg** %12, align 8
  %600 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 4
  %602 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %598, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %601)
  %603 = load %struct.device*, %struct.device** %4, align 8
  %604 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %11, align 8
  %605 = call i32 @devm_kfree(%struct.device* %603, %struct.talitos_crypto_alg* %604)
  br label %612

606:                                              ; preds = %594
  %607 = load %struct.talitos_crypto_alg*, %struct.talitos_crypto_alg** %11, align 8
  %608 = getelementptr inbounds %struct.talitos_crypto_alg, %struct.talitos_crypto_alg* %607, i32 0, i32 0
  %609 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %610 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %609, i32 0, i32 6
  %611 = call i32 @list_add_tail(i32* %608, i32* %610)
  br label %612

612:                                              ; preds = %606, %597
  br label %613

613:                                              ; preds = %612, %527
  br label %614

614:                                              ; preds = %613, %554
  %615 = load i32, i32* %7, align 4
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* %7, align 4
  br label %522

617:                                              ; preds = %522
  %618 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %619 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %618, i32 0, i32 6
  %620 = call i32 @list_empty(i32* %619)
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %628, label %622

622:                                              ; preds = %617
  %623 = load %struct.device*, %struct.device** %4, align 8
  %624 = load %struct.device_node*, %struct.device_node** %5, align 8
  %625 = call i64 @of_get_property(%struct.device_node* %624, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32* null)
  %626 = inttoptr i64 %625 to i8*
  %627 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %623, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.16, i64 0, i64 0), i8* %626)
  br label %628

628:                                              ; preds = %622, %617
  store i32 0, i32* %2, align 4
  br label %633

629:                                              ; preds = %555, %513, %500, %469, %374, %282, %104, %62
  %630 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %631 = call i32 @talitos_remove(%struct.platform_device* %630)
  %632 = load i32, i32* %8, align 4
  store i32 %632, i32* %2, align 4
  br label %633

633:                                              ; preds = %629, %628, %45, %24
  %634 = load i32, i32* %2, align 4
  ret i32 %634
}

declare dso_local %struct.talitos_private* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.talitos_private*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @talitos_probe_irq(%struct.platform_device*) #1

declare dso_local i64 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dma_set_mask(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @init_device(%struct.device*) #1

declare dso_local i64 @hw_supports(%struct.device*, i32) #1

declare dso_local i32 @talitos_register_rng(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local %struct.talitos_crypto_alg* @talitos_alg_alloc(%struct.device*, %struct.TYPE_14__*) #1

declare dso_local i64 @IS_ERR(%struct.talitos_crypto_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.talitos_crypto_alg*) #1

declare dso_local i32 @crypto_register_alg(%struct.crypto_alg*) #1

declare dso_local i32 @crypto_register_aead(%struct.TYPE_16__*) #1

declare dso_local i32 @crypto_register_ahash(%struct.TYPE_15__*) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.talitos_crypto_alg*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @talitos_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
