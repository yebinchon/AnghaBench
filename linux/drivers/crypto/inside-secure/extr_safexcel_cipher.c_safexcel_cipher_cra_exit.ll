; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_cipher_cra_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_cipher.c_safexcel_cipher_cra_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.safexcel_cipher_ctx = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @safexcel_cipher_cra_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_cipher_cra_exit(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.safexcel_cipher_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %6 = call %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %5)
  store %struct.safexcel_cipher_ctx* %6, %struct.safexcel_cipher_ctx** %4, align 8
  %7 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @memzero_explicit(i32 %9, i32 4)
  %11 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.safexcel_cipher_ctx*, %struct.safexcel_cipher_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.safexcel_cipher_ctx, %struct.safexcel_cipher_ctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memzero_explicit(i32 %25, i32 4)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %19, %16
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.safexcel_cipher_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @memzero_explicit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
