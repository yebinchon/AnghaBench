; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc12138.c_adc12138_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc12138.c_adc12138_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc12138 = type { i32 }

@ADC12138_MODE_READ_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adc12138*)* @adc12138_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc12138_read_status(%struct.adc12138* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adc12138*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.adc12138* %0, %struct.adc12138** %3, align 8
  %6 = load %struct.adc12138*, %struct.adc12138** %3, align 8
  %7 = load i32, i32* @ADC12138_MODE_READ_STATUS, align 4
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %9 = call i32 @adc12138_mode_programming(%struct.adc12138* %6, i32 %7, i32* %8, i32 2)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 1
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 7
  %21 = or i32 %17, %20
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %14, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @adc12138_mode_programming(%struct.adc12138*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
