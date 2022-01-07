; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_set_rsa_priv_f3_pdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_set_rsa_priv_f3_pdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i32 }
%struct.rsa_edesc = type { i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rsa_priv_f3_pdb }
%struct.rsa_priv_f3_pdb = type { i64, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8* }
%struct.crypto_akcipher = type { i32 }
%struct.caam_rsa_ctx = type { %struct.device*, %struct.caam_rsa_key }
%struct.device = type { i32 }
%struct.caam_rsa_key = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.caam_rsa_req_ctx = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to map RSA prime factor p memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to map RSA prime factor q memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to map RSA exponent dp memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unable to map RSA exponent dq memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Unable to map RSA CRT coefficient qinv memory\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Unable to map RSA tmp1 memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Unable to map RSA tmp2 memory\0A\00", align 1
@RSA_PRIV_PDB_SGF_G = common dso_local global i32 0, align 4
@RSA_PRIV_PDB_SGF_F = common dso_local global i32 0, align 4
@RSA_PDB_Q_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*, %struct.rsa_edesc*)* @set_rsa_priv_f3_pdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rsa_priv_f3_pdb(%struct.akcipher_request* %0, %struct.rsa_edesc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.akcipher_request*, align 8
  %5 = alloca %struct.rsa_edesc*, align 8
  %6 = alloca %struct.crypto_akcipher*, align 8
  %7 = alloca %struct.caam_rsa_ctx*, align 8
  %8 = alloca %struct.caam_rsa_key*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.rsa_priv_f3_pdb*, align 8
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
  store %struct.rsa_priv_f3_pdb* %26, %struct.rsa_priv_f3_pdb** %10, align 8
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
  %35 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = call i8* @dma_map_single(%struct.device* %33, i32 %36, i64 %37, i32 %38)
  %40 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %41 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.device*, %struct.device** %9, align 8
  %43 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %44 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @dma_mapping_error(%struct.device* %42, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %2
  %49 = load %struct.device*, %struct.device** %9, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %289

53:                                               ; preds = %2
  %54 = load %struct.device*, %struct.device** %9, align 8
  %55 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %56 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = call i8* @dma_map_single(%struct.device* %54, i32 %57, i64 %58, i32 %59)
  %61 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %62 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.device*, %struct.device** %9, align 8
  %64 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %65 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @dma_mapping_error(%struct.device* %63, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = load %struct.device*, %struct.device** %9, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %279

72:                                               ; preds = %53
  %73 = load %struct.device*, %struct.device** %9, align 8
  %74 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %75 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %12, align 8
  %78 = load i32, i32* @DMA_TO_DEVICE, align 4
  %79 = call i8* @dma_map_single(%struct.device* %73, i32 %76, i64 %77, i32 %78)
  %80 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %81 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load %struct.device*, %struct.device** %9, align 8
  %83 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %84 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @dma_mapping_error(%struct.device* %82, i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %72
  %89 = load %struct.device*, %struct.device** %9, align 8
  %90 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %271

91:                                               ; preds = %72
  %92 = load %struct.device*, %struct.device** %9, align 8
  %93 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %94 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load i32, i32* @DMA_TO_DEVICE, align 4
  %98 = call i8* @dma_map_single(%struct.device* %92, i32 %95, i64 %96, i32 %97)
  %99 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %100 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %99, i32 0, i32 4
  store i8* %98, i8** %100, align 8
  %101 = load %struct.device*, %struct.device** %9, align 8
  %102 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %103 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %102, i32 0, i32 4
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @dma_mapping_error(%struct.device* %101, i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %91
  %108 = load %struct.device*, %struct.device** %9, align 8
  %109 = call i32 @dev_err(%struct.device* %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %263

110:                                              ; preds = %91
  %111 = load %struct.device*, %struct.device** %9, align 8
  %112 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %113 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %12, align 8
  %116 = load i32, i32* @DMA_TO_DEVICE, align 4
  %117 = call i8* @dma_map_single(%struct.device* %111, i32 %114, i64 %115, i32 %116)
  %118 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %119 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load %struct.device*, %struct.device** %9, align 8
  %121 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %122 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %121, i32 0, i32 5
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @dma_mapping_error(%struct.device* %120, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %110
  %127 = load %struct.device*, %struct.device** %9, align 8
  %128 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %255

129:                                              ; preds = %110
  %130 = load %struct.device*, %struct.device** %9, align 8
  %131 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %132 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %136 = call i8* @dma_map_single(%struct.device* %130, i32 %133, i64 %134, i32 %135)
  %137 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %138 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %137, i32 0, i32 6
  store i8* %136, i8** %138, align 8
  %139 = load %struct.device*, %struct.device** %9, align 8
  %140 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %141 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %140, i32 0, i32 6
  %142 = load i8*, i8** %141, align 8
  %143 = call i64 @dma_mapping_error(%struct.device* %139, i8* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %129
  %146 = load %struct.device*, %struct.device** %9, align 8
  %147 = call i32 @dev_err(%struct.device* %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %247

148:                                              ; preds = %129
  %149 = load %struct.device*, %struct.device** %9, align 8
  %150 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %151 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i64, i64* %13, align 8
  %154 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %155 = call i8* @dma_map_single(%struct.device* %149, i32 %152, i64 %153, i32 %154)
  %156 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %157 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %156, i32 0, i32 10
  store i8* %155, i8** %157, align 8
  %158 = load %struct.device*, %struct.device** %9, align 8
  %159 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %160 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %159, i32 0, i32 10
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @dma_mapping_error(%struct.device* %158, i8* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %148
  %165 = load %struct.device*, %struct.device** %9, align 8
  %166 = call i32 @dev_err(%struct.device* %165, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %239

167:                                              ; preds = %148
  %168 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %169 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp sgt i32 %170, 1
  br i1 %171, label %172, label %188

172:                                              ; preds = %167
  %173 = load i32, i32* @RSA_PRIV_PDB_SGF_G, align 4
  %174 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %175 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %179 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %182 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %181, i32 0, i32 9
  store i8* %180, i8** %182, align 8
  %183 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %184 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %11, align 4
  br label %197

188:                                              ; preds = %167
  %189 = load %struct.akcipher_request*, %struct.akcipher_request** %4, align 8
  %190 = call %struct.caam_rsa_req_ctx* @akcipher_request_ctx(%struct.akcipher_request* %189)
  store %struct.caam_rsa_req_ctx* %190, %struct.caam_rsa_req_ctx** %14, align 8
  %191 = load %struct.caam_rsa_req_ctx*, %struct.caam_rsa_req_ctx** %14, align 8
  %192 = getelementptr inbounds %struct.caam_rsa_req_ctx, %struct.caam_rsa_req_ctx* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i8* @sg_dma_address(i32 %193)
  %195 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %196 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %195, i32 0, i32 9
  store i8* %194, i8** %196, align 8
  br label %197

197:                                              ; preds = %188, %172
  %198 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %199 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp sgt i32 %200, 1
  br i1 %201, label %202, label %217

202:                                              ; preds = %197
  %203 = load i32, i32* @RSA_PRIV_PDB_SGF_F, align 4
  %204 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %205 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  %208 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %209 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = mul i64 %212, 4
  %214 = getelementptr i8, i8* %210, i64 %213
  %215 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %216 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %215, i32 0, i32 8
  store i8* %214, i8** %216, align 8
  br label %224

217:                                              ; preds = %197
  %218 = load %struct.akcipher_request*, %struct.akcipher_request** %4, align 8
  %219 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i8* @sg_dma_address(i32 %220)
  %222 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %223 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %222, i32 0, i32 8
  store i8* %221, i8** %223, align 8
  br label %224

224:                                              ; preds = %217, %202
  %225 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %226 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %229 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  %232 = load i64, i64* %13, align 8
  %233 = load i64, i64* @RSA_PDB_Q_SHIFT, align 8
  %234 = shl i64 %232, %233
  %235 = load i64, i64* %12, align 8
  %236 = or i64 %234, %235
  %237 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %238 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %237, i32 0, i32 0
  store i64 %236, i64* %238, align 8
  store i32 0, i32* %3, align 4
  br label %289

239:                                              ; preds = %164
  %240 = load %struct.device*, %struct.device** %9, align 8
  %241 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %242 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %241, i32 0, i32 6
  %243 = load i8*, i8** %242, align 8
  %244 = load i64, i64* %12, align 8
  %245 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %246 = call i32 @dma_unmap_single(%struct.device* %240, i8* %243, i64 %244, i32 %245)
  br label %247

247:                                              ; preds = %239, %145
  %248 = load %struct.device*, %struct.device** %9, align 8
  %249 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %250 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %249, i32 0, i32 5
  %251 = load i8*, i8** %250, align 8
  %252 = load i64, i64* %12, align 8
  %253 = load i32, i32* @DMA_TO_DEVICE, align 4
  %254 = call i32 @dma_unmap_single(%struct.device* %248, i8* %251, i64 %252, i32 %253)
  br label %255

255:                                              ; preds = %247, %126
  %256 = load %struct.device*, %struct.device** %9, align 8
  %257 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %258 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %257, i32 0, i32 4
  %259 = load i8*, i8** %258, align 8
  %260 = load i64, i64* %13, align 8
  %261 = load i32, i32* @DMA_TO_DEVICE, align 4
  %262 = call i32 @dma_unmap_single(%struct.device* %256, i8* %259, i64 %260, i32 %261)
  br label %263

263:                                              ; preds = %255, %107
  %264 = load %struct.device*, %struct.device** %9, align 8
  %265 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %266 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %265, i32 0, i32 3
  %267 = load i8*, i8** %266, align 8
  %268 = load i64, i64* %12, align 8
  %269 = load i32, i32* @DMA_TO_DEVICE, align 4
  %270 = call i32 @dma_unmap_single(%struct.device* %264, i8* %267, i64 %268, i32 %269)
  br label %271

271:                                              ; preds = %263, %88
  %272 = load %struct.device*, %struct.device** %9, align 8
  %273 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %274 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %273, i32 0, i32 2
  %275 = load i8*, i8** %274, align 8
  %276 = load i64, i64* %13, align 8
  %277 = load i32, i32* @DMA_TO_DEVICE, align 4
  %278 = call i32 @dma_unmap_single(%struct.device* %272, i8* %275, i64 %276, i32 %277)
  br label %279

279:                                              ; preds = %271, %69
  %280 = load %struct.device*, %struct.device** %9, align 8
  %281 = load %struct.rsa_priv_f3_pdb*, %struct.rsa_priv_f3_pdb** %10, align 8
  %282 = getelementptr inbounds %struct.rsa_priv_f3_pdb, %struct.rsa_priv_f3_pdb* %281, i32 0, i32 1
  %283 = load i8*, i8** %282, align 8
  %284 = load i64, i64* %12, align 8
  %285 = load i32, i32* @DMA_TO_DEVICE, align 4
  %286 = call i32 @dma_unmap_single(%struct.device* %280, i8* %283, i64 %284, i32 %285)
  %287 = load i32, i32* @ENOMEM, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %3, align 4
  br label %289

289:                                              ; preds = %279, %224, %48
  %290 = load i32, i32* %3, align 4
  ret i32 %290
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
