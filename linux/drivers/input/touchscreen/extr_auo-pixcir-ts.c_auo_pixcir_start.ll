; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_auo-pixcir-ts.c_auo_pixcir_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_auo-pixcir-ts.c_auo_pixcir_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auo_pixcir_ts = type { i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }

@AUO_PIXCIR_POWER_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not set power mode, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"could not enable interrupt, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auo_pixcir_ts*)* @auo_pixcir_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auo_pixcir_start(%struct.auo_pixcir_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.auo_pixcir_ts*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.auo_pixcir_ts* %0, %struct.auo_pixcir_ts** %3, align 8
  %6 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %3, align 8
  %7 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %6, i32 0, i32 1
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %3, align 8
  %10 = load i32, i32* @AUO_PIXCIR_POWER_ACTIVE, align 4
  %11 = call i32 @auo_pixcir_power_mode(%struct.auo_pixcir_ts* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %43

20:                                               ; preds = %1
  %21 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %3, align 8
  %22 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = call i32 (...) @mb()
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @enable_irq(i32 %26)
  %28 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %3, align 8
  %29 = call i32 @auo_pixcir_int_toggle(%struct.auo_pixcir_ts* %28, i32 1)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %20
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @disable_irq(i32 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %32, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @auo_pixcir_power_mode(%struct.auo_pixcir_ts*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @auo_pixcir_int_toggle(%struct.auo_pixcir_ts*, i32) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
