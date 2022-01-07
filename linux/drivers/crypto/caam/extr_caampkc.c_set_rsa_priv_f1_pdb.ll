; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_set_rsa_priv_f1_pdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_set_rsa_priv_f1_pdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i32 }
%struct.rsa_edesc = type { i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rsa_priv_f1_pdb }
%struct.rsa_priv_f1_pdb = type { i32, i8*, i8*, i8*, i8* }
%struct.crypto_akcipher = type { i32 }
%struct.caam_rsa_ctx = type { %struct.device*, %struct.caam_rsa_key }
%struct.device = type { i32 }
%struct.caam_rsa_key = type { i32, i32, i32, i32 }
%struct.caam_rsa_req_ctx = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to map modulus memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Unable to map RSA private exponent memory\0A\00", align 1
@RSA_PRIV_PDB_SGF_G = common dso_local global i32 0, align 4
@RSA_PRIV_PDB_SGF_F = common dso_local global i32 0, align 4
@RSA_PDB_D_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*, %struct.rsa_edesc*)* @set_rsa_priv_f1_pdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rsa_priv_f1_pdb(%struct.akcipher_request* %0, %struct.rsa_edesc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.akcipher_request*, align 8
  %5 = alloca %struct.rsa_edesc*, align 8
  %6 = alloca %struct.crypto_akcipher*, align 8
  %7 = alloca %struct.caam_rsa_ctx*, align 8
  %8 = alloca %struct.caam_rsa_key*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.rsa_priv_f1_pdb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.caam_rsa_req_ctx*, align 8
  store %struct.akcipher_request* %0, %struct.akcipher_request** %4, align 8
  store %struct.rsa_edesc* %1, %struct.rsa_edesc** %5, align 8
  %13 = load %struct.akcipher_request*, %struct.akcipher_request** %4, align 8
  %14 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %13)
  store %struct.crypto_akcipher* %14, %struct.crypto_akcipher** %6, align 8
  %15 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %6, align 8
  %16 = call %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %15)
  store %struct.caam_rsa_ctx* %16, %struct.caam_rsa_ctx** %7, align 8
  %17 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %7, align 8
  %18 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %17, i32 0, i32 1
  store %struct.caam_rsa_key* %18, %struct.caam_rsa_key** %8, align 8
  %19 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %9, align 8
  %22 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %23 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.rsa_priv_f1_pdb* %24, %struct.rsa_priv_f1_pdb** %10, align 8
  store i32 0, i32* %11, align 4
  %25 = load %struct.device*, %struct.device** %9, align 8
  %26 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %27 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %30 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DMA_TO_DEVICE, align 4
  %33 = call i8* @dma_map_single(%struct.device* %25, i32 %28, i32 %31, i32 %32)
  %34 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %10, align 8
  %35 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.device*, %struct.device** %9, align 8
  %37 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %10, align 8
  %38 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @dma_mapping_error(%struct.device* %36, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %2
  %43 = load %struct.device*, %struct.device** %9, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %150

47:                                               ; preds = %2
  %48 = load %struct.device*, %struct.device** %9, align 8
  %49 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %50 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %53 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DMA_TO_DEVICE, align 4
  %56 = call i8* @dma_map_single(%struct.device* %48, i32 %51, i32 %54, i32 %55)
  %57 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %10, align 8
  %58 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.device*, %struct.device** %9, align 8
  %60 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %10, align 8
  %61 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %60, i32 0, i32 4
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @dma_mapping_error(%struct.device* %59, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %47
  %66 = load %struct.device*, %struct.device** %9, align 8
  %67 = call i32 @dev_err(%struct.device* %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.device*, %struct.device** %9, align 8
  %69 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %10, align 8
  %70 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %73 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DMA_TO_DEVICE, align 4
  %76 = call i32 @dma_unmap_single(%struct.device* %68, i8* %71, i32 %74, i32 %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %150

79:                                               ; preds = %47
  %80 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %81 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %100

84:                                               ; preds = %79
  %85 = load i32, i32* @RSA_PRIV_PDB_SGF_G, align 4
  %86 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %10, align 8
  %87 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %91 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %10, align 8
  %94 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %96 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %109

100:                                              ; preds = %79
  %101 = load %struct.akcipher_request*, %struct.akcipher_request** %4, align 8
  %102 = call %struct.caam_rsa_req_ctx* @akcipher_request_ctx(%struct.akcipher_request* %101)
  store %struct.caam_rsa_req_ctx* %102, %struct.caam_rsa_req_ctx** %12, align 8
  %103 = load %struct.caam_rsa_req_ctx*, %struct.caam_rsa_req_ctx** %12, align 8
  %104 = getelementptr inbounds %struct.caam_rsa_req_ctx, %struct.caam_rsa_req_ctx* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @sg_dma_address(i32 %105)
  %107 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %10, align 8
  %108 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %100, %84
  %110 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %111 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %129

114:                                              ; preds = %109
  %115 = load i32, i32* @RSA_PRIV_PDB_SGF_F, align 4
  %116 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %10, align 8
  %117 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %121 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = getelementptr i8, i8* %122, i64 %125
  %127 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %10, align 8
  %128 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  br label %136

129:                                              ; preds = %109
  %130 = load %struct.akcipher_request*, %struct.akcipher_request** %4, align 8
  %131 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @sg_dma_address(i32 %132)
  %134 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %10, align 8
  %135 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %129, %114
  %137 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %138 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @RSA_PDB_D_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %8, align 8
  %143 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %141, %144
  %146 = load %struct.rsa_priv_f1_pdb*, %struct.rsa_priv_f1_pdb** %10, align 8
  %147 = getelementptr inbounds %struct.rsa_priv_f1_pdb, %struct.rsa_priv_f1_pdb* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %136, %65, %42
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local i8* @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i32, i32) #1

declare dso_local %struct.caam_rsa_req_ctx* @akcipher_request_ctx(%struct.akcipher_request*) #1

declare dso_local i8* @sg_dma_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
