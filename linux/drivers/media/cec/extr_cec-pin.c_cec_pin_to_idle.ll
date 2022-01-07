; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_to_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_to_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_pin = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@CEC_ST_TX_WAIT = common dso_local global i64 0, align 8
@CEC_ST_TX_LOW_DRIVE = common dso_local global i64 0, align 8
@CEC_ST_RX_START_BIT_LOW = common dso_local global i64 0, align 8
@CEC_ST_RX_LOW_DRIVE = common dso_local global i64 0, align 8
@CEC_ST_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cec_pin*)* @cec_pin_to_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cec_pin_to_idle(%struct.cec_pin* %0) #0 {
  %2 = alloca %struct.cec_pin*, align 8
  store %struct.cec_pin* %0, %struct.cec_pin** %2, align 8
  %3 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %4 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %3, i32 0, i32 7
  store i64 0, i64* %4, align 8
  %5 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %6 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %5, i32 0, i32 8
  store i64 0, i64* %6, align 8
  %7 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %8 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %11 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %10, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @memset(i32 %13, i32 0, i32 4)
  %15 = call i32 @ns_to_ktime(i32 0)
  %16 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %17 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %19 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %21 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %23 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CEC_ST_TX_WAIT, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %1
  %28 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %29 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CEC_ST_TX_LOW_DRIVE, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %35 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = xor i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %33, %27, %1
  %39 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %40 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CEC_ST_RX_START_BIT_LOW, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %46 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CEC_ST_RX_LOW_DRIVE, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %52 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %44, %38
  %56 = load i64, i64* @CEC_ST_IDLE, align 8
  %57 = load %struct.cec_pin*, %struct.cec_pin** %2, align 8
  %58 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
