; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_set_pub_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caampkc.c_caam_rsa_set_pub_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_akcipher = type { i32 }
%struct.caam_rsa_ctx = type { %struct.caam_rsa_key }
%struct.caam_rsa_key = type { i32, i32, i32, i32 }
%struct.rsa_key = type { i32, i32, i32, i32, i32* }

@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_akcipher*, i8*, i32)* @caam_rsa_set_pub_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_rsa_set_pub_key(%struct.crypto_akcipher* %0, i8* %1, i32 %2) #0 {
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
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = load %struct.caam_rsa_ctx*, %struct.caam_rsa_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.caam_rsa_ctx, %struct.caam_rsa_ctx* %15, i32 0, i32 0
  store %struct.caam_rsa_key* %16, %struct.caam_rsa_key** %10, align 8
  %17 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %18 = call i32 @caam_rsa_free_key(%struct.caam_rsa_key* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @rsa_parse_pub_key(%struct.rsa_key* %9, i8* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %79

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GFP_DMA, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @kmemdup(i32 %28, i32 %30, i32 %33)
  %35 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %36 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %38 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %26
  br label %74

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 0
  %46 = call i32 @caam_read_raw_data(i32 %44, i32* %45)
  %47 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %48 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %50 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %74

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 %56, 3
  %58 = call i64 @caam_rsa_check_key_length(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %62 = call i32 @caam_rsa_free_key(%struct.caam_rsa_key* %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %79

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %69 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %73 = getelementptr inbounds %struct.caam_rsa_key, %struct.caam_rsa_key* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %4, align 4
  br label %79

74:                                               ; preds = %53, %41
  %75 = load %struct.caam_rsa_key*, %struct.caam_rsa_key** %10, align 8
  %76 = call i32 @caam_rsa_free_key(%struct.caam_rsa_key* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %65, %60, %24
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.caam_rsa_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @caam_rsa_free_key(%struct.caam_rsa_key*) #1

declare dso_local i32 @rsa_parse_pub_key(%struct.rsa_key*, i8*, i32) #1

declare dso_local i32 @kmemdup(i32, i32, i32) #1

declare dso_local i32 @caam_read_raw_data(i32, i32*) #1

declare dso_local i64 @caam_rsa_check_key_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
