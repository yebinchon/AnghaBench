; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_aead_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_aead_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)* }
%struct.nitrox_aead_rctx = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"request failed status 0x%0x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @nitrox_aead_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nitrox_aead_callback(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.nitrox_aead_rctx*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.aead_request*
  store %struct.aead_request* %8, %struct.aead_request** %5, align 8
  %9 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %10 = call %struct.nitrox_aead_rctx* @aead_request_ctx(%struct.aead_request* %9)
  store %struct.nitrox_aead_rctx* %10, %struct.nitrox_aead_rctx** %6, align 8
  %11 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %12 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %11, i32 0, i32 0
  %13 = call i32 @free_src_sglist(i32* %12)
  %14 = load %struct.nitrox_aead_rctx*, %struct.nitrox_aead_rctx** %6, align 8
  %15 = getelementptr inbounds %struct.nitrox_aead_rctx, %struct.nitrox_aead_rctx* %14, i32 0, i32 0
  %16 = call i32 @free_dst_sglist(i32* %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %27, align 8
  %29 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %30 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %29, i32 0, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = call i32 %28(%struct.TYPE_2__* %30, i32 %31)
  ret void
}

declare dso_local %struct.nitrox_aead_rctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @free_src_sglist(i32*) #1

declare dso_local i32 @free_dst_sglist(i32*) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
