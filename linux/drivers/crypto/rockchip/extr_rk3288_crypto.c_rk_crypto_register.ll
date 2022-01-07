; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto.c_rk_crypto_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/rockchip/extr_rk3288_crypto.c_rk_crypto_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__, %struct.rk_crypto_info* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rk_crypto_info = type { i32 }

@rk_cipher_algs = common dso_local global %struct.TYPE_5__** null, align 8
@ALG_TYPE_CIPHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_crypto_info*)* @rk_crypto_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_crypto_register(%struct.rk_crypto_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rk_crypto_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rk_crypto_info* %0, %struct.rk_crypto_info** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %52, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @rk_cipher_algs, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_5__** %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %7
  %13 = load %struct.rk_crypto_info*, %struct.rk_crypto_info** %3, align 8
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @rk_cipher_algs, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %14, i64 %16
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store %struct.rk_crypto_info* %13, %struct.rk_crypto_info** %19, align 8
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @rk_cipher_algs, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %20, i64 %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ALG_TYPE_CIPHER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %12
  %30 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @rk_cipher_algs, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %30, i64 %32
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = call i32 @crypto_register_alg(i32* %36)
  store i32 %37, i32* %6, align 4
  br label %47

38:                                               ; preds = %12
  %39 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @rk_cipher_algs, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %39, i64 %41
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @crypto_register_ahash(i32* %45)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %38, %29
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %56

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %7

55:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %95

56:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %90, %56
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %57
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @rk_cipher_algs, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %62, i64 %64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ALG_TYPE_CIPHER, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %61
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @rk_cipher_algs, align 8
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %72, i64 %74
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = call i32 @crypto_unregister_alg(i32* %78)
  br label %89

80:                                               ; preds = %61
  %81 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @rk_cipher_algs, align 8
  %82 = load i32, i32* %4, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %81, i64 %83
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @crypto_unregister_ahash(i32* %87)
  br label %89

89:                                               ; preds = %80, %71
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %5, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %57

93:                                               ; preds = %57
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %55
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__**) #1

declare dso_local i32 @crypto_register_alg(i32*) #1

declare dso_local i32 @crypto_register_ahash(i32*) #1

declare dso_local i32 @crypto_unregister_alg(i32*) #1

declare dso_local i32 @crypto_unregister_ahash(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
