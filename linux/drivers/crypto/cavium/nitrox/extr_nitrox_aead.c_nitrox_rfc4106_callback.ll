; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_rfc4106_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_aead.c_nitrox_rfc4106_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.nitrox_rfc4106_rctx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nitrox_kcrypt_request }
%struct.nitrox_kcrypt_request = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"request failed status 0x%0x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @nitrox_rfc4106_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nitrox_rfc4106_callback(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.nitrox_rfc4106_rctx*, align 8
  %7 = alloca %struct.nitrox_kcrypt_request*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.aead_request*
  store %struct.aead_request* %9, %struct.aead_request** %5, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %11 = call %struct.nitrox_rfc4106_rctx* @aead_request_ctx(%struct.aead_request* %10)
  store %struct.nitrox_rfc4106_rctx* %11, %struct.nitrox_rfc4106_rctx** %6, align 8
  %12 = load %struct.nitrox_rfc4106_rctx*, %struct.nitrox_rfc4106_rctx** %6, align 8
  %13 = getelementptr inbounds %struct.nitrox_rfc4106_rctx, %struct.nitrox_rfc4106_rctx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.nitrox_kcrypt_request* %14, %struct.nitrox_kcrypt_request** %7, align 8
  %15 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %7, align 8
  %16 = call i32 @free_src_sglist(%struct.nitrox_kcrypt_request* %15)
  %17 = load %struct.nitrox_kcrypt_request*, %struct.nitrox_kcrypt_request** %7, align 8
  %18 = call i32 @free_dst_sglist(%struct.nitrox_kcrypt_request* %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %28 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %29, align 8
  %31 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %32 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %31, i32 0, i32 0
  %33 = load i32, i32* %4, align 4
  %34 = call i32 %30(%struct.TYPE_4__* %32, i32 %33)
  ret void
}

declare dso_local %struct.nitrox_rfc4106_rctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @free_src_sglist(%struct.nitrox_kcrypt_request*) #1

declare dso_local i32 @free_dst_sglist(%struct.nitrox_kcrypt_request*) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
