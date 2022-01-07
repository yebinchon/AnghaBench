; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_max_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_max_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.stts751_priv = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@STTS751_REG_HLIM_H = common dso_local global i32 0, align 4
@STTS751_REG_HLIM_L = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"setting event max %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @max_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.stts751_priv*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.stts751_priv* @dev_get_drvdata(%struct.device* %13)
  store %struct.stts751_priv* %14, %struct.stts751_priv** %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @kstrtol(i8* %15, i32 10, i64* %11)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %55

21:                                               ; preds = %4
  %22 = load %struct.stts751_priv*, %struct.stts751_priv** %12, align 8
  %23 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i64, i64* %11, align 8
  %26 = load %struct.stts751_priv*, %struct.stts751_priv** %12, align 8
  %27 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @clamp_val(i64 %25, i32 %28, i32 127937)
  store i64 %29, i64* %11, align 8
  %30 = load %struct.stts751_priv*, %struct.stts751_priv** %12, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* @STTS751_REG_HLIM_H, align 4
  %33 = load i32, i32* @STTS751_REG_HLIM_L, align 4
  %34 = call i32 @stts751_set_temp_reg16(%struct.stts751_priv* %30, i64 %31, i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  br label %50

38:                                               ; preds = %21
  %39 = load %struct.stts751_priv*, %struct.stts751_priv** %12, align 8
  %40 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @dev_dbg(i32* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %11, align 8
  %46 = load %struct.stts751_priv*, %struct.stts751_priv** %12, align 8
  %47 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %9, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %38, %37
  %51 = load %struct.stts751_priv*, %struct.stts751_priv** %12, align 8
  %52 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %18
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.stts751_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @stts751_set_temp_reg16(%struct.stts751_priv*, i64, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
