; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16136.c_adis16136_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16136.c_adis16136_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adis16136 = type { i32 }

@ADIS16136_REG_SMPL_PRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adis16136*, i32)* @adis16136_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16136_set_freq(%struct.adis16136* %0, i32 %1) #0 {
  %3 = alloca %struct.adis16136*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adis16136* %0, %struct.adis16136** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = udiv i32 32768, %6
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 15
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 15, i32* %5, align 4
  br label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp ugt i32 %12, 65535
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 65535, i32* %5, align 4
  br label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %14
  br label %19

19:                                               ; preds = %18, %10
  %20 = load %struct.adis16136*, %struct.adis16136** %3, align 8
  %21 = getelementptr inbounds %struct.adis16136, %struct.adis16136* %20, i32 0, i32 0
  %22 = load i32, i32* @ADIS16136_REG_SMPL_PRD, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @adis_write_reg_16(i32* %21, i32 %22, i32 %23)
  ret i32 %24
}

declare dso_local i32 @adis_write_reg_16(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
