; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_set_rsa_pub_pdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_set_rsa_pub_pdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i32 }
%struct.rsa_edesc = type { i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rsa_pub_pdb }
%struct.rsa_pub_pdb = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.crypto_akcipher = type { i32 }
%struct.caam_rsa_req_ctx = type { i32, i32 }
%struct.caam_rsa_ctx = type { %struct.device*, %struct.caam_rsa_key }
%struct.device = type { i32 }
%struct.caam_rsa_key = type { i32, i32, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to map RSA modulus memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Unable to map RSA public exponent memory\0A\00", align 1
@RSA_PDB_SGF_F = common dso_local global i32 0, align 4
@RSA_PDB_SGF_G = common dso_local global i32 0, align 4
@RSA_PDB_E_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*, %struct.rsa_edesc*)* @set_rsa_pub_pdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rsa_pub_pdb(%struct.akcipher_request* %0, %struct.rsa_edesc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.akcipher_request*, align 8
  %5 = alloca %struct.rsa_edesc*, align 8
  %6 = alloca %struct.crypto_akcipher*, align 8
  %7 = alloca %struct.caam_rsa_req_ctx*, align 8
  %8 = alloca %struct.caam_rsa_ctx*, align 8
  %9 = alloca %struct.caam_rsa_key*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.rsa_pub_pdb*, align 8
  %12 = alloca i32, align 4
  store %struct.akcipher_request* %0, %struct.akcipher_request** %4, align 8
  store %struct.rsa_edesc* %1, %struct.rsa_edesc** %5, align 8
  %13 = load %struct.akcipher_request*, %struct.akcipher_request** %4, align 8
  %14 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %13)
  store %struct.crypto_akcipher* %14, %struct.crypto_akcipher** %6, align 8
  %15 = load %struct.akcipher_request*, %struct.akcipher_request** %4, align 8
  %16 = call %struct.caam_rsa_req_ctx* @akcipher_request_ctx(%struct.akcipher_request* %15)
  store %struct.caam_rsa_req_ctx* %16, %struct.caam_rsa_req_ctx** %7, align 8
  %17 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %6, align 8
  %18 = call %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %17)
  store %struct.caam_rsa_ctx* %18, %struct.caam_rsa_ctx** %8, align 8
  %19 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %19, i32 0, i32 1
  store %struct.caam_rsa_key* %20, %struct.caam_rsa_key** %9, align 8
  %21 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %10, align 8
  %24 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %25 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.rsa_pub_pdb* %26, %struct.rsa_pub_pdb** %11, align 8
  store i32 0, i32* %12, align 4
  %27 = load %struct.device*, %struct.device** %10, align 8
  %28 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %9, align 8
  %29 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %9, align 8
  %32 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DMA_TO_DEVICE, align 4
  %35 = call i8* @dma_map_single(%struct.device* %27, i32 %30, i32 %33, i32 %34)
  %36 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %11, align 8
  %37 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.device*, %struct.device** %10, align 8
  %39 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %11, align 8
  %40 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %39, i32 0, i32 4
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @dma_mapping_error(%struct.device* %38, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = load %struct.device*, %struct.device** %10, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %155

49:                                               ; preds = %2
  %50 = load %struct.device*, %struct.device** %10, align 8
  %51 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %9, align 8
  %52 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %9, align 8
  %55 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DMA_TO_DEVICE, align 4
  %58 = call i8* @dma_map_single(%struct.device* %50, i32 %53, i32 %56, i32 %57)
  %59 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %11, align 8
  %60 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load %struct.device*, %struct.device** %10, align 8
  %62 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %11, align 8
  %63 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %62, i32 0, i32 5
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @dma_mapping_error(%struct.device* %61, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %49
  %68 = load %struct.device*, %struct.device** %10, align 8
  %69 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.device*, %struct.device** %10, align 8
  %71 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %11, align 8
  %72 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %9, align 8
  %75 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DMA_TO_DEVICE, align 4
  %78 = call i32 @dma_unmap_single(%struct.device* %70, i8* %73, i32 %76, i32 %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %155

81:                                               ; preds = %49
  %82 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %83 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %86, label %102

86:                                               ; preds = %81
  %87 = load i32, i32* @RSA_PDB_SGF_F, align 4
  %88 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %11, align 8
  %89 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %93 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %92, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %11, align 8
  %96 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %98 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %12, align 4
  br label %109

102:                                              ; preds = %81
  %103 = load %struct.caam_rsa_req_ctx*, %struct.caam_rsa_req_ctx** %7, align 8
  %104 = getelementptr inbounds %struct.caam_rsa_req_ctx, %struct.caam_rsa_req_ctx* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @sg_dma_address(i32 %105)
  %107 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %11, align 8
  %108 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %102, %86
  %110 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %111 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %129

114:                                              ; preds = %109
  %115 = load i32, i32* @RSA_PDB_SGF_G, align 4
  %116 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %11, align 8
  %117 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load %struct.rsa_edesc*, %struct.rsa_edesc** %5, align 8
  %121 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = getelementptr i8, i8* %122, i64 %125
  %127 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %11, align 8
  %128 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  br label %136

129:                                              ; preds = %109
  %130 = load %struct.akcipher_request*, %struct.akcipher_request** %4, align 8
  %131 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @sg_dma_address(i32 %132)
  %134 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %11, align 8
  %135 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %129, %114
  %137 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %9, align 8
  %138 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @RSA_PDB_E_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %9, align 8
  %143 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %141, %144
  %146 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %11, align 8
  %147 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load %struct.caam_rsa_req_ctx*, %struct.caam_rsa_req_ctx** %7, align 8
  %151 = getelementptr inbounds %struct.caam_rsa_req_ctx, %struct.caam_rsa_req_ctx* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.rsa_pub_pdb*, %struct.rsa_pub_pdb** %11, align 8
  %154 = getelementptr inbounds %struct.rsa_pub_pdb, %struct.rsa_pub_pdb* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %136, %67, %44
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.caam_rsa_req_ctx* @akcipher_request_ctx(%struct.akcipher_request*) #1

declare dso_local %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local i8* @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i32, i32) #1

declare dso_local i8* @sg_dma_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
