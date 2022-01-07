; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_ahash_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_ahash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64 }
%struct.safexcel_ahash_req = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @safexcel_ahash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_ahash_update(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.safexcel_ahash_req*, align 8
  %5 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %6 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %7 = call %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request* %6)
  store %struct.safexcel_ahash_req* %7, %struct.safexcel_ahash_req** %4, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %15 = call i32 @safexcel_ahash_cache(%struct.ahash_request* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %17 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %20 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %13
  %28 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %29 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27, %13
  %33 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %4, align 8
  %34 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %27
  %38 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %39 = call i32 @safexcel_ahash_enqueue(%struct.ahash_request* %38)
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %37, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @safexcel_ahash_cache(%struct.ahash_request*) #1

declare dso_local i32 @safexcel_ahash_enqueue(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
