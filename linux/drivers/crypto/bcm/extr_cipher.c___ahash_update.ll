; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c___ahash_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c___ahash_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64 }
%struct.iproc_reqctx_s = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"ahash_update() nbytes:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @__ahash_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ahash_update(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.iproc_reqctx_s*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %5 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %6 = call %struct.iproc_reqctx_s* @ahash_request_ctx(%struct.ahash_request* %5)
  store %struct.iproc_reqctx_s* %6, %struct.iproc_reqctx_s** %4, align 8
  %7 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %8 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @flow_log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %12 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %18 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %21 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 8
  %26 = load %struct.iproc_reqctx_s*, %struct.iproc_reqctx_s** %4, align 8
  %27 = getelementptr inbounds %struct.iproc_reqctx_s, %struct.iproc_reqctx_s* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %29 = call i32 @ahash_enqueue(%struct.ahash_request* %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %16, %15
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.iproc_reqctx_s* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @flow_log(i8*, i64) #1

declare dso_local i32 @ahash_enqueue(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
