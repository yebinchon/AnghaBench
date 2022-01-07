; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.omap_des_ctx = type { i32 }
%struct.omap_des_reqctx = type { i64 }
%struct.omap_des_dev = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"nbytes: %d, enc: %d, cbc: %d\0A\00", align 1
@FLAGS_ENCRYPT = common dso_local global i64 0, align 8
@FLAGS_CBC = common dso_local global i64 0, align 8
@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"request size is not exact amount of DES blocks\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i64)* @omap_des_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_des_crypt(%struct.ablkcipher_request* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.omap_des_ctx*, align 8
  %7 = alloca %struct.omap_des_reqctx*, align 8
  %8 = alloca %struct.omap_des_dev*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %10 = call i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %9)
  %11 = call %struct.omap_des_ctx* @crypto_ablkcipher_ctx(i32 %10)
  store %struct.omap_des_ctx* %11, %struct.omap_des_ctx** %6, align 8
  %12 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %13 = call %struct.omap_des_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %12)
  store %struct.omap_des_reqctx* %13, %struct.omap_des_reqctx** %7, align 8
  %14 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %15 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @FLAGS_ENCRYPT, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @FLAGS_CBC, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %23, i32 %30)
  %32 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %33 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %36 = call i32 @IS_ALIGNED(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %2
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %57

42:                                               ; preds = %2
  %43 = load %struct.omap_des_ctx*, %struct.omap_des_ctx** %6, align 8
  %44 = call %struct.omap_des_dev* @omap_des_find_dev(%struct.omap_des_ctx* %43)
  store %struct.omap_des_dev* %44, %struct.omap_des_dev** %8, align 8
  %45 = load %struct.omap_des_dev*, %struct.omap_des_dev** %8, align 8
  %46 = icmp ne %struct.omap_des_dev* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %57

50:                                               ; preds = %42
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.omap_des_reqctx*, %struct.omap_des_reqctx** %7, align 8
  %53 = getelementptr inbounds %struct.omap_des_reqctx, %struct.omap_des_reqctx* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.omap_des_dev*, %struct.omap_des_dev** %8, align 8
  %55 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %56 = call i32 @omap_des_handle_queue(%struct.omap_des_dev* %54, %struct.ablkcipher_request* %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %50, %47, %38
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.omap_des_ctx* @crypto_ablkcipher_ctx(i32) #1

declare dso_local i32 @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.omap_des_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.omap_des_dev* @omap_des_find_dev(%struct.omap_des_ctx*) #1

declare dso_local i32 @omap_des_handle_queue(%struct.omap_des_dev*, %struct.ablkcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
