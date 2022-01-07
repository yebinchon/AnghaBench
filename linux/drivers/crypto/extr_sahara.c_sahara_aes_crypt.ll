; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_aes_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_sahara.c_sahara_aes_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sahara_dev = type { i32, i32, i32, i32 }
%struct.ablkcipher_request = type { i32 }
%struct.sahara_aes_reqctx = type { i64 }

@dev_ptr = common dso_local global %struct.sahara_dev* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"nbytes: %d, enc: %d, cbc: %d\0A\00", align 1
@FLAGS_ENCRYPT = common dso_local global i64 0, align 8
@FLAGS_CBC = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"request size is not exact amount of AES blocks\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*, i64)* @sahara_aes_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sahara_aes_crypt(%struct.ablkcipher_request* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ablkcipher_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sahara_aes_reqctx*, align 8
  %7 = alloca %struct.sahara_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %10 = call %struct.sahara_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request* %9)
  store %struct.sahara_aes_reqctx* %10, %struct.sahara_aes_reqctx** %6, align 8
  %11 = load %struct.sahara_dev*, %struct.sahara_dev** @dev_ptr, align 8
  store %struct.sahara_dev* %11, %struct.sahara_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.sahara_dev*, %struct.sahara_dev** %7, align 8
  %13 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %16 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @FLAGS_ENCRYPT, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @FLAGS_CBC, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %24, i32 %31)
  %33 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %34 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %37 = call i32 @IS_ALIGNED(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %2
  %40 = load %struct.sahara_dev*, %struct.sahara_dev** %7, align 8
  %41 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %65

46:                                               ; preds = %2
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.sahara_aes_reqctx*, %struct.sahara_aes_reqctx** %6, align 8
  %49 = getelementptr inbounds %struct.sahara_aes_reqctx, %struct.sahara_aes_reqctx* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.sahara_dev*, %struct.sahara_dev** %7, align 8
  %51 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %50, i32 0, i32 1
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.sahara_dev*, %struct.sahara_dev** %7, align 8
  %54 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %53, i32 0, i32 2
  %55 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %4, align 8
  %56 = call i32 @ablkcipher_enqueue_request(i32* %54, %struct.ablkcipher_request* %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.sahara_dev*, %struct.sahara_dev** %7, align 8
  %58 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %57, i32 0, i32 1
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.sahara_dev*, %struct.sahara_dev** %7, align 8
  %61 = getelementptr inbounds %struct.sahara_dev, %struct.sahara_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @wake_up_process(i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %46, %39
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.sahara_aes_reqctx* @ablkcipher_request_ctx(%struct.ablkcipher_request*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ablkcipher_enqueue_request(i32*, %struct.ablkcipher_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
