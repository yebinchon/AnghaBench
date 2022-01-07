; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_transmit_attempt_done_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_transmit_attempt_done_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }

@CEC_TX_STATUS_MAX_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cec-%s: invalid status 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cec_transmit_attempt_done_ts(%struct.cec_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @CEC_TX_STATUS_MAX_RETRIES, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  switch i32 %10, label %36 [
    i32 128, label %11
    i32 132, label %16
    i32 129, label %21
    i32 130, label %26
    i32 131, label %31
  ]

11:                                               ; preds = %3
  %12 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @cec_transmit_done_ts(%struct.cec_adapter* %12, i32 %13, i32 0, i32 0, i32 0, i32 0, i32 %14)
  br label %42

16:                                               ; preds = %3
  %17 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @cec_transmit_done_ts(%struct.cec_adapter* %17, i32 %18, i32 1, i32 0, i32 0, i32 0, i32 %19)
  br label %42

21:                                               ; preds = %3
  %22 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @cec_transmit_done_ts(%struct.cec_adapter* %22, i32 %23, i32 0, i32 1, i32 0, i32 0, i32 %24)
  br label %42

26:                                               ; preds = %3
  %27 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @cec_transmit_done_ts(%struct.cec_adapter* %27, i32 %28, i32 0, i32 0, i32 1, i32 0, i32 %29)
  br label %42

31:                                               ; preds = %3
  %32 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @cec_transmit_done_ts(%struct.cec_adapter* %32, i32 %33, i32 0, i32 0, i32 0, i32 1, i32 %34)
  br label %42

36:                                               ; preds = %3
  %37 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %31, %26, %21, %16, %11
  ret void
}

declare dso_local i32 @cec_transmit_done_ts(%struct.cec_adapter*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
