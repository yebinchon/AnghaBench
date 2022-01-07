; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_ahash_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamhash.c_ahash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.caam_hash_state = type { i64, i64, i64, i64, i64, i64, i32, i32, i32 }

@ahash_update_first = common dso_local global i32 0, align 4
@ahash_finup_first = common dso_local global i32 0, align 4
@ahash_final_no_ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_init(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.caam_hash_state*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %4 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %5 = call %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request* %4)
  store %struct.caam_hash_state* %5, %struct.caam_hash_state** %3, align 8
  %6 = load i32, i32* @ahash_update_first, align 4
  %7 = load %struct.caam_hash_state*, %struct.caam_hash_state** %3, align 8
  %8 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %7, i32 0, i32 8
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @ahash_finup_first, align 4
  %10 = load %struct.caam_hash_state*, %struct.caam_hash_state** %3, align 8
  %11 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @ahash_final_no_ctx, align 4
  %13 = load %struct.caam_hash_state*, %struct.caam_hash_state** %3, align 8
  %14 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.caam_hash_state*, %struct.caam_hash_state** %3, align 8
  %16 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %15, i32 0, i32 5
  store i64 0, i64* %16, align 8
  %17 = load %struct.caam_hash_state*, %struct.caam_hash_state** %3, align 8
  %18 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.caam_hash_state*, %struct.caam_hash_state** %3, align 8
  %20 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.caam_hash_state*, %struct.caam_hash_state** %3, align 8
  %22 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.caam_hash_state*, %struct.caam_hash_state** %3, align 8
  %24 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.caam_hash_state*, %struct.caam_hash_state** %3, align 8
  %26 = getelementptr inbounds %struct.caam_hash_state, %struct.caam_hash_state* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  ret i32 0
}

declare dso_local %struct.caam_hash_state* @ahash_request_ctx(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
