; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_header_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_aead.c_cc_proc_header_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.cc_hw_desc = type { i32 }
%struct.aead_req_ctx = type { i64 }

@DIN_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.cc_hw_desc*, i32*)* @cc_proc_header_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_proc_header_desc(%struct.aead_request* %0, %struct.cc_hw_desc* %1, i32* %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.cc_hw_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.aead_req_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store %struct.cc_hw_desc* %1, %struct.cc_hw_desc** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %10 = call %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request* %9)
  store %struct.aead_req_ctx* %10, %struct.aead_req_ctx** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.aead_req_ctx*, %struct.aead_req_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.aead_req_ctx, %struct.aead_req_ctx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %19 = load i32, i32* @DIN_HASH, align 4
  %20 = load %struct.cc_hw_desc*, %struct.cc_hw_desc** %5, align 8
  %21 = call i32 @cc_set_assoc_desc(%struct.aead_request* %18, i32 %19, %struct.cc_hw_desc* %20, i32* %8)
  br label %22

22:                                               ; preds = %17, %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  ret void
}

declare dso_local %struct.aead_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @cc_set_assoc_desc(%struct.aead_request*, i32, %struct.cc_hw_desc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
