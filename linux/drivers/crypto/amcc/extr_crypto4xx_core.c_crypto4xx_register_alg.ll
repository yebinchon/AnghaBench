; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_register_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_register_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i32 }
%struct.crypto4xx_alg_common = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.crypto4xx_alg = type { i32, %struct.crypto4xx_alg_common, %struct.crypto4xx_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto4xx_device*, %struct.crypto4xx_alg_common*, i32)* @crypto4xx_register_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_register_alg(%struct.crypto4xx_device* %0, %struct.crypto4xx_alg_common* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto4xx_device*, align 8
  %6 = alloca %struct.crypto4xx_alg_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto4xx_alg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %5, align 8
  store %struct.crypto4xx_alg_common* %1, %struct.crypto4xx_alg_common** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %76, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %79

15:                                               ; preds = %11
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.crypto4xx_alg* @kzalloc(i32 32, i32 %16)
  store %struct.crypto4xx_alg* %17, %struct.crypto4xx_alg** %8, align 8
  %18 = load %struct.crypto4xx_alg*, %struct.crypto4xx_alg** %8, align 8
  %19 = icmp ne %struct.crypto4xx_alg* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %80

23:                                               ; preds = %15
  %24 = load %struct.crypto4xx_alg*, %struct.crypto4xx_alg** %8, align 8
  %25 = getelementptr inbounds %struct.crypto4xx_alg, %struct.crypto4xx_alg* %24, i32 0, i32 1
  %26 = load %struct.crypto4xx_alg_common*, %struct.crypto4xx_alg_common** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.crypto4xx_alg_common, %struct.crypto4xx_alg_common* %26, i64 %28
  %30 = bitcast %struct.crypto4xx_alg_common* %25 to i8*
  %31 = bitcast %struct.crypto4xx_alg_common* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 20, i1 false)
  %32 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %5, align 8
  %33 = load %struct.crypto4xx_alg*, %struct.crypto4xx_alg** %8, align 8
  %34 = getelementptr inbounds %struct.crypto4xx_alg, %struct.crypto4xx_alg* %33, i32 0, i32 2
  store %struct.crypto4xx_device* %32, %struct.crypto4xx_device** %34, align 8
  %35 = load %struct.crypto4xx_alg*, %struct.crypto4xx_alg** %8, align 8
  %36 = getelementptr inbounds %struct.crypto4xx_alg, %struct.crypto4xx_alg* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.crypto4xx_alg_common, %struct.crypto4xx_alg_common* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %57 [
    i32 130, label %39
    i32 129, label %45
    i32 128, label %51
  ]

39:                                               ; preds = %23
  %40 = load %struct.crypto4xx_alg*, %struct.crypto4xx_alg** %8, align 8
  %41 = getelementptr inbounds %struct.crypto4xx_alg, %struct.crypto4xx_alg* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.crypto4xx_alg_common, %struct.crypto4xx_alg_common* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = call i32 @crypto_register_aead(i32* %43)
  store i32 %44, i32* %10, align 4
  br label %63

45:                                               ; preds = %23
  %46 = load %struct.crypto4xx_alg*, %struct.crypto4xx_alg** %8, align 8
  %47 = getelementptr inbounds %struct.crypto4xx_alg, %struct.crypto4xx_alg* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.crypto4xx_alg_common, %struct.crypto4xx_alg_common* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = call i32 @crypto_register_ahash(i32* %49)
  store i32 %50, i32* %10, align 4
  br label %63

51:                                               ; preds = %23
  %52 = load %struct.crypto4xx_alg*, %struct.crypto4xx_alg** %8, align 8
  %53 = getelementptr inbounds %struct.crypto4xx_alg, %struct.crypto4xx_alg* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.crypto4xx_alg_common, %struct.crypto4xx_alg_common* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = call i32 @crypto_register_rng(i32* %55)
  store i32 %56, i32* %10, align 4
  br label %63

57:                                               ; preds = %23
  %58 = load %struct.crypto4xx_alg*, %struct.crypto4xx_alg** %8, align 8
  %59 = getelementptr inbounds %struct.crypto4xx_alg, %struct.crypto4xx_alg* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.crypto4xx_alg_common, %struct.crypto4xx_alg_common* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @crypto_register_skcipher(i32* %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %57, %51, %45, %39
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.crypto4xx_alg*, %struct.crypto4xx_alg** %8, align 8
  %68 = call i32 @kfree(%struct.crypto4xx_alg* %67)
  br label %75

69:                                               ; preds = %63
  %70 = load %struct.crypto4xx_alg*, %struct.crypto4xx_alg** %8, align 8
  %71 = getelementptr inbounds %struct.crypto4xx_alg, %struct.crypto4xx_alg* %70, i32 0, i32 0
  %72 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %5, align 8
  %73 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %72, i32 0, i32 0
  %74 = call i32 @list_add_tail(i32* %71, i32* %73)
  br label %75

75:                                               ; preds = %69, %66
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %11

79:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %20
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.crypto4xx_alg* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @crypto_register_aead(i32*) #1

declare dso_local i32 @crypto_register_ahash(i32*) #1

declare dso_local i32 @crypto_register_rng(i32*) #1

declare dso_local i32 @crypto_register_skcipher(i32*) #1

declare dso_local i32 @kfree(%struct.crypto4xx_alg*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
