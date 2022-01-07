; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-owl.c_owl_i2c_check_bus_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-owl.c_owl_i2c_check_bus_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.owl_i2c_dev = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@OWL_I2C_TIMEOUT = common dso_local global i64 0, align 8
@OWL_I2C_REG_STAT = common dso_local global i64 0, align 8
@OWL_I2C_STAT_BBB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Bus busy timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @owl_i2c_check_bus_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_i2c_check_bus_busy(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca %struct.owl_i2c_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %7 = call %struct.owl_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %6)
  store %struct.owl_i2c_dev* %7, %struct.owl_i2c_dev** %4, align 8
  %8 = load i64, i64* @jiffies, align 8
  %9 = load i64, i64* @OWL_I2C_TIMEOUT, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %32, %1
  %12 = load %struct.owl_i2c_dev*, %struct.owl_i2c_dev** %4, align 8
  %13 = getelementptr inbounds %struct.owl_i2c_dev, %struct.owl_i2c_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OWL_I2C_REG_STAT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  %18 = load i32, i32* @OWL_I2C_STAT_BBB, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %11
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @time_after(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ETIMEDOUT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %34

32:                                               ; preds = %21
  br label %11

33:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.owl_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
