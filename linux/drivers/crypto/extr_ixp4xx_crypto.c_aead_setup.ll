; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_aead_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_ixp4xx_crypto.c_aead_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ixp_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@CRYPTO_TFM_RES_WEAK_KEY = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_FORBID_WEAK_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32)* @aead_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_setup(%struct.crypto_aead* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixp_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %11 = call %struct.ixp_ctx* @crypto_aead_ctx(%struct.crypto_aead* %10)
  store %struct.ixp_ctx* %11, %struct.ixp_ctx** %6, align 8
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %13 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32* %14, i32** %7, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %16 = call i32 @crypto_aead_maxauthsize(%struct.crypto_aead* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %129

27:                                               ; preds = %21, %2
  %28 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %28, i32 0, i32 0
  %30 = call i32 @init_completion(i32* %29)
  %31 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %31, i32 0, i32 1
  %33 = call i32 @atomic_inc(i32* %32)
  %34 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %34, i32 0, i32 7
  %36 = call i32 @reset_sa_dir(i32* %35)
  %37 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %37, i32 0, i32 6
  %39 = call i32 @reset_sa_dir(i32* %38)
  %40 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %41 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %40, i32 0, i32 0
  %42 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @setup_cipher(%struct.TYPE_3__* %41, i32 0, i32 %44, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %27
  br label %118

52:                                               ; preds = %27
  %53 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %54 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %53, i32 0, i32 0
  %55 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @setup_cipher(%struct.TYPE_3__* %54, i32 1, i32 %57, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %118

65:                                               ; preds = %52
  %66 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %67 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %66, i32 0, i32 0
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %70 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %73 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @setup_auth(%struct.TYPE_3__* %67, i32 0, i32 %68, i32 %71, i32 %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %118

80:                                               ; preds = %65
  %81 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %82 = getelementptr inbounds %struct.crypto_aead, %struct.crypto_aead* %81, i32 0, i32 0
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %85 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %88 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @setup_auth(%struct.TYPE_3__* %82, i32 1, i32 %83, i32 %86, i32 %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  br label %118

95:                                               ; preds = %80
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @CRYPTO_TFM_RES_WEAK_KEY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %95
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CRYPTO_TFM_REQ_FORBID_WEAK_KEYS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  br label %118

110:                                              ; preds = %101
  %111 = load i32, i32* @CRYPTO_TFM_RES_WEAK_KEY, align 4
  %112 = xor i32 %111, -1
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %112
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %95
  br label %118

118:                                              ; preds = %117, %107, %94, %79, %64, %51
  %119 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %120 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %119, i32 0, i32 1
  %121 = call i32 @atomic_dec_and_test(i32* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = load %struct.ixp_ctx*, %struct.ixp_ctx** %6, align 8
  %125 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %124, i32 0, i32 0
  %126 = call i32 @wait_for_completion(i32* %125)
  br label %127

127:                                              ; preds = %123, %118
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %26
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.ixp_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_maxauthsize(%struct.crypto_aead*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @reset_sa_dir(i32*) #1

declare dso_local i32 @setup_cipher(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @setup_auth(%struct.TYPE_3__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
