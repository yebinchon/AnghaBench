; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8925_onkey.c_max8925_onkey_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8925_onkey.c_max8925_onkey_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8925_onkey_info = type { i32, i32, i32 }

@MAX8925_ON_OFF_STATUS = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@SW_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"onkey state:%d\0A\00", align 1
@MAX8925_SYSENSEL = common dso_local global i32 0, align 4
@HARDRESET_EN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max8925_onkey_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_onkey_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.max8925_onkey_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.max8925_onkey_info*
  store %struct.max8925_onkey_info* %8, %struct.max8925_onkey_info** %5, align 8
  %9 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %10 = getelementptr inbounds %struct.max8925_onkey_info, %struct.max8925_onkey_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MAX8925_ON_OFF_STATUS, align 4
  %13 = call i32 @max8925_reg_read(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %15 = getelementptr inbounds %struct.max8925_onkey_info, %struct.max8925_onkey_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @KEY_POWER, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SW_INPUT, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @input_report_key(i32 %16, i32 %17, i32 %20)
  %22 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %23 = getelementptr inbounds %struct.max8925_onkey_info, %struct.max8925_onkey_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @input_sync(i32 %24)
  %26 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %27 = getelementptr inbounds %struct.max8925_onkey_info, %struct.max8925_onkey_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.max8925_onkey_info*, %struct.max8925_onkey_info** %5, align 8
  %32 = getelementptr inbounds %struct.max8925_onkey_info, %struct.max8925_onkey_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAX8925_SYSENSEL, align 4
  %35 = load i32, i32* @HARDRESET_EN, align 4
  %36 = load i32, i32* @HARDRESET_EN, align 4
  %37 = call i32 @max8925_set_bits(i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %38
}

declare dso_local i32 @max8925_reg_read(i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @max8925_set_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
