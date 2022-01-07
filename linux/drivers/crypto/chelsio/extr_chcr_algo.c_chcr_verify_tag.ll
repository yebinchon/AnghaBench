; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_verify_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_chcr_verify_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i64, i32 }
%struct.crypto_aead = type { i32 }
%struct.cpl_fw6_pld = type { i32* }

@SHA512_DIGEST_SIZE = common dso_local global i32 0, align 4
@CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106 = common dso_local global i64 0, align 8
@CRYPTO_ALG_SUB_TYPE_AEAD_GCM = common dso_local global i64 0, align 8
@EBADMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chcr_verify_tag(%struct.aead_request* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cpl_fw6_pld*, align 8
  %12 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @SHA512_DIGEST_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %18 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %17)
  store %struct.crypto_aead* %18, %struct.crypto_aead** %9, align 8
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %20 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %19)
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = bitcast i32* %21 to %struct.cpl_fw6_pld*
  store %struct.cpl_fw6_pld* %22, %struct.cpl_fw6_pld** %11, align 8
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %24 = call i64 @get_aead_subtype(%struct.crypto_aead* %23)
  %25 = load i64, i64* @CRYPTO_ALG_SUB_TYPE_AEAD_RFC4106, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %29 = call i64 @get_aead_subtype(%struct.crypto_aead* %28)
  %30 = load i64, i64* @CRYPTO_ALG_SUB_TYPE_AEAD_GCM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %27, %3
  %33 = load %struct.cpl_fw6_pld*, %struct.cpl_fw6_pld** %11, align 8
  %34 = getelementptr inbounds %struct.cpl_fw6_pld, %struct.cpl_fw6_pld* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load %struct.cpl_fw6_pld*, %struct.cpl_fw6_pld** %11, align 8
  %38 = getelementptr inbounds %struct.cpl_fw6_pld, %struct.cpl_fw6_pld* %37, i64 1
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @crypto_memneq(i32* %36, %struct.cpl_fw6_pld* %38, i32 %39)
  store i32 %40, i32* %12, align 4
  br label %65

41:                                               ; preds = %27
  %42 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %46 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sg_nents(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %51 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %54 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = sub nsw i64 %56, %58
  %60 = call i32 @sg_pcopy_to_buffer(i32 %44, i32 %48, i32* %16, i32 %49, i64 %59)
  %61 = load %struct.cpl_fw6_pld*, %struct.cpl_fw6_pld** %11, align 8
  %62 = getelementptr inbounds %struct.cpl_fw6_pld, %struct.cpl_fw6_pld* %61, i64 1
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @crypto_memneq(i32* %16, %struct.cpl_fw6_pld* %62, i32 %63)
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %41, %32
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* @EBADMSG, align 4
  %70 = sub nsw i32 0, %69
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  br label %74

72:                                               ; preds = %65
  %73 = load i32*, i32** %6, align 8
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #2

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #2

declare dso_local i64 @get_aead_subtype(%struct.crypto_aead*) #2

declare dso_local i32 @crypto_memneq(i32*, %struct.cpl_fw6_pld*, i32) #2

declare dso_local i32 @sg_pcopy_to_buffer(i32, i32, i32*, i32, i64) #2

declare dso_local i32 @sg_nents(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
