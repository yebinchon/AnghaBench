; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_read_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_read_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.s5p_hash_reqctx = type { i32, i64, %struct.s5p_aes_dev* }
%struct.s5p_aes_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*)* @s5p_hash_read_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_hash_read_msg(%struct.ahash_request* %0) #0 {
  %2 = alloca %struct.ahash_request*, align 8
  %3 = alloca %struct.s5p_hash_reqctx*, align 8
  %4 = alloca %struct.s5p_aes_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %2, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %2, align 8
  %8 = call %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request* %7)
  store %struct.s5p_hash_reqctx* %8, %struct.s5p_hash_reqctx** %3, align 8
  %9 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %3, align 8
  %10 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %9, i32 0, i32 2
  %11 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %10, align 8
  store %struct.s5p_aes_dev* %11, %struct.s5p_aes_dev** %4, align 8
  %12 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %3, align 8
  %13 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %31, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %3, align 8
  %19 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @SSS_REG_HASH_OUT(i32 %24)
  %26 = call i32 @s5p_hash_read(%struct.s5p_aes_dev* %23, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %16

34:                                               ; preds = %16
  ret void
}

declare dso_local %struct.s5p_hash_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @s5p_hash_read(%struct.s5p_aes_dev*, i32) #1

declare dso_local i32 @SSS_REG_HASH_OUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
