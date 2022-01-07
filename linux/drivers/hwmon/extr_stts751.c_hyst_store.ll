; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_hyst_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_stts751.c_hyst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.stts751_priv = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"setting hyst %ld\00", align 1
@STTS751_REG_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @hyst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hyst_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %58

21:                                               ; preds = %4
  %22 = load %struct.stts751_priv*, %struct.stts751_priv** %12, align 8
  %23 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i64, i64* %11, align 8
  %26 = load %struct.stts751_priv*, %struct.stts751_priv** %12, align 8
  %27 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @clamp_val(i64 %25, i32 -64000, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load %struct.stts751_priv*, %struct.stts751_priv** %12, align 8
  %32 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.stts751_priv*, %struct.stts751_priv** %12, align 8
  %34 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load %struct.stts751_priv*, %struct.stts751_priv** %12, align 8
  %40 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = sub nsw i64 %41, %42
  store i64 %43, i64* %11, align 8
  %44 = load %struct.stts751_priv*, %struct.stts751_priv** %12, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* @STTS751_REG_HYST, align 4
  %47 = call i32 @stts751_set_temp_reg8(%struct.stts751_priv* %44, i64 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.stts751_priv*, %struct.stts751_priv** %12, align 8
  %49 = getelementptr inbounds %struct.stts751_priv, %struct.stts751_priv* %48, i32 0, i32 2
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %21
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %21
  %56 = load i64, i64* %9, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %53, %18
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.stts751_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @clamp_val(i64, i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @stts751_set_temp_reg8(%struct.stts751_priv*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
