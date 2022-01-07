; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_get_seq_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_get_seq_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xadc = type { i64 }

@XADC_EXTERNAL_MUX_DUAL = common dso_local global i64 0, align 8
@XADC_CONF1_SEQ_SIMULTANEOUS = common dso_local global i32 0, align 4
@XADC_CONF1_SEQ_CONTINUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xadc*, i64)* @xadc_get_seq_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_get_seq_mode(%struct.xadc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xadc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.xadc* %0, %struct.xadc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = lshr i64 %7, 16
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %6, align 4
  %10 = load %struct.xadc*, %struct.xadc** %4, align 8
  %11 = getelementptr inbounds %struct.xadc, %struct.xadc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XADC_EXTERNAL_MUX_DUAL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @XADC_CONF1_SEQ_SIMULTANEOUS, align 4
  store i32 %16, i32* %3, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 65280
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 255
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @XADC_CONF1_SEQ_CONTINUOUS, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @XADC_CONF1_SEQ_SIMULTANEOUS, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
