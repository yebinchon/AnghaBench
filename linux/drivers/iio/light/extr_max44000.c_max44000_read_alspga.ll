; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44000.c_max44000_read_alspga.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44000.c_max44000_read_alspga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max44000_data = type { i32 }

@MAX44000_REG_CFG_RX = common dso_local global i32 0, align 4
@MAX44000_CFG_RX_ALSPGA_MASK = common dso_local global i32 0, align 4
@MAX44000_CFG_RX_ALSPGA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max44000_data*)* @max44000_read_alspga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max44000_read_alspga(%struct.max44000_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max44000_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.max44000_data* %0, %struct.max44000_data** %3, align 8
  %6 = load %struct.max44000_data*, %struct.max44000_data** %3, align 8
  %7 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MAX44000_REG_CFG_RX, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MAX44000_CFG_RX_ALSPGA_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @MAX44000_CFG_RX_ALSPGA_SHIFT, align 4
  %20 = lshr i32 %18, %19
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %15, %13
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
