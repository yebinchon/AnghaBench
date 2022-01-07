; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl6040-vibra.c_twl6040_vib_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_twl6040-vibra.c_twl6040_vib_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vibra_info = type { i32, %struct.twl6040* }
%struct.twl6040 = type { i32 }

@TWL6040_REG_STATUS = common dso_local global i32 0, align 4
@TWL6040_VIBLOCDET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Left Vibrator overcurrent detected\0A\00", align 1
@TWL6040_REG_VIBCTLL = common dso_local global i32 0, align 4
@TWL6040_VIBENA = common dso_local global i32 0, align 4
@TWL6040_VIBROCDET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Right Vibrator overcurrent detected\0A\00", align 1
@TWL6040_REG_VIBCTLR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @twl6040_vib_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6040_vib_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vibra_info*, align 8
  %6 = alloca %struct.twl6040*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vibra_info*
  store %struct.vibra_info* %9, %struct.vibra_info** %5, align 8
  %10 = load %struct.vibra_info*, %struct.vibra_info** %5, align 8
  %11 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %10, i32 0, i32 1
  %12 = load %struct.twl6040*, %struct.twl6040** %11, align 8
  store %struct.twl6040* %12, %struct.twl6040** %6, align 8
  %13 = load %struct.twl6040*, %struct.twl6040** %6, align 8
  %14 = load i32, i32* @TWL6040_REG_STATUS, align 4
  %15 = call i32 @twl6040_reg_read(%struct.twl6040* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @TWL6040_VIBLOCDET, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.vibra_info*, %struct.vibra_info** %5, align 8
  %22 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.twl6040*, %struct.twl6040** %6, align 8
  %26 = load i32, i32* @TWL6040_REG_VIBCTLL, align 4
  %27 = load i32, i32* @TWL6040_VIBENA, align 4
  %28 = call i32 @twl6040_clear_bits(%struct.twl6040* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %20, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TWL6040_VIBROCDET, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.vibra_info*, %struct.vibra_info** %5, align 8
  %36 = getelementptr inbounds %struct.vibra_info, %struct.vibra_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.twl6040*, %struct.twl6040** %6, align 8
  %40 = load i32, i32* @TWL6040_REG_VIBCTLR, align 4
  %41 = load i32, i32* @TWL6040_VIBENA, align 4
  %42 = call i32 @twl6040_clear_bits(%struct.twl6040* %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %34, %29
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %44
}

declare dso_local i32 @twl6040_reg_read(%struct.twl6040*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @twl6040_clear_bits(%struct.twl6040*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
