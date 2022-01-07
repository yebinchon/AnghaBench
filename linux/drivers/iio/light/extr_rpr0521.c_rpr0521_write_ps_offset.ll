; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_write_ps_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_write_ps_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpr0521_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@RPR0521_REG_PS_OFFSET_LSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to write PS OFFSET register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpr0521_data*, i32)* @rpr0521_write_ps_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpr0521_write_ps_offset(%struct.rpr0521_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpr0521_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rpr0521_data* %0, %struct.rpr0521_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 1023
  %10 = call i32 @cpu_to_le16(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.rpr0521_data*, %struct.rpr0521_data** %4, align 8
  %12 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @RPR0521_REG_PS_OFFSET_LSB, align 4
  %15 = call i32 @regmap_raw_write(i32 %13, i32 %14, i32* %7, i32 4)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.rpr0521_data*, %struct.rpr0521_data** %4, align 8
  %20 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @regmap_raw_write(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
