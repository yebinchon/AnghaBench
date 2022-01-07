; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_queue_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cipher.c_mv_cesa_skcipher_queue_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, i32 }
%struct.mv_cesa_op_ctx = type { i32 }
%struct.mv_cesa_skcipher_req = type { i32 }
%struct.mv_cesa_engine = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, %struct.mv_cesa_op_ctx*)* @mv_cesa_skcipher_queue_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_skcipher_queue_req(%struct.skcipher_request* %0, %struct.mv_cesa_op_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca %struct.mv_cesa_op_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv_cesa_skcipher_req*, align 8
  %8 = alloca %struct.mv_cesa_engine*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store %struct.mv_cesa_op_ctx* %1, %struct.mv_cesa_op_ctx** %5, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %10 = call %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request* %9)
  store %struct.mv_cesa_skcipher_req* %10, %struct.mv_cesa_skcipher_req** %7, align 8
  %11 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %12 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %5, align 8
  %13 = call i32 @mv_cesa_skcipher_req_init(%struct.skcipher_request* %11, %struct.mv_cesa_op_ctx* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %20 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.mv_cesa_engine* @mv_cesa_select_engine(i32 %21)
  store %struct.mv_cesa_engine* %22, %struct.mv_cesa_engine** %8, align 8
  %23 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %24 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %23, i32 0, i32 0
  %25 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %8, align 8
  %26 = call i32 @mv_cesa_skcipher_prepare(i32* %24, %struct.mv_cesa_engine* %25)
  %27 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %28 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %27, i32 0, i32 0
  %29 = load %struct.mv_cesa_skcipher_req*, %struct.mv_cesa_skcipher_req** %7, align 8
  %30 = getelementptr inbounds %struct.mv_cesa_skcipher_req, %struct.mv_cesa_skcipher_req* %29, i32 0, i32 0
  %31 = call i32 @mv_cesa_queue_req(i32* %28, i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %33 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %32, i32 0, i32 0
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @mv_cesa_req_needs_cleanup(i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %18
  %38 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %39 = call i32 @mv_cesa_skcipher_cleanup(%struct.skcipher_request* %38)
  br label %40

40:                                               ; preds = %37, %18
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.mv_cesa_skcipher_req* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @mv_cesa_skcipher_req_init(%struct.skcipher_request*, %struct.mv_cesa_op_ctx*) #1

declare dso_local %struct.mv_cesa_engine* @mv_cesa_select_engine(i32) #1

declare dso_local i32 @mv_cesa_skcipher_prepare(i32*, %struct.mv_cesa_engine*) #1

declare dso_local i32 @mv_cesa_queue_req(i32*, i32*) #1

declare dso_local i64 @mv_cesa_req_needs_cleanup(i32*, i32) #1

declare dso_local i32 @mv_cesa_skcipher_cleanup(%struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
