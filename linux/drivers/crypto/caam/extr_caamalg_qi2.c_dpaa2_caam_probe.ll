; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_dpaa2_caam_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_dpaa2_caam_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { %struct.device }
%struct.device = type { i32 }
%struct.dpaa2_caam_priv = type { i32, i32*, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }
%struct.caam_skcipher_alg = type { i32, %struct.TYPE_19__, %struct.TYPE_12__ }
%struct.TYPE_19__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.device* }
%struct.caam_aead_alg = type { i32, %struct.TYPE_11__, %struct.TYPE_14__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64, %struct.device* }
%struct.caam_hash_alg = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.caam_hash_template = type { i32 }

@caam_little_end = common dso_local global i32 0, align 4
@caam_imx = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"dpaa2_caamqicache\00", align 1
@CAAM_QI_MEMCACHE_SIZE = common dso_local global i32 0, align 4
@SLAB_CACHE_DMA = common dso_local global i32 0, align 4
@qi_cache = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't allocate SEC cache\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"dma_set_mask_and_coherent() failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"MC portal allocation failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"alloc_percpu() failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"dpaa2_dpseci_setup() failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"dpaa2_dpseci_dpio_setup() failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"dpaa2_dpseci_bind() failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"dpaa2_dpseci_enable() failed\0A\00", align 1
@driver_algs = common dso_local global i8* null, align 8
@OP_ALG_ALGSEL_MASK = common dso_local global i64 0, align 8
@OP_ALG_ALGSEL_3DES = common dso_local global i64 0, align 8
@OP_ALG_ALGSEL_DES = common dso_local global i64 0, align 8
@OP_ALG_ALGSEL_AES = common dso_local global i64 0, align 8
@OP_ALG_ALGSEL_CHACHA20 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"%s alg registration failed: %d\0A\00", align 1
@driver_aeads = common dso_local global i8* null, align 8
@OP_ALG_ALGSEL_POLY1305 = common dso_local global i64 0, align 8
@OP_ALG_ALGSEL_SUBMASK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"algorithms registered in /proc/crypto\0A\00", align 1
@hash_list = common dso_local global i32 0, align 4
@driver_hash = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [35 x i8] c"%s hash alg allocation failed: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"%s alg allocation failed: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"hash algorithms registered in /proc/crypto\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @dpaa2_caam_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_caam_probe(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dpaa2_caam_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.caam_skcipher_alg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.caam_aead_alg*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.caam_hash_alg*, align 8
  %15 = alloca %struct.caam_hash_template*, align 8
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* @caam_little_end, align 4
  store i32 0, i32* @caam_imx, align 4
  %16 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %17 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %4, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.dpaa2_caam_priv* @devm_kzalloc(%struct.device* %18, i32 40, i32 %19)
  store %struct.dpaa2_caam_priv* %20, %struct.dpaa2_caam_priv** %5, align 8
  %21 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %22 = icmp ne %struct.dpaa2_caam_priv* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %454

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %29 = call i32 @dev_set_drvdata(%struct.device* %27, %struct.dpaa2_caam_priv* %28)
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @iommu_get_domain_for_dev(%struct.device* %30)
  %32 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %33 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @CAAM_QI_MEMCACHE_SIZE, align 4
  %35 = load i32, i32* @SLAB_CACHE_DMA, align 4
  %36 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34, i32 0, i32 %35, i32* null)
  store i32 %36, i32* @qi_cache, align 4
  %37 = load i32, i32* @qi_cache, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %26
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %454

