; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin-error-inj.c_cec_pin_tx_error_inj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin-error-inj.c_cec_pin_tx_error_inj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_pin = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64* }

@CEC_ERROR_INJ_OP_ANY = common dso_local global i64 0, align 8
@CEC_ERROR_INJ_TX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cec_pin_tx_error_inj(%struct.cec_pin* %0) #0 {
  %2 = alloca %struct.cec_pin*, align 8
  %3 = alloca i64, align 8
  store %struct.cec_pin* %0, %struct.cec_pin** %2, align 8
  %4 = load i64, i64* @CEC_ERROR_INJ_OP_ANY, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %6 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CEC_ERROR_INJ_TX_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %16 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %22 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %20, %14, %1
  %28 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %29 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CEC_ERROR_INJ_TX_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i64, i64* %3, align 8
  br label %41

39:                                               ; preds = %27
  %40 = load i64, i64* @CEC_ERROR_INJ_OP_ANY, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i64 [ %38, %37 ], [ %40, %39 ]
  ret i64 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
