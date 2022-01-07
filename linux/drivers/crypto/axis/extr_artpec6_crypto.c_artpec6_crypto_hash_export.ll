; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_hash_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/axis/extr_artpec6_crypto.c_artpec6_crypto_hash_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.artpec6_hash_request_context = type { i32, i32, i32, i32, i32, i32 }
%struct.artpec6_hash_export_state = type { i32, i32, i8*, i32, i32, i32 }
%struct.artpec6_crypto = type { i32 }

@artpec6_crypto_dev = common dso_local global i32 0, align 4
@ARTPEC6_CRYPTO = common dso_local global i32 0, align 4
@A6_CRY_MD_OPER = common dso_local global i32 0, align 4
@A7_CRY_MD_OPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @artpec6_crypto_hash_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @artpec6_crypto_hash_export(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.artpec6_hash_request_context*, align 8
  %6 = alloca %struct.artpec6_hash_export_state*, align 8
  %7 = alloca %struct.artpec6_crypto*, align 8
  %8 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %10 = call %struct.artpec6_hash_request_context* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.artpec6_hash_request_context* %10, %struct.artpec6_hash_request_context** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.artpec6_hash_export_state*
  store %struct.artpec6_hash_export_state* %12, %struct.artpec6_hash_export_state** %6, align 8
  %13 = load i32, i32* @artpec6_crypto_dev, align 4
  %14 = call %struct.artpec6_crypto* @dev_get_drvdata(i32 %13)
  store %struct.artpec6_crypto* %14, %struct.artpec6_crypto** %7, align 8
  %15 = load %struct.artpec6_crypto*, %struct.artpec6_crypto** %7, align 8
  %16 = getelementptr inbounds %struct.artpec6_crypto, %struct.artpec6_crypto* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = call i32 @BUILD_BUG_ON(i32 0)
  %19 = call i32 @BUILD_BUG_ON(i32 0)
  %20 = load %struct.artpec6_hash_request_context*, %struct.artpec6_hash_request_context** %5, align 8
  %21 = getelementptr inbounds %struct.artpec6_hash_request_context, %struct.artpec6_hash_request_context* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.artpec6_hash_export_state*, %struct.artpec6_hash_export_state** %6, align 8
  %24 = getelementptr inbounds %struct.artpec6_hash_export_state, %struct.artpec6_hash_export_state* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.artpec6_hash_request_context*, %struct.artpec6_hash_request_context** %5, align 8
  %26 = getelementptr inbounds %struct.artpec6_hash_request_context, %struct.artpec6_hash_request_context* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.artpec6_hash_export_state*, %struct.artpec6_hash_export_state** %6, align 8
  %29 = getelementptr inbounds %struct.artpec6_hash_export_state, %struct.artpec6_hash_export_state* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.artpec6_hash_request_context*, %struct.artpec6_hash_request_context** %5, align 8
  %31 = getelementptr inbounds %struct.artpec6_hash_request_context, %struct.artpec6_hash_request_context* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.artpec6_hash_export_state*, %struct.artpec6_hash_export_state** %6, align 8
  %34 = getelementptr inbounds %struct.artpec6_hash_export_state, %struct.artpec6_hash_export_state* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ARTPEC6_CRYPTO, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %2
  %39 = load i32, i32* @A6_CRY_MD_OPER, align 4
  %40 = load %struct.artpec6_hash_request_context*, %struct.artpec6_hash_request_context** %5, align 8
  %41 = getelementptr inbounds %struct.artpec6_hash_request_context, %struct.artpec6_hash_request_context* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @FIELD_GET(i32 %39, i32 %42)
  %44 = load %struct.artpec6_hash_export_state*, %struct.artpec6_hash_export_state** %6, align 8
  %45 = getelementptr inbounds %struct.artpec6_hash_export_state, %struct.artpec6_hash_export_state* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  br label %54

46:                                               ; preds = %2
  %47 = load i32, i32* @A7_CRY_MD_OPER, align 4
  %48 = load %struct.artpec6_hash_request_context*, %struct.artpec6_hash_request_context** %5, align 8
  %49 = getelementptr inbounds %struct.artpec6_hash_request_context, %struct.artpec6_hash_request_context* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @FIELD_GET(i32 %47, i32 %50)
  %52 = load %struct.artpec6_hash_export_state*, %struct.artpec6_hash_export_state** %6, align 8
  %53 = getelementptr inbounds %struct.artpec6_hash_export_state, %struct.artpec6_hash_export_state* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %46, %38
  %55 = load %struct.artpec6_hash_export_state*, %struct.artpec6_hash_export_state** %6, align 8
  %56 = getelementptr inbounds %struct.artpec6_hash_export_state, %struct.artpec6_hash_export_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.artpec6_hash_request_context*, %struct.artpec6_hash_request_context** %5, align 8
  %59 = getelementptr inbounds %struct.artpec6_hash_request_context, %struct.artpec6_hash_request_context* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcpy(i32 %57, i32 %60, i32 4)
  %62 = load %struct.artpec6_hash_export_state*, %struct.artpec6_hash_export_state** %6, align 8
  %63 = getelementptr inbounds %struct.artpec6_hash_export_state, %struct.artpec6_hash_export_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.artpec6_hash_request_context*, %struct.artpec6_hash_request_context** %5, align 8
  %66 = getelementptr inbounds %struct.artpec6_hash_request_context, %struct.artpec6_hash_request_context* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @memcpy(i32 %64, i32 %67, i32 4)
  ret i32 0
}

declare dso_local %struct.artpec6_hash_request_context* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local %struct.artpec6_crypto* @dev_get_drvdata(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
