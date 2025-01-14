; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_verify_ring_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_transport.c_adf_verify_ring_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADF_MIN_RING_SIZE = common dso_local global i32 0, align 4
@ADF_MAX_RING_SIZE = common dso_local global i32 0, align 4
@ADF_DEFAULT_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @adf_verify_ring_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adf_verify_ring_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ADF_MIN_RING_SIZE, align 4
  store i32 %7, i32* %6, align 4
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @ADF_MAX_RING_SIZE, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ADF_SIZE_TO_RING_SIZE_IN_BYTES(i32 %16)
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %27

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load i32, i32* @ADF_DEFAULT_RING_SIZE, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @ADF_SIZE_TO_RING_SIZE_IN_BYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
