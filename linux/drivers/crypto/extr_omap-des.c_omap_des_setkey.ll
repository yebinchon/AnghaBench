; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ablkcipher = type { i32 }
%struct.omap_des_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"enter, keylen: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_ablkcipher*, i32*, i32)* @omap_des_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_des_setkey(%struct.crypto_ablkcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ablkcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap_des_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_ablkcipher* %0, %struct.crypto_ablkcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %11 = call %struct.omap_des_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %10)
  store %struct.omap_des_ctx* %11, %struct.omap_des_ctx** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @verify_ablkcipher_des_key(%struct.crypto_ablkcipher* %14, i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %31

21:                                               ; preds = %3
  %22 = load %struct.omap_des_ctx*, %struct.omap_des_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.omap_des_ctx, %struct.omap_des_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @memcpy(i32 %24, i32* %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.omap_des_ctx*, %struct.omap_des_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.omap_des_ctx, %struct.omap_des_ctx* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %21, %19
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.omap_des_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @verify_ablkcipher_des_key(%struct.crypto_ablkcipher*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
