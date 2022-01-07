; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_set_rsa_priv_f2_pdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_set_rsa_priv_f2_pdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i32 }
%struct.rsa_edesc = type { i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rsa_priv_f2_pdb }
%struct.rsa_priv_f2_pdb = type { i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.crypto_akcipher = type { i32 }
%struct.caam_rsa_ctx = type { %struct.device*, %struct.caam_rsa_key }
%struct.device = type { i32 }
%struct.caam_rsa_key = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.caam_rsa_req_ctx = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unable to map RSA private exponent memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to map RSA prime factor p memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Unable to map RSA prime factor q memory\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Unable to map RSA tmp1 memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Unable to map RSA tmp2 memory\0A\00", align 1
@RSA_PRIV_PDB_SGF_G = common dso_local global i32 0, align 4
@RSA_PRIV_PDB_SGF_F = common dso_local global i32 0, align 4
@RSA_PDB_D_SHIFT = common dso_local global i32 0, align 4
@RSA_PDB_Q_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*, %struct.rsa_edesc*)* @set_rsa_priv_f2_pdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rsa_priv_f2_pdb(%struct.akcipher_request* %0, %struct.rsa_edesc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.akcipher_request*, align 8
  %5 = alloca %struct.rsa_edesc*, align 8
  %6 = alloca %struct.crypto_akcipher*, align 8
  %7 = alloca %struct.caam_rsa_ctx*, align 8
  %8 = alloca %struct.caam_rsa_key*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.rsa_priv_f2_pdb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.caam_rsa_req_ctx*, align 8
  store %struct.akcipher_request* %0, %struct.akcipher_request** %4, align 8
  store %struct.rsa_edesc* %1, %struct.rsa_edesc** %5, align 8
  %15 = load %struct.akcipher_request*, %struct.akcipher_request** %4, align 8
  %16 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %15)
  store %struct.crypto_akcipher* %16, %struct.crypto_akcipher** %6, align 8
  %17 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %6, align 8
  %18 = call %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %17)
  store %struct.caam_rsa_ctx* %18, %struct.caam_rsa_ctx** %7, align 8
  %19 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %19, i32 0, i32 1
  store %struct.caam_rsa_key* %20, %struct.caam_rsa_key** %8, align 8
  %21 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %9, align 8
  %24 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %25 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.rsa_priv_f2_pdb* %26, %struct.rsa_priv_f2_pdb** %10, align 8
  store i32 0, i32* %11, align 4
  %27 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %28 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %31 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %13, align 8
  %33 = load %struct.device*, %struct.device** %9, align 8
  %34 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %35 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %38 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @DMA_TO_DEVICE, align 4
  %41 = call i8* @dma_map_single(%struct.device* %33, i32 %36, i64 %39, i32 %40)
  %42 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %43 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.device*, %struct.device** %9, align 8
  %45 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %46 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @dma_mapping_error(%struct.device* %44, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %2
  %51 = load %struct.device*, %struct.device** %9, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %249

55:                                               ; preds = %2
  %56 = load %struct.device*, %struct.device** %9, align 8
  %57 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %58 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i32, i32* @DMA_TO_DEVICE, align 4
  %62 = call i8* @dma_map_single(%struct.device* %56, i32 %59, i64 %60, i32 %61)
  %63 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %64 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.device*, %struct.device** %9, align 8
  %66 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %67 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @dma_mapping_error(%struct.device* %65, i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %55
  %72 = load %struct.device*, %struct.device** %9, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %237

74:                                               ; preds = %55
  %75 = load %struct.device*, %struct.device** %9, align 8
  %76 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %77 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %13, align 8
  %80 = load i32, i32* @DMA_TO_DEVICE, align 4
  %81 = call i8* @dma_map_single(%struct.device* %75, i32 %78, i64 %79, i32 %80)
  %82 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %83 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  %84 = load %struct.device*, %struct.device** %9, align 8
  %85 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %86 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %85, i32 0, i32 4
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @dma_mapping_error(%struct.device* %84, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load %struct.device*, %struct.device** %9, align 8
  %92 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %229

93:                                               ; preds = %74
  %94 = load %struct.device*, %struct.device** %9, align 8
  %95 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %96 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %100 = call i8* @dma_map_single(%struct.device* %94, i32 %97, i64 %98, i32 %99)
  %101 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %102 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %101, i32 0, i32 5
  store i8* %100, i8** %102, align 8
  %103 = load %struct.device*, %struct.device** %9, align 8
  %104 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %105 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %104, i32 0, i32 5
  %106 = load i8*, i8** %105, align 8
  %107 = call i64 @dma_mapping_error(%struct.device* %103, i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %93
  %110 = load %struct.device*, %struct.device** %9, align 8
  %111 = call i32 @dev_err(%struct.device* %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %221

112:                                              ; preds = %93
  %113 = load %struct.device*, %struct.device** %9, align 8
  %114 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %115 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* %13, align 8
  %118 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %119 = call i8* @dma_map_single(%struct.device* %113, i32 %116, i64 %117, i32 %118)
  %120 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %121 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %120, i32 0, i32 8
  store i8* %119, i8** %121, align 8
  %122 = load %struct.device*, %struct.device** %9, align 8
  %123 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %124 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %123, i32 0, i32 8
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @dma_mapping_error(%struct.device* %122, i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %112
  %129 = load %struct.device*, %struct.device** %9, align 8
  %130 = call i32 @dev_err(%struct.device* %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %213

131:                                              ; preds = %112
  %132 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %133 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %152

136:                                              ; preds = %131
  %137 = load i32, i32* @RSA_PRIV_PDB_SGF_G, align 4
  %138 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %139 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %143 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %146 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %145, i32 0, i32 7
  store i8* %144, i8** %146, align 8
  %147 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %148 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %11, align 4
  br label %161

152:                                              ; preds = %131
  %153 = load %struct.akcipher_request*, %struct.akcipher_request** %4, align 8
  %154 = call %struct.caam_rsa_req_ctx* @akcipher_request_ctx(%struct.akcipher_request* %153)
  store %struct.caam_rsa_req_ctx* %154, %struct.caam_rsa_req_ctx** %14, align 8
  %155 = load %struct.caam_rsa_req_ctx*, %struct.caam_rsa_req_ctx** %14, align 8
  %156 = getelementptr inbounds %struct.caam_rsa_req_ctx, %struct.caam_rsa_req_ctx* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @sg_dma_address(i32 %157)
  %159 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %160 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %159, i32 0, i32 7
  store i8* %158, i8** %160, align 8
  br label %161

161:                                              ; preds = %152, %136
  %162 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %163 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 1
  br i1 %165, label %166, label %181

166:                                              ; preds = %161
  %167 = load i32, i32* @RSA_PRIV_PDB_SGF_F, align 4
  %168 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %169 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %173 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 4
  %178 = getelementptr i8, i8* %174, i64 %177
  %179 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %180 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %179, i32 0, i32 6
  store i8* %178, i8** %180, align 8
  br label %188

181:                                              ; preds = %161
  %182 = load %struct.akcipher_request*, %struct.akcipher_request** %4, align 8
  %183 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @sg_dma_address(i32 %184)
  %186 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %187 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %186, i32 0, i32 6
  store i8* %185, i8** %187, align 8
  br label %188

188:                                              ; preds = %181, %166
  %189 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %190 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @RSA_PDB_D_SHIFT, align 4
  %193 = zext i32 %192 to i64
  %194 = shl i64 %191, %193
  %195 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %196 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = or i64 %194, %198
  %200 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %201 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = or i64 %203, %199
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %201, align 8
  %206 = load i64, i64* %13, align 8
  %207 = load i64, i64* @RSA_PDB_Q_SHIFT, align 8
  %208 = shl i64 %206, %207
  %209 = load i64, i64* %12, align 8
  %210 = or i64 %208, %209
  %211 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %212 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %211, i32 0, i32 1
  store i64 %210, i64* %212, align 8
  store i32 0, i32* %3, align 4
  br label %249

213:                                              ; preds = %128
  %214 = load %struct.device*, %struct.device** %9, align 8
  %215 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %216 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %215, i32 0, i32 5
  %217 = load i8*, i8** %216, align 8
  %218 = load i64, i64* %12, align 8
  %219 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %220 = call i32 @dma_unmap_single(%struct.device* %214, i8* %217, i64 %218, i32 %219)
  br label %221

221:                                              ; preds = %213, %109
  %222 = load %struct.device*, %struct.device** %9, align 8
  %223 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %224 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %223, i32 0, i32 4
  %225 = load i8*, i8** %224, align 8
  %226 = load i64, i64* %13, align 8
  %227 = load i32, i32* @DMA_TO_DEVICE, align 4
  %228 = call i32 @dma_unmap_single(%struct.device* %222, i8* %225, i64 %226, i32 %227)
  br label %229

229:                                              ; preds = %221, %90
  %230 = load %struct.device*, %struct.device** %9, align 8
  %231 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %232 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %231, i32 0, i32 3
  %233 = load i8*, i8** %232, align 8
  %234 = load i64, i64* %12, align 8
  %235 = load i32, i32* @DMA_TO_DEVICE, align 4
  %236 = call i32 @dma_unmap_single(%struct.device* %230, i8* %233, i64 %234, i32 %235)
  br label %237

237:                                              ; preds = %229, %71
  %238 = load %struct.device*, %struct.device** %9, align 8
  %239 = load %struct.rsa_priv_f2_pdb*, %struct.rsa_priv_f2_pdb** %10, align 8
  %240 = getelementptr inbounds %struct.rsa_priv_f2_pdb, %struct.rsa_priv_f2_pdb* %239, i32 0, i32 2
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %243 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load i32, i32* @DMA_TO_DEVICE, align 4
  %246 = call i32 @dma_unmap_single(%struct.device* %238, i8* %241, i64 %244, i32 %245)
  %247 = load i32, i32* @ENOMEM, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %3, align 4
  br label %249

249:                                              ; preds = %237, %188, %50
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local i8* @dma_map_single(%struct.device*, i32, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.caam_rsa_req_ctx* @akcipher_request_ctx(%struct.akcipher_request*) #1

declare dso_local i8* @sg_dma_address(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
