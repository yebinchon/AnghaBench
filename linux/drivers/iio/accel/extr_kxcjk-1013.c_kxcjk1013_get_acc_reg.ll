; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_get_acc_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_kxcjk-1013.c_kxcjk1013_get_acc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxcjk1013_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KXCJK1013_REG_XOUT_L = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"failed to read accel_%c registers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxcjk1013_data*, i32)* @kxcjk1013_get_acc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxcjk1013_get_acc_reg(%struct.kxcjk1013_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kxcjk1013_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.kxcjk1013_data* %0, %struct.kxcjk1013_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @KXCJK1013_REG_XOUT_L, align 8
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 %9, 2
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %8, %11
  store i64 %12, i64* %6, align 8
  %13 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %14 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @i2c_smbus_read_word_data(%struct.TYPE_2__* %15, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.kxcjk1013_data*, %struct.kxcjk1013_data** %4, align 8
  %22 = getelementptr inbounds %struct.kxcjk1013_data, %struct.kxcjk1013_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 120, %25
  %27 = trunc i32 %26 to i8
  %28 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8 signext %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %20
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @i2c_smbus_read_word_data(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
