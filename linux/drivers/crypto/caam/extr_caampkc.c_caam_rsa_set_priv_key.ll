; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_set_priv_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_set_priv_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_akcipher = type { i32 }
%struct.caam_rsa_ctx = type { %struct.caam_rsa_key }
%struct.caam_rsa_key = type { i32, i32, i32, i32, i8*, i8* }
%struct.rsa_key = type { i32, i32, i32, i32, i32, i32, i32* }

@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_akcipher*, i8*, i32)* @caam_rsa_set_priv_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_rsa_set_priv_key(%struct.crypto_akcipher* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_akcipher*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.caam_rsa_ctx*, align 8
  %9 = alloca %struct.rsa_key, align 8
  %10 = alloca %struct.caam_rsa_key*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_akcipher* %0, %struct.crypto_akcipher** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %5, align 8
  %13 = call %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %12)
  store %struct.caam_rsa_ctx* %13, %struct.caam_rsa_ctx** %8, align 8
  %14 = bitcast %struct.rsa_key* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %15, i32 0, i32 0
  store %struct.caam_rsa_key* %16, %struct.caam_rsa_key** %10, align 8
  %17 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %18 = call i32 @caam_rsa_free_key(%struct.caam_rsa_key* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @rsa_parse_priv_key(%struct.rsa_key* %9, i8* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %101

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GFP_DMA, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = or i32 %31, %32
  %34 = call i8* @kmemdup(i32 %28, i32 %30, i32 %33)
  %35 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %36 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %38 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %37, i32 0, i32 5
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %26
  br label %96

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @GFP_DMA, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @kmemdup(i32 %44, i32 %46, i32 %49)
  %51 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %52 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  %53 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %54 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %42
  br label %96

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 0
  %62 = call i32 @caam_read_raw_data(i32 %60, i32* %61)
  %63 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %64 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %66 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %96

70:                                               ; preds = %58
  %71 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %72, 3
  %74 = call i64 @caam_rsa_check_key_length(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %78 = call i32 @caam_rsa_free_key(%struct.caam_rsa_key* %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %101

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %85 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %89 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %93 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %8, align 8
  %95 = call i32 @caam_rsa_set_priv_key_form(%struct.caam_rsa_ctx* %94, %struct.rsa_key* %9)
  store i32 0, i32* %4, align 4
  br label %101

96:                                               ; preds = %69, %57, %41
  %97 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %98 = call i32 @caam_rsa_free_key(%struct.caam_rsa_key* %97)
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %96, %81, %76, %24
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @caam_rsa_free_key(%struct.caam_rsa_key*) #1

declare dso_local i32 @rsa_parse_priv_key(%struct.rsa_key*, i8*, i32) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @caam_read_raw_data(i32, i32*) #1

declare dso_local i64 @caam_rsa_check_key_length(i32) #1

declare dso_local i32 @caam_rsa_set_priv_key_form(%struct.caam_rsa_ctx*, %struct.rsa_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
