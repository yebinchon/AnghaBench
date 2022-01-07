; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-sha.c_atmel_sha_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.atmel_sha_reqctx = type { i32, i64*, %struct.atmel_sha_dev* }
%struct.atmel_sha_dev = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"digcnt: 0x%llx 0x%llx, bufcnt: %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @atmel_sha_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_sha_finish(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.atmel_sha_reqctx*, align 8
  %4 = alloca %struct.atmel_sha_dev*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %6 = call %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request* %5)
  store %struct.atmel_sha_reqctx* %6, %struct.atmel_sha_reqctx** %3, align 8
  %7 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %7, i32 0, i32 2
  %9 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %8, align 8
  store %struct.atmel_sha_dev* %9, %struct.atmel_sha_dev** %4, align 8
  %10 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %11 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %18 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16, %1
  %24 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %25 = call i32 @atmel_sha_copy_ready_hash(%struct.ahash_request* %24)
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.atmel_sha_dev*, %struct.atmel_sha_dev** %4, align 8
  %28 = getelementptr inbounds %struct.atmel_sha_dev, %struct.atmel_sha_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %31 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %36 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.atmel_sha_reqctx*, %struct.atmel_sha_reqctx** %3, align 8
  %41 = getelementptr inbounds %struct.atmel_sha_reqctx, %struct.atmel_sha_reqctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %39, i32 %42)
  ret i32 0
}

declare dso_local %struct.atmel_sha_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @atmel_sha_copy_ready_hash(%struct.ahash_request*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
