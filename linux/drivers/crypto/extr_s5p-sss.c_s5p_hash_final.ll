; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_final.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.s5p_hash_reqctx = type { i32, i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@BUFLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @s5p_hash_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_hash_final(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.s5p_hash_reqctx*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %6 = call %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request* %5)
  store %struct.s5p_hash_reqctx* %6, %struct.s5p_hash_reqctx** %4, align 8
  %7 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %8 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %10 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %18 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %4, align 8
  %23 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BUFLEN, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %29 = call i32 @s5p_hash_final_shash(%struct.ahash_request* %28)
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %21, %16
  %31 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %32 = call i32 @s5p_hash_enqueue(%struct.ahash_request* %31, i32 0)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %27, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @s5p_hash_final_shash(%struct.ahash_request*) #1

declare dso_local i32 @s5p_hash_enqueue(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
