; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_hmac_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_sha_dev = type { i32, %struct.ahash_request* }
%struct.ahash_request = type { i32 }
%struct.atmel_sha_reqctx = type { i32 }

@atmel_sha_hmac_init_done = common dso_local global i32 0, align 4
@atmel_sha_done = common dso_local global i32 0, align 4
@atmel_sha_hmac_final = common dso_local global i32 0, align 4
@atmel_sha_hmac_digest2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_sha_dev*)* @atmel_sha_hmac_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_hmac_start(%struct.atmel_sha_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_sha_dev*, align 8
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca %struct.atmel_sha_reqctx*, align 8
  %6 = alloca i32, align 4
  store %struct.atmel_sha_dev* %0, %struct.atmel_sha_dev** %3, align 8
  %7 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %7, i32 0, i32 1
  %9 = load %struct.ahash_request*, %struct.ahash_request** %8, align 8
  store %struct.ahash_request* %9, %struct.ahash_request** %4, align 8
  %10 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %11 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %10)
  store %struct.atmel_sha_reqctx* %11, %struct.atmel_sha_reqctx** %5, align 8
  %12 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %13 = call i32 @atmel_sha_hw_init(%struct.atmel_sha_dev* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @atmel_sha_complete(%struct.atmel_sha_dev* %17, i32 %18)
  store i32 %19, i32* %2, align 4
  br label %51

20:                                               ; preds = %1
  %21 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %5, align 8
  %22 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %44 [
    i32 129, label %24
    i32 128, label %28
    i32 130, label %34
    i32 131, label %40
  ]

24:                                               ; preds = %20
  %25 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %26 = load i32, i32* @atmel_sha_hmac_init_done, align 4
  %27 = call i32 @atmel_sha_hmac_setup(%struct.atmel_sha_dev* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %49

28:                                               ; preds = %20
  %29 = load i32, i32* @atmel_sha_done, align 4
  %30 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %31 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %33 = call i32 @atmel_sha_update_req(%struct.atmel_sha_dev* %32)
  store i32 %33, i32* %6, align 4
  br label %49

34:                                               ; preds = %20
  %35 = load i32, i32* @atmel_sha_hmac_final, align 4
  %36 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %37 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %39 = call i32 @atmel_sha_final_req(%struct.atmel_sha_dev* %38)
  store i32 %39, i32* %6, align 4
  br label %49

40:                                               ; preds = %20
  %41 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %42 = load i32, i32* @atmel_sha_hmac_digest2, align 4
  %43 = call i32 @atmel_sha_hmac_setup(%struct.atmel_sha_dev* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %49

44:                                               ; preds = %20
  %45 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %3, align 8
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  %48 = call i32 @atmel_sha_complete(%struct.atmel_sha_dev* %45, i32 %47)
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %40, %34, %28, %24
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %44, %16
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @atmel_sha_hw_init(%struct.atmel_sha_dev*) #1

declare dso_local i32 @atmel_sha_complete(%struct.atmel_sha_dev*, i32) #1

declare dso_local i32 @atmel_sha_hmac_setup(%struct.atmel_sha_dev*, i32) #1

declare dso_local i32 @atmel_sha_update_req(%struct.atmel_sha_dev*) #1

declare dso_local i32 @atmel_sha_final_req(%struct.atmel_sha_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
