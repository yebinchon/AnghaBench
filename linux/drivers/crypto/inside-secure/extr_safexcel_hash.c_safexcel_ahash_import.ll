; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_ahash_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_hash.c_safexcel_ahash_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.safexcel_ahash_req = type { i32, i32, i32, i32, i32, i32 }
%struct.safexcel_ahash_export_state = type { i32, i32, i32, i32, i32 }

@HASH_CACHE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i8*)* @safexcel_ahash_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_ahash_import(%struct.ahash_request* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.safexcel_ahash_req*, align 8
  %7 = alloca %struct.safexcel_ahash_export_state*, align 8
  %8 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %10 = call %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request* %9)
  store %struct.safexcel_ahash_req* %10, %struct.safexcel_ahash_req** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.safexcel_ahash_export_state*
  store %struct.safexcel_ahash_export_state* %12, %struct.safexcel_ahash_export_state** %7, align 8
  %13 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %14 = call i32 @crypto_ahash_init(%struct.ahash_request* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.safexcel_ahash_export_state*, %struct.safexcel_ahash_export_state** %7, align 8
  %21 = getelementptr inbounds %struct.safexcel_ahash_export_state, %struct.safexcel_ahash_export_state* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %6, align 8
  %24 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load %struct.safexcel_ahash_export_state*, %struct.safexcel_ahash_export_state** %7, align 8
  %26 = getelementptr inbounds %struct.safexcel_ahash_export_state, %struct.safexcel_ahash_export_state* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %6, align 8
  %29 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.safexcel_ahash_export_state*, %struct.safexcel_ahash_export_state** %7, align 8
  %31 = getelementptr inbounds %struct.safexcel_ahash_export_state, %struct.safexcel_ahash_export_state* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %6, align 8
  %34 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %6, align 8
  %36 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.safexcel_ahash_export_state*, %struct.safexcel_ahash_export_state** %7, align 8
  %39 = getelementptr inbounds %struct.safexcel_ahash_export_state, %struct.safexcel_ahash_export_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HASH_CACHE_SIZE, align 4
  %42 = call i32 @memcpy(i32 %37, i32 %40, i32 %41)
  %43 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %6, align 8
  %44 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.safexcel_ahash_export_state*, %struct.safexcel_ahash_export_state** %7, align 8
  %47 = getelementptr inbounds %struct.safexcel_ahash_export_state, %struct.safexcel_ahash_export_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.safexcel_ahash_req*, %struct.safexcel_ahash_req** %6, align 8
  %50 = getelementptr inbounds %struct.safexcel_ahash_req, %struct.safexcel_ahash_req* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32 %45, i32 %48, i32 %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %19, %17
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.safexcel_ahash_req* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_init(%struct.ahash_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
