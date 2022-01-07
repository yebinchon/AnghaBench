; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_picoxcell_crypto.c_spacc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.spacc_engine = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_19__*, %struct.TYPE_21__*, i32, %struct.TYPE_20__*, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, i32, %struct.spacc_engine* }
%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__, i32, %struct.spacc_engine* }
%struct.TYPE_16__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"picochip,spacc-ipsec\00", align 1
@SPACC_CRYPTO_IPSEC_MAX_CTXS = common dso_local global i32 0, align 4
@SPACC_CRYPTO_IPSEC_CIPHER_PG_SZ = common dso_local global i32 0, align 4
@SPACC_CRYPTO_IPSEC_HASH_PG_SZ = common dso_local global i32 0, align 4
@SPACC_CRYPTO_IPSEC_FIFO_SZ = common dso_local global i32 0, align 4
@ipsec_engine_algs = common dso_local global i8* null, align 8
@ipsec_engine_aeads = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"picochip,spacc-l2\00", align 1
@SPACC_CRYPTO_L2_MAX_CTXS = common dso_local global i32 0, align 4
@SPACC_CRYPTO_L2_CIPHER_PG_SZ = common dso_local global i32 0, align 4
@SPACC_CRYPTO_L2_HASH_PG_SZ = common dso_local global i32 0, align 4
@SPACC_CRYPTO_L2_FIFO_SZ = common dso_local global i32 0, align 4
@l2_engine_algs = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"no memory/irq resource for engine\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@spacc_spacc_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SPA_CIPH_KEY_BASE_REG_OFFSET = common dso_local global i64 0, align 8
@SPA_HASH_KEY_BASE_REG_OFFSET = common dso_local global i64 0, align 8
@MAX_DDT_LEN = common dso_local global i32 0, align 4
@SZ_64K = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"clk unavailable\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unable to prepare/enable clk\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@dev_attr_stat_irq_thresh = common dso_local global i32 0, align 4
@SPA_IRQ_CTRL_STAT_CNT_OFFSET = common dso_local global i32 0, align 4
@SPA_IRQ_CTRL_REG_OFFSET = common dso_local global i64 0, align 8
@SPA_IRQ_EN_STAT_EN = common dso_local global i32 0, align 4
@SPA_IRQ_EN_GLBL_EN = common dso_local global i32 0, align 4
@SPA_IRQ_EN_REG_OFFSET = common dso_local global i64 0, align 8
@spacc_packet_timeout = common dso_local global i32 0, align 4
@spacc_spacc_complete = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to register alg \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"registered alg \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spacc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spacc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.spacc_engine*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %8, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.spacc_engine* @devm_kzalloc(%struct.TYPE_21__* %15, i32 152, i32 %16)
  store %struct.spacc_engine* %17, %struct.spacc_engine** %9, align 8
  %18 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %19 = icmp ne %struct.spacc_engine* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %447

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %8, align 8
  %25 = call i64 @of_device_is_compatible(%struct.device_node* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = load i32, i32* @SPACC_CRYPTO_IPSEC_MAX_CTXS, align 4
  %29 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %30 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %29, i32 0, i32 24
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @SPACC_CRYPTO_IPSEC_CIPHER_PG_SZ, align 4
  %32 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %33 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %32, i32 0, i32 23
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @SPACC_CRYPTO_IPSEC_HASH_PG_SZ, align 4
  %35 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %36 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %35, i32 0, i32 22
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @SPACC_CRYPTO_IPSEC_FIFO_SZ, align 4
  %38 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %39 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** @ipsec_engine_algs, align 8
  %41 = bitcast i8* %40 to %struct.TYPE_20__*
  %42 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %43 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %42, i32 0, i32 9
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %43, align 8
  %44 = load i8*, i8** @ipsec_engine_algs, align 8
  %45 = call i8* @ARRAY_SIZE(i8* %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %48 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i8*, i8** @ipsec_engine_aeads, align 8
  %50 = bitcast i8* %49 to %struct.TYPE_19__*
  %51 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %52 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %51, i32 0, i32 6
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %52, align 8
  %53 = load i8*, i8** @ipsec_engine_aeads, align 8
  %54 = call i8* @ARRAY_SIZE(i8* %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %57 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %88

58:                                               ; preds = %23
  %59 = load %struct.device_node*, %struct.device_node** %8, align 8
  %60 = call i64 @of_device_is_compatible(%struct.device_node* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load i32, i32* @SPACC_CRYPTO_L2_MAX_CTXS, align 4
  %64 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %65 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %64, i32 0, i32 24
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @SPACC_CRYPTO_L2_CIPHER_PG_SZ, align 4
  %67 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %68 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %67, i32 0, i32 23
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @SPACC_CRYPTO_L2_HASH_PG_SZ, align 4
  %70 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %71 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %70, i32 0, i32 22
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @SPACC_CRYPTO_L2_FIFO_SZ, align 4
  %73 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %74 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** @l2_engine_algs, align 8
  %76 = bitcast i8* %75 to %struct.TYPE_20__*
  %77 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %78 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %77, i32 0, i32 9
  store %struct.TYPE_20__* %76, %struct.TYPE_20__** %78, align 8
  %79 = load i8*, i8** @l2_engine_algs, align 8
  %80 = call i8* @ARRAY_SIZE(i8* %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %83 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %87

84:                                               ; preds = %58
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %447

87:                                               ; preds = %62
  br label %88

88:                                               ; preds = %87, %27
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_name(%struct.TYPE_21__* %90)
  %92 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %93 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %92, i32 0, i32 19
  store i32 %91, i32* %93, align 8
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %94, i32 0)
  %96 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %97 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %96, i32 0, i32 16
  store i64 %95, i64* %97, align 8
  %98 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %99 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %98, i32 0, i32 16
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @IS_ERR(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %88
  %104 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %105 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %104, i32 0, i32 16
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @PTR_ERR(i64 %106)
  store i32 %107, i32* %2, align 4
  br label %447

108:                                              ; preds = %88
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = load i32, i32* @IORESOURCE_IRQ, align 4
  %111 = call %struct.resource* @platform_get_resource(%struct.platform_device* %109, i32 %110, i32 0)
  store %struct.resource* %111, %struct.resource** %7, align 8
  %112 = load %struct.resource*, %struct.resource** %7, align 8
  %113 = icmp ne %struct.resource* %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* @ENXIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %447

120:                                              ; preds = %108
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load %struct.resource*, %struct.resource** %7, align 8
  %124 = getelementptr inbounds %struct.resource, %struct.resource* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @spacc_spacc_irq, align 4
  %127 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %128 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %127, i32 0, i32 19
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %131 = call i64 @devm_request_irq(%struct.TYPE_21__* %122, i32 %125, i32 %126, i32 0, i32 %129, %struct.spacc_engine* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %120
  %134 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %135 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %134, i32 0, i32 7
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %135, align 8
  %137 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* @EBUSY, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %447

140:                                              ; preds = %120
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %144 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %143, i32 0, i32 7
  store %struct.TYPE_21__* %142, %struct.TYPE_21__** %144, align 8
  %145 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %146 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %145, i32 0, i32 16
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @SPA_CIPH_KEY_BASE_REG_OFFSET, align 8
  %149 = add nsw i64 %147, %148
  %150 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %151 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %150, i32 0, i32 21
  store i64 %149, i64* %151, align 8
  %152 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %153 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %152, i32 0, i32 16
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @SPA_HASH_KEY_BASE_REG_OFFSET, align 8
  %156 = add nsw i64 %154, %155
  %157 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %158 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %157, i32 0, i32 20
  store i64 %156, i64* %158, align 8
  %159 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %160 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %159, i32 0, i32 19
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %163 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %162, i32 0, i32 7
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %163, align 8
  %165 = load i32, i32* @MAX_DDT_LEN, align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 4
  %168 = trunc i64 %167 to i32
  %169 = load i32, i32* @SZ_64K, align 4
  %170 = call i32 @dmam_pool_create(i32 %161, %struct.TYPE_21__* %164, i32 %168, i32 8, i32 %169)
  %171 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %172 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %171, i32 0, i32 18
  store i32 %170, i32* %172, align 4
  %173 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %174 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %173, i32 0, i32 18
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %140
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %2, align 4
  br label %447

180:                                              ; preds = %140
  %181 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %182 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %181, i32 0, i32 17
  %183 = call i32 @spin_lock_init(i32* %182)
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = call i64 @clk_get(%struct.TYPE_21__* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %187 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %188 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %187, i32 0, i32 4
  store i64 %186, i64* %188, align 8
  %189 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %190 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @IS_ERR(i64 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %180
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = call i32 @dev_info(%struct.TYPE_21__* %196, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %198 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %199 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @PTR_ERR(i64 %200)
  store i32 %201, i32* %2, align 4
  br label %447

202:                                              ; preds = %180
  %203 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %204 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @clk_prepare_enable(i64 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %202
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = call i32 @dev_info(%struct.TYPE_21__* %210, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %212 = load i32, i32* @EIO, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %6, align 4
  br label %441

214:                                              ; preds = %202
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = call i32 @device_create_file(%struct.TYPE_21__* %216, i32* @dev_attr_stat_irq_thresh)
  store i32 %217, i32* %6, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  br label %436

221:                                              ; preds = %214
  %222 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %223 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sdiv i32 %224, 2
  %226 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %227 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %226, i32 0, i32 3
  store i32 %225, i32* %227, align 4
  %228 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %229 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @SPA_IRQ_CTRL_STAT_CNT_OFFSET, align 4
  %232 = shl i32 %230, %231
  %233 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %234 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %233, i32 0, i32 16
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @SPA_IRQ_CTRL_REG_OFFSET, align 8
  %237 = add nsw i64 %235, %236
  %238 = call i32 @writel(i32 %232, i64 %237)
  %239 = load i32, i32* @SPA_IRQ_EN_STAT_EN, align 4
  %240 = load i32, i32* @SPA_IRQ_EN_GLBL_EN, align 4
  %241 = or i32 %239, %240
  %242 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %243 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %242, i32 0, i32 16
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @SPA_IRQ_EN_REG_OFFSET, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i32 @writel(i32 %241, i64 %246)
  %248 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %249 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %248, i32 0, i32 5
  %250 = load i32, i32* @spacc_packet_timeout, align 4
  %251 = call i32 @timer_setup(i32* %249, i32 %250, i32 0)
  %252 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %253 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %252, i32 0, i32 15
  %254 = call i32 @INIT_LIST_HEAD(i32* %253)
  %255 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %256 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %255, i32 0, i32 14
  %257 = call i32 @INIT_LIST_HEAD(i32* %256)
  %258 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %259 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %258, i32 0, i32 13
  %260 = call i32 @INIT_LIST_HEAD(i32* %259)
  %261 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %262 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %261, i32 0, i32 12
  store i64 0, i64* %262, align 8
  %263 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %264 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %263, i32 0, i32 11
  %265 = load i32, i32* @spacc_spacc_complete, align 4
  %266 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %267 = ptrtoint %struct.spacc_engine* %266 to i64
  %268 = call i32 @tasklet_init(i32* %264, i32 %265, i64 %267)
  %269 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %270 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %271 = call i32 @platform_set_drvdata(%struct.platform_device* %269, %struct.spacc_engine* %270)
  %272 = load i32, i32* @EINVAL, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %6, align 4
  %274 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %275 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %274, i32 0, i32 10
  %276 = call i32 @INIT_LIST_HEAD(i32* %275)
  store i32 0, i32* %4, align 4
  br label %277

277:                                              ; preds = %345, %221
  %278 = load i32, i32* %4, align 4
  %279 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %280 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp slt i32 %278, %281
  br i1 %282, label %283, label %348

283:                                              ; preds = %277
  %284 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %285 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %286 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %285, i32 0, i32 9
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %286, align 8
  %288 = load i32, i32* %4, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 2
  store %struct.spacc_engine* %284, %struct.spacc_engine** %291, align 8
  %292 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %293 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %292, i32 0, i32 9
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %293, align 8
  %295 = load i32, i32* %4, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 0
  %299 = call i32 @crypto_register_alg(%struct.TYPE_16__* %298)
  store i32 %299, i32* %5, align 4
  %300 = load i32, i32* %5, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %313, label %302

302:                                              ; preds = %283
  %303 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %304 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %303, i32 0, i32 9
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %304, align 8
  %306 = load i32, i32* %4, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 1
  %310 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %311 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %310, i32 0, i32 10
  %312 = call i32 @list_add_tail(i32* %309, i32* %311)
  store i32 0, i32* %6, align 4
  br label %313

313:                                              ; preds = %302, %283
  %314 = load i32, i32* %5, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %330

316:                                              ; preds = %313
  %317 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %318 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %317, i32 0, i32 7
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %318, align 8
  %320 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %321 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %320, i32 0, i32 9
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %321, align 8
  %323 = load i32, i32* %4, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %319, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %328)
  br label %344

330:                                              ; preds = %313
  %331 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %332 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %331, i32 0, i32 7
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %332, align 8
  %334 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %335 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %334, i32 0, i32 9
  %336 = load %struct.TYPE_20__*, %struct.TYPE_20__** %335, align 8
  %337 = load i32, i32* %4, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = call i32 @dev_dbg(%struct.TYPE_21__* %333, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %342)
  br label %344

344:                                              ; preds = %330, %316
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %4, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %4, align 4
  br label %277

348:                                              ; preds = %277
  %349 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %350 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %349, i32 0, i32 8
  %351 = call i32 @INIT_LIST_HEAD(i32* %350)
  store i32 0, i32* %4, align 4
  br label %352

352:                                              ; preds = %422, %348
  %353 = load i32, i32* %4, align 4
  %354 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %355 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = icmp slt i32 %353, %356
  br i1 %357, label %358, label %425

358:                                              ; preds = %352
  %359 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %360 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %361 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %360, i32 0, i32 6
  %362 = load %struct.TYPE_19__*, %struct.TYPE_19__** %361, align 8
  %363 = load i32, i32* %4, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %362, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %365, i32 0, i32 2
  store %struct.spacc_engine* %359, %struct.spacc_engine** %366, align 8
  %367 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %368 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %367, i32 0, i32 6
  %369 = load %struct.TYPE_19__*, %struct.TYPE_19__** %368, align 8
  %370 = load i32, i32* %4, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %372, i32 0, i32 0
  %374 = call i32 @crypto_register_aead(%struct.TYPE_17__* %373)
  store i32 %374, i32* %5, align 4
  %375 = load i32, i32* %5, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %388, label %377

377:                                              ; preds = %358
  %378 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %379 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %378, i32 0, i32 6
  %380 = load %struct.TYPE_19__*, %struct.TYPE_19__** %379, align 8
  %381 = load i32, i32* %4, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %380, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %383, i32 0, i32 1
  %385 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %386 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %385, i32 0, i32 8
  %387 = call i32 @list_add_tail(i32* %384, i32* %386)
  store i32 0, i32* %6, align 4
  br label %388

388:                                              ; preds = %377, %358
  %389 = load i32, i32* %5, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %406

391:                                              ; preds = %388
  %392 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %393 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %392, i32 0, i32 7
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %393, align 8
  %395 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %396 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %395, i32 0, i32 6
  %397 = load %struct.TYPE_19__*, %struct.TYPE_19__** %396, align 8
  %398 = load i32, i32* %4, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = call i32 (%struct.TYPE_21__*, i8*, ...) @dev_err(%struct.TYPE_21__* %394, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %404)
  br label %421

406:                                              ; preds = %388
  %407 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %408 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %407, i32 0, i32 7
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %408, align 8
  %410 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %411 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %410, i32 0, i32 6
  %412 = load %struct.TYPE_19__*, %struct.TYPE_19__** %411, align 8
  %413 = load i32, i32* %4, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %412, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = call i32 @dev_dbg(%struct.TYPE_21__* %409, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %419)
  br label %421

421:                                              ; preds = %406, %391
  br label %422

422:                                              ; preds = %421
  %423 = load i32, i32* %4, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %4, align 4
  br label %352

425:                                              ; preds = %352
  %426 = load i32, i32* %6, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %429, label %428

428:                                              ; preds = %425
  store i32 0, i32* %2, align 4
  br label %447

429:                                              ; preds = %425
  %430 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %431 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %430, i32 0, i32 5
  %432 = call i32 @del_timer_sync(i32* %431)
  %433 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %434 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %433, i32 0, i32 0
  %435 = call i32 @device_remove_file(%struct.TYPE_21__* %434, i32* @dev_attr_stat_irq_thresh)
  br label %436

436:                                              ; preds = %429, %220
  %437 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %438 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %437, i32 0, i32 4
  %439 = load i64, i64* %438, align 8
  %440 = call i32 @clk_disable_unprepare(i64 %439)
  br label %441

441:                                              ; preds = %436, %208
  %442 = load %struct.spacc_engine*, %struct.spacc_engine** %9, align 8
  %443 = getelementptr inbounds %struct.spacc_engine, %struct.spacc_engine* %442, i32 0, i32 4
  %444 = load i64, i64* %443, align 8
  %445 = call i32 @clk_put(i64 %444)
  %446 = load i32, i32* %6, align 4
  store i32 %446, i32* %2, align 4
  br label %447

447:                                              ; preds = %441, %428, %194, %177, %133, %114, %103, %84, %20
  %448 = load i32, i32* %2, align 4
  ret i32 %448
}

declare dso_local %struct.spacc_engine* @devm_kzalloc(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @dev_name(%struct.TYPE_21__*) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_21__*, i8*, ...) #1

declare dso_local i64 @devm_request_irq(%struct.TYPE_21__*, i32, i32, i32, i32, %struct.spacc_engine*) #1

declare dso_local i32 @dmam_pool_create(i32, %struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @clk_get(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_21__*, i8*) #1

declare dso_local i64 @clk_prepare_enable(i64) #1

declare dso_local i32 @device_create_file(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spacc_engine*) #1

declare dso_local i32 @crypto_register_alg(%struct.TYPE_16__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @crypto_register_aead(%struct.TYPE_17__*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @clk_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
