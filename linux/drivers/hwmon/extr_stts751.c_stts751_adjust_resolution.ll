; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_adjust_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_stts751_adjust_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stts751_priv = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STTS751_CONF_RES_MASK = common dso_local global i32 0, align 4
@STTS751_CONF_RES_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"setting res %d. config %x\00", align 1
@STTS751_REG_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stts751_priv*)* @stts751_adjust_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stts751_adjust_resolution(%struct.stts751_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stts751_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.stts751_priv* %0, %struct.stts751_priv** %3, align 8
  %5 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %6 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %10 [
    i32 9, label %8
    i32 8, label %9
  ]

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

9:                                                ; preds = %1
  store i32 1, i32* %4, align 4
  br label %11

10:                                               ; preds = %1
  store i32 3, i32* %4, align 4
  br label %11

11:                                               ; preds = %10, %9, %8
  %12 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %13 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %52

18:                                               ; preds = %11
  %19 = load i32, i32* @STTS751_CONF_RES_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %22 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @STTS751_CONF_RES_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %29 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %33 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %38 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %43 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %45 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* @STTS751_REG_CONF, align 4
  %48 = load %struct.stts751_priv*, %struct.stts751_priv** %3, align 8
  %49 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__* %46, i32 %47, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %18, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
