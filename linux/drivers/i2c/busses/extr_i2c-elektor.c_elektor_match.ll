; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-elektor.c_elektor_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-elektor.c_elektor_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@mmapped = common dso_local global i32 0, align 4
@base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"incorrect base address (%#x) specified for mmapped I/O\0A\00", align 1
@DEFAULT_BASE = common dso_local global i32 0, align 4
@I2C_PCF_CLK = common dso_local global i32 0, align 4
@I2C_PCF_TRNS90 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_CONTAQ_82C693 = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_CONTAQ = common dso_local global i32 0, align 4
@clock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @elektor_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elektor_match(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @mmapped, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* @base, align 4
  %10 = icmp slt i32 %9, 819200
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @base, align 4
  %14 = call i32 @dev_err(%struct.device* %12, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 0, i32* %3, align 4
  br label %21

15:                                               ; preds = %8, %2
  %16 = load i32, i32* @base, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @DEFAULT_BASE, align 4
  store i32 %19, i32* @base, align 4
  br label %20

20:                                               ; preds = %18, %15
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %11
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
