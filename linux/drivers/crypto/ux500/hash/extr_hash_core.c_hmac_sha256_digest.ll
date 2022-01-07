; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ux500/hash/extr_hash_core.c_hmac_sha256_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ux500/hash/extr_hash_core.c_hmac_sha256_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @hmac_sha256_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_sha256_digest(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %6 = call i32 @hmac_sha256_init(%struct.ahash_request* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %15

10:                                               ; preds = %1
  %11 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %12 = call i32 @ahash_update(%struct.ahash_request* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %14 = call i32 @ahash_final(%struct.ahash_request* %13)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %10, %9
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  br label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  ret i32 %23
}

declare dso_local i32 @hmac_sha256_init(%struct.ahash_request*) #1

declare dso_local i32 @ahash_update(%struct.ahash_request*) #1

declare dso_local i32 @ahash_final(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