44:                                               ; preds = %26
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @DMA_BIT_MASK(i32 49)
  %47 = call i32 @dma_set_mask_and_coherent(%struct.device* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %450

53:                                               ; preds = %44
  %54 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %55 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %56 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %55, i32 0, i32 0
  %57 = call i32 @fsl_mc_portal_allocate(%struct.fsl_mc_device* %54, i32 0, i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @ENXIO, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EPROBE_DEFER, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %71

68:                                               ; preds = %60
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %65
  br label %450

72:                                               ; preds = %53
  %73 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %74 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @alloc_percpu(i32 %76)
  %78 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %79 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  %80 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %81 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %72
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  br label %445

89:                                               ; preds = %72
  %90 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %91 = call i32 @dpaa2_dpseci_setup(%struct.fsl_mc_device* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %440

97:                                               ; preds = %89
  %98 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %99 = call i32 @dpaa2_dpseci_dpio_setup(%struct.dpaa2_caam_priv* %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @EPROBE_DEFER, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %102
  br label %437

111:                                              ; preds = %97
  %112 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %113 = call i32 @dpaa2_dpseci_bind(%struct.dpaa2_caam_priv* %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = call i32 @dev_err(%struct.device* %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %434

119:                                              ; preds = %111
  %120 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %121 = call i32 @dpaa2_dpseci_enable(%struct.dpaa2_caam_priv* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = call i32 @dev_err(%struct.device* %125, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %434

127:                                              ; preds = %119
  %128 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %129 = call i32 @dpaa2_dpseci_debugfs_init(%struct.dpaa2_caam_priv* %128)
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %207, %127
  %131 = load i32, i32* %6, align 4
  %132 = load i8*, i8** @driver_algs, align 8
  %133 = call i32 @ARRAY_SIZE(i8* %132)
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %210

135:                                              ; preds = %130
  %136 = load i8*, i8** @driver_algs, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr i8, i8* %136, i64 %138
  %140 = bitcast i8* %139 to %struct.caam_skcipher_alg*
  store %struct.caam_skcipher_alg* %140, %struct.caam_skcipher_alg** %9, align 8
  %141 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %9, align 8
  %142 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @OP_ALG_ALGSEL_MASK, align 8
  %146 = and i64 %144, %145
  store i64 %146, i64* %10, align 8
  %147 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %148 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %135
  %153 = load i64, i64* %10, align 8
  %154 = load i64, i64* @OP_ALG_ALGSEL_3DES, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* @OP_ALG_ALGSEL_DES, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %156, %152
  br label %207

161:                                              ; preds = %156, %135
  %162 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %163 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %161
  %168 = load i64, i64* %10, align 8
  %169 = load i64, i64* @OP_ALG_ALGSEL_AES, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %207

172:                                              ; preds = %167, %161
  %173 = load i64, i64* %10, align 8
  %174 = load i64, i64* @OP_ALG_ALGSEL_CHACHA20, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %178 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %176
  br label %207

183:                                              ; preds = %176, %172
  %184 = load %struct.device*, %struct.device** %4, align 8
  %185 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %9, align 8
  %186 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  store %struct.device* %184, %struct.device** %187, align 8
  %188 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %9, align 8
  %189 = call i32 @caam_skcipher_alg_init(%struct.caam_skcipher_alg* %188)
  %190 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %9, align 8
  %191 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %190, i32 0, i32 1
  %192 = call i32 @crypto_register_skcipher(%struct.TYPE_19__* %191)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %183
  %196 = load %struct.device*, %struct.device** %4, align 8
  %197 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %9, align 8
  %198 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @dev_warn(%struct.device* %196, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %201, i32 %202)
  br label %207

204:                                              ; preds = %183
  %205 = load %struct.caam_skcipher_alg*, %struct.caam_skcipher_alg** %9, align 8
  %206 = getelementptr inbounds %struct.caam_skcipher_alg, %struct.caam_skcipher_alg* %205, i32 0, i32 0
  store i32 1, i32* %206, align 8
  store i32 1, i32* %8, align 4
  br label %207

207:                                              ; preds = %204, %195, %182, %171, %160
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %6, align 4
  br label %130

210:                                              ; preds = %130
  store i32 0, i32* %6, align 4
  br label %211

211:                                              ; preds = %318, %210
  %212 = load i32, i32* %6, align 4
  %213 = load i8*, i8** @driver_aeads, align 8
  %214 = call i32 @ARRAY_SIZE(i8* %213)
  %215 = icmp slt i32 %212, %214
  br i1 %215, label %216, label %321

216:                                              ; preds = %211
  %217 = load i8*, i8** @driver_aeads, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr i8, i8* %217, i64 %219
  %221 = bitcast i8* %220 to %struct.caam_aead_alg*
  store %struct.caam_aead_alg* %221, %struct.caam_aead_alg** %11, align 8
  %222 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %11, align 8
  %223 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @OP_ALG_ALGSEL_MASK, align 8
  %227 = and i64 %225, %226
  store i64 %227, i64* %12, align 8
  %228 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %11, align 8
  %229 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @OP_ALG_ALGSEL_MASK, align 8
  %233 = and i64 %231, %232
  store i64 %233, i64* %13, align 8
  %234 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %235 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %248, label %239

239:                                              ; preds = %216
  %240 = load i64, i64* %12, align 8
  %241 = load i64, i64* @OP_ALG_ALGSEL_3DES, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %247, label %243

243:                                              ; preds = %239
  %244 = load i64, i64* %12, align 8
  %245 = load i64, i64* @OP_ALG_ALGSEL_DES, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %243, %239
  br label %318

248:                                              ; preds = %243, %216
  %249 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %250 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %248
  %255 = load i64, i64* %12, align 8
  %256 = load i64, i64* @OP_ALG_ALGSEL_AES, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  br label %318

259:                                              ; preds = %254, %248
  %260 = load i64, i64* %12, align 8
  %261 = load i64, i64* @OP_ALG_ALGSEL_CHACHA20, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %270

263:                                              ; preds = %259
  %264 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %265 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %263
  br label %318

270:                                              ; preds = %263, %259
  %271 = load i64, i64* %13, align 8
  %272 = load i64, i64* @OP_ALG_ALGSEL_POLY1305, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %281

274:                                              ; preds = %270
  %275 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %276 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %274
  br label %318

281:                                              ; preds = %274, %270
  %282 = load i64, i64* %13, align 8
  %283 = load i64, i64* @OP_ALG_ALGSEL_SUBMASK, align 8
  %284 = xor i64 %283, -1
  %285 = and i64 %282, %284
  %286 = icmp eq i64 %285, 64
  br i1 %286, label %287, label %294

287:                                              ; preds = %281
  %288 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %289 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %287
  br label %318

294:                                              ; preds = %287, %281
  %295 = load %struct.device*, %struct.device** %4, align 8
  %296 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %11, align 8
  %297 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 2
  store %struct.device* %295, %struct.device** %298, align 8
  %299 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %11, align 8
  %300 = call i32 @caam_aead_alg_init(%struct.caam_aead_alg* %299)
  %301 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %11, align 8
  %302 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %301, i32 0, i32 1
  %303 = call i32 @crypto_register_aead(%struct.TYPE_11__* %302)
  store i32 %303, i32* %7, align 4
  %304 = load i32, i32* %7, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %315

306:                                              ; preds = %294
  %307 = load %struct.device*, %struct.device** %4, align 8
  %308 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %11, align 8
  %309 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %7, align 4
  %314 = call i32 @dev_warn(%struct.device* %307, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %312, i32 %313)
  br label %318

315:                                              ; preds = %294
  %316 = load %struct.caam_aead_alg*, %struct.caam_aead_alg** %11, align 8
  %317 = getelementptr inbounds %struct.caam_aead_alg, %struct.caam_aead_alg* %316, i32 0, i32 0
  store i32 1, i32* %317, align 8
  store i32 1, i32* %8, align 4
  br label %318

318:                                              ; preds = %315, %306, %293, %280, %269, %258, %247
  %319 = load i32, i32* %6, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %6, align 4
  br label %211

321:                                              ; preds = %211
  %322 = load i32, i32* %8, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load %struct.device*, %struct.device** %4, align 8
  %326 = call i32 @dev_info(%struct.device* %325, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  br label %327

327:                                              ; preds = %324, %321
  %328 = call i32 @INIT_LIST_HEAD(i32* @hash_list)
  %329 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %330 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %335, label %334

334:                                              ; preds = %327
  store i32 0, i32* %2, align 4
  br label %454

335:                                              ; preds = %327
  store i32 0, i32* %6, align 4
  br label %336

336:                                              ; preds = %423, %335
  %337 = load i32, i32* %6, align 4
  %338 = load i8*, i8** @driver_hash, align 8
  %339 = call i32 @ARRAY_SIZE(i8* %338)
  %340 = icmp slt i32 %337, %339
  br i1 %340, label %341, label %426

341:                                              ; preds = %336
  %342 = load i8*, i8** @driver_hash, align 8
  %343 = load i32, i32* %6, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr i8, i8* %342, i64 %344
  %346 = bitcast i8* %345 to %struct.caam_hash_template*
  store %struct.caam_hash_template* %346, %struct.caam_hash_template** %15, align 8
  %347 = load %struct.device*, %struct.device** %4, align 8
  %348 = load %struct.caam_hash_template*, %struct.caam_hash_template** %15, align 8
  %349 = call %struct.caam_hash_alg* @caam_hash_alloc(%struct.device* %347, %struct.caam_hash_template* %348, i32 1)
  store %struct.caam_hash_alg* %349, %struct.caam_hash_alg** %14, align 8
  %350 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %14, align 8
  %351 = call i64 @IS_ERR(%struct.caam_hash_alg* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %341
  %354 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %14, align 8
  %355 = call i32 @PTR_ERR(%struct.caam_hash_alg* %354)
  store i32 %355, i32* %7, align 4
  %356 = load %struct.device*, %struct.device** %4, align 8
  %357 = load %struct.caam_hash_template*, %struct.caam_hash_template** %15, align 8
  %358 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* %7, align 4
  %361 = call i32 @dev_warn(%struct.device* %356, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %359, i32 %360)
  br label %423

362:                                              ; preds = %341
  %363 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %14, align 8
  %364 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %363, i32 0, i32 1
  %365 = call i32 @crypto_register_ahash(%struct.TYPE_20__* %364)
  store i32 %365, i32* %7, align 4
  %366 = load i32, i32* %7, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %380

368:                                              ; preds = %362
  %369 = load %struct.device*, %struct.device** %4, align 8
  %370 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %14, align 8
  %371 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* %7, align 4
  %377 = call i32 @dev_warn(%struct.device* %369, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %375, i32 %376)
  %378 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %14, align 8
  %379 = call i32 @kfree(%struct.caam_hash_alg* %378)
  br label %384

380:                                              ; preds = %362
  %381 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %14, align 8
  %382 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %381, i32 0, i32 0
  %383 = call i32 @list_add_tail(i32* %382, i32* @hash_list)
  br label %384

384:                                              ; preds = %380, %368
  %385 = load %struct.device*, %struct.device** %4, align 8
  %386 = load %struct.caam_hash_template*, %struct.caam_hash_template** %15, align 8
  %387 = call %struct.caam_hash_alg* @caam_hash_alloc(%struct.device* %385, %struct.caam_hash_template* %386, i32 0)
  store %struct.caam_hash_alg* %387, %struct.caam_hash_alg** %14, align 8
  %388 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %14, align 8
  %389 = call i64 @IS_ERR(%struct.caam_hash_alg* %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %400

391:                                              ; preds = %384
  %392 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %14, align 8
  %393 = call i32 @PTR_ERR(%struct.caam_hash_alg* %392)
  store i32 %393, i32* %7, align 4
  %394 = load %struct.device*, %struct.device** %4, align 8
  %395 = load %struct.caam_hash_template*, %struct.caam_hash_template** %15, align 8
  %396 = getelementptr inbounds %struct.caam_hash_template, %struct.caam_hash_template* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %7, align 4
  %399 = call i32 @dev_warn(%struct.device* %394, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %397, i32 %398)
  br label %423

400:                                              ; preds = %384
  %401 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %14, align 8
  %402 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %401, i32 0, i32 1
  %403 = call i32 @crypto_register_ahash(%struct.TYPE_20__* %402)
  store i32 %403, i32* %7, align 4
  %404 = load i32, i32* %7, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %418

406:                                              ; preds = %400
  %407 = load %struct.device*, %struct.device** %4, align 8
  %408 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %14, align 8
  %409 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* %7, align 4
  %415 = call i32 @dev_warn(%struct.device* %407, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %413, i32 %414)
  %416 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %14, align 8
  %417 = call i32 @kfree(%struct.caam_hash_alg* %416)
  br label %422

418:                                              ; preds = %400
  %419 = load %struct.caam_hash_alg*, %struct.caam_hash_alg** %14, align 8
  %420 = getelementptr inbounds %struct.caam_hash_alg, %struct.caam_hash_alg* %419, i32 0, i32 0
  %421 = call i32 @list_add_tail(i32* %420, i32* @hash_list)
  br label %422

422:                                              ; preds = %418, %406
  br label %423

423:                                              ; preds = %422, %391, %353
  %424 = load i32, i32* %6, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %6, align 4
  br label %336

426:                                              ; preds = %336
  %427 = call i32 @list_empty(i32* @hash_list)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %432, label %429

429:                                              ; preds = %426
  %430 = load %struct.device*, %struct.device** %4, align 8
  %431 = call i32 @dev_info(%struct.device* %430, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  br label %432

432:                                              ; preds = %429, %426
  %433 = load i32, i32* %7, align 4
  store i32 %433, i32* %2, align 4
  br label %454

434:                                              ; preds = %124, %116
  %435 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %436 = call i32 @dpaa2_dpseci_dpio_free(%struct.dpaa2_caam_priv* %435)
  br label %437

437:                                              ; preds = %434, %110
  %438 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %439 = call i32 @dpaa2_dpseci_free(%struct.dpaa2_caam_priv* %438)
  br label %440

440:                                              ; preds = %437, %94
  %441 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %442 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %441, i32 0, i32 1
  %443 = load i32*, i32** %442, align 8
  %444 = call i32 @free_percpu(i32* %443)
  br label %445

445:                                              ; preds = %440, %84
  %446 = load %struct.dpaa2_caam_priv*, %struct.dpaa2_caam_priv** %5, align 8
  %447 = getelementptr inbounds %struct.dpaa2_caam_priv, %struct.dpaa2_caam_priv* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = call i32 @fsl_mc_portal_free(i32 %448)
  br label %450

450:                                              ; preds = %445, %71, %50
  %451 = load i32, i32* @qi_cache, align 4
  %452 = call i32 @kmem_cache_destroy(i32 %451)
  %453 = load i32, i32* %7, align 4
  store i32 %453, i32* %2, align 4
  br label %454

454:                                              ; preds = %450, %432, %334, %39, %23
  %455 = load i32, i32* %2, align 4
  ret i32 %455
}

declare dso_local %struct.dpaa2_caam_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.dpaa2_caam_priv*) #1

declare dso_local i32 @iommu_get_domain_for_dev(%struct.device*) #1

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @fsl_mc_portal_allocate(%struct.fsl_mc_device*, i32, i32*) #1

declare dso_local i32* @alloc_percpu(i32) #1

declare dso_local i32 @dpaa2_dpseci_setup(%struct.fsl_mc_device*) #1

declare dso_local i32 @dpaa2_dpseci_dpio_setup(%struct.dpaa2_caam_priv*) #1

declare dso_local i32 @dpaa2_dpseci_bind(%struct.dpaa2_caam_priv*) #1

declare dso_local i32 @dpaa2_dpseci_enable(%struct.dpaa2_caam_priv*) #1

declare dso_local i32 @dpaa2_dpseci_debugfs_init(%struct.dpaa2_caam_priv*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @caam_skcipher_alg_init(%struct.caam_skcipher_alg*) #1

declare dso_local i32 @crypto_register_skcipher(%struct.TYPE_19__*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @caam_aead_alg_init(%struct.caam_aead_alg*) #1

declare dso_local i32 @crypto_register_aead(%struct.TYPE_11__*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.caam_hash_alg* @caam_hash_alloc(%struct.device*, %struct.caam_hash_template*, i32) #1

declare dso_local i64 @IS_ERR(%struct.caam_hash_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.caam_hash_alg*) #1

declare dso_local i32 @crypto_register_ahash(%struct.TYPE_20__*) #1

declare dso_local i32 @kfree(%struct.caam_hash_alg*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dpaa2_dpseci_dpio_free(%struct.dpaa2_caam_priv*) #1

declare dso_local i32 @dpaa2_dpseci_free(%struct.dpaa2_caam_priv*) #1

declare dso_local i32 @free_percpu(i32*) #1

declare dso_local i32 @fsl_mc_portal_free(i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
