; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_auo-pixcir-ts.c_auo_pixcir_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_auo-pixcir-ts.c_auo_pixcir_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auo_pixcir_ts = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"could not disable interrupt, %d\0A\00", align 1
@AUO_PIXCIR_POWER_DEEP_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auo_pixcir_ts*)* @auo_pixcir_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auo_pixcir_stop(%struct.auo_pixcir_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.auo_pixcir_ts*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.auo_pixcir_ts* %0, %struct.auo_pixcir_ts** %3, align 8
  %6 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %3, align 8
  %7 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %6, i32 0, i32 2
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %3, align 8
  %10 = call i32 @auo_pixcir_int_toggle(%struct.auo_pixcir_ts* %9, i32 0)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @disable_irq(i32 %22)
  %24 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %3, align 8
  %25 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = call i32 (...) @mb()
  %27 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %3, align 8
  %28 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %27, i32 0, i32 1
  %29 = call i32 @wake_up(i32* %28)
  %30 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %3, align 8
  %31 = load i32, i32* @AUO_PIXCIR_POWER_DEEP_SLEEP, align 4
  %32 = call i32 @auo_pixcir_power_mode(%struct.auo_pixcir_ts* %30, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %19, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @auo_pixcir_int_toggle(%struct.auo_pixcir_ts*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @auo_pixcir_power_mode(%struct.auo_pixcir_ts*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
