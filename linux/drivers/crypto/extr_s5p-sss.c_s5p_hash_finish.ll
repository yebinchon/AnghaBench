; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.s5p_hash_reqctx = type { i64, %struct.s5p_aes_dev* }
%struct.s5p_aes_dev = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"hash_finish digcnt: %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*)* @s5p_hash_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_hash_finish(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.s5p_hash_reqctx*, align 8
  %4 = alloca %struct.s5p_aes_dev*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %6 = call %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request* %5)
  store %struct.s5p_hash_reqctx* %6, %struct.s5p_hash_reqctx** %3, align 8
  %7 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %7, i32 0, i32 1
  %9 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %8, align 8
  store %struct.s5p_aes_dev* %9, %struct.s5p_aes_dev** %4, align 8
  %10 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %3, align 8
  %11 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %16 = call i32 @s5p_hash_copy_result(%struct.ahash_request* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %19 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %3, align 8
  %22 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %23)
  ret void
}

declare dso_local %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @s5p_hash_copy_result(%struct.ahash_request*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
