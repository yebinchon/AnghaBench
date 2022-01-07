; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1780.c_bh1780_read_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1780.c_bh1780_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh1780_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BH1780_CMD_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"i2c_smbus_read_word_data failed error %d, register %01x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bh1780_data*, i32)* @bh1780_read_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1780_read_word(%struct.bh1780_data* %0, i32 %1) #0 {
  %3 = alloca %struct.bh1780_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bh1780_data* %0, %struct.bh1780_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bh1780_data*, %struct.bh1780_data** %3, align 8
  %7 = getelementptr inbounds %struct.bh1780_data, %struct.bh1780_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i32, i32* @BH1780_CMD_BIT, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @i2c_smbus_read_word_data(%struct.TYPE_2__* %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.bh1780_data*, %struct.bh1780_data** %3, align 8
  %17 = getelementptr inbounds %struct.bh1780_data, %struct.bh1780_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %15, %2
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @i2c_smbus_read_word_data(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
