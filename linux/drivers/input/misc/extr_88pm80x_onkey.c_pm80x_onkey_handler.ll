; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_88pm80x_onkey.c_pm80x_onkey_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_88pm80x_onkey.c_pm80x_onkey_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm80x_onkey_info = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PM800_STATUS_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to read status: %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@PM800_ONKEY_STS1 = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pm80x_onkey_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80x_onkey_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pm80x_onkey_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.pm80x_onkey_info*
  store %struct.pm80x_onkey_info* %10, %struct.pm80x_onkey_info** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %6, align 8
  %12 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PM800_STATUS_1, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %8)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %6, align 8
  %20 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %2
  %29 = load i32, i32* @PM800_ONKEY_STS1, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %6, align 8
  %33 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* @KEY_POWER, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @input_report_key(%struct.TYPE_5__* %34, i32 %35, i32 %36)
  %38 = load %struct.pm80x_onkey_info*, %struct.pm80x_onkey_info** %6, align 8
  %39 = getelementptr inbounds %struct.pm80x_onkey_info, %struct.pm80x_onkey_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @input_sync(%struct.TYPE_5__* %40)
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %28, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @input_report_key(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
