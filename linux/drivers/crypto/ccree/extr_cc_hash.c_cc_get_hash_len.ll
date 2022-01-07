; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_get_hash_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_hash.c_cc_get_hash_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.cc_hash_ctx = type { i64, i32 }

@DRV_HASH_SM3 = common dso_local global i64 0, align 8
@CC_SM3_HASH_LEN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @cc_get_hash_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_get_hash_len(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.cc_hash_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %6 = call %struct.cc_hash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %5)
  store %struct.cc_hash_ctx* %6, %struct.cc_hash_ctx** %4, align 8
  %7 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @DRV_HASH_SM3, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @CC_SM3_HASH_LEN_SIZE, align 4
  store i32 %13, i32* %2, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.cc_hash_ctx*, %struct.cc_hash_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.cc_hash_ctx, %struct.cc_hash_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @cc_get_default_hash_len(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %14, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.cc_hash_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @cc_get_default_hash_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
