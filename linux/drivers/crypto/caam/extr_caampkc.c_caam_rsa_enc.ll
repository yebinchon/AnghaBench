; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_enc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_request = type { i64 }
%struct.crypto_akcipher = type { i32 }
%struct.caam_rsa_ctx = type { %struct.device*, %struct.caam_rsa_key }
%struct.device = type { i32 }
%struct.caam_rsa_key = type { i64, i32, i32 }
%struct.rsa_edesc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Output buffer length less than parameter n\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@DESC_RSA_PUB_LEN = common dso_local global i32 0, align 4
@rsa_pub_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.akcipher_request*)* @caam_rsa_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_rsa_enc(%struct.akcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.akcipher_request*, align 8
  %4 = alloca %struct.crypto_akcipher*, align 8
  %5 = alloca %struct.caam_rsa_ctx*, align 8
  %6 = alloca %struct.caam_rsa_key*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.rsa_edesc*, align 8
  %9 = alloca i32, align 4
  store %struct.akcipher_request* %0, %struct.akcipher_request** %3, align 8
  %10 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %11 = call %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request* %10)
  store %struct.crypto_akcipher* %11, %struct.crypto_akcipher** %4, align 8
  %12 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %4, align 8
  %13 = call %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %12)
  store %struct.caam_rsa_ctx* %13, %struct.caam_rsa_ctx** %5, align 8
  %14 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %14, i32 0, i32 1
  store %struct.caam_rsa_key* %15, %struct.caam_rsa_key** %6, align 8
  %16 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %5, align 8
  %17 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %6, align 8
  %20 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %6, align 8
  %25 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %23, %1
  %30 = phi i1 [ true, %1 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %105

37:                                               ; preds = %29
  %38 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %39 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %6, align 8
  %42 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %6, align 8
  %47 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %50 = getelementptr inbounds %struct.akcipher_request, %struct.akcipher_request* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EOVERFLOW, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %105

55:                                               ; preds = %37
  %56 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %57 = load i32, i32* @DESC_RSA_PUB_LEN, align 4
  %58 = call %struct.rsa_edesc* @rsa_edesc_alloc(%struct.akcipher_request* %56, i32 %57)
  store %struct.rsa_edesc* %58, %struct.rsa_edesc** %8, align 8
  %59 = load %struct.rsa_edesc*, %struct.rsa_edesc** %8, align 8
  %60 = call i64 @IS_ERR(%struct.rsa_edesc* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.rsa_edesc*, %struct.rsa_edesc** %8, align 8
  %64 = call i32 @PTR_ERR(%struct.rsa_edesc* %63)
  store i32 %64, i32* %2, align 4
  br label %105

65:                                               ; preds = %55
  %66 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %67 = load %struct.rsa_edesc*, %struct.rsa_edesc** %8, align 8
  %68 = call i32 @set_rsa_pub_pdb(%struct.akcipher_request* %66, %struct.rsa_edesc* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %97

72:                                               ; preds = %65
  %73 = load %struct.rsa_edesc*, %struct.rsa_edesc** %8, align 8
  %74 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.rsa_edesc*, %struct.rsa_edesc** %8, align 8
  %77 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @init_rsa_pub_desc(i32 %75, i32* %78)
  %80 = load %struct.device*, %struct.device** %7, align 8
  %81 = load %struct.rsa_edesc*, %struct.rsa_edesc** %8, align 8
  %82 = getelementptr inbounds %struct.rsa_edesc, %struct.rsa_edesc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @rsa_pub_done, align 4
  %85 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %86 = call i32 @caam_jr_enqueue(%struct.device* %80, i32 %83, i32 %84, %struct.akcipher_request* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %72
  %90 = load i32, i32* @EINPROGRESS, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %105

92:                                               ; preds = %72
  %93 = load %struct.device*, %struct.device** %7, align 8
  %94 = load %struct.rsa_edesc*, %struct.rsa_edesc** %8, align 8
  %95 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %96 = call i32 @rsa_pub_unmap(%struct.device* %93, %struct.rsa_edesc* %94, %struct.akcipher_request* %95)
  br label %97

97:                                               ; preds = %92, %71
  %98 = load %struct.device*, %struct.device** %7, align 8
  %99 = load %struct.rsa_edesc*, %struct.rsa_edesc** %8, align 8
  %100 = load %struct.akcipher_request*, %struct.akcipher_request** %3, align 8
  %101 = call i32 @rsa_io_unmap(%struct.device* %98, %struct.rsa_edesc* %99, %struct.akcipher_request* %100)
  %102 = load %struct.rsa_edesc*, %struct.rsa_edesc** %8, align 8
  %103 = call i32 @kfree(%struct.rsa_edesc* %102)
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %97, %89, %62, %45, %34
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.crypto_akcipher* @crypto_akcipher_reqtfm(%struct.akcipher_request*) #1

declare dso_local %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.rsa_edesc* @rsa_edesc_alloc(%struct.akcipher_request*, i32) #1

declare dso_local i64 @IS_ERR(%struct.rsa_edesc*) #1

declare dso_local i32 @PTR_ERR(%struct.rsa_edesc*) #1

declare dso_local i32 @set_rsa_pub_pdb(%struct.akcipher_request*, %struct.rsa_edesc*) #1

declare dso_local i32 @init_rsa_pub_desc(i32, i32*) #1

declare dso_local i32 @caam_jr_enqueue(%struct.device*, i32, i32, %struct.akcipher_request*) #1

declare dso_local i32 @rsa_pub_unmap(%struct.device*, %struct.rsa_edesc*, %struct.akcipher_request*) #1

declare dso_local i32 @rsa_io_unmap(%struct.device*, %struct.rsa_edesc*, %struct.akcipher_request*) #1

declare dso_local i32 @kfree(%struct.rsa_edesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
