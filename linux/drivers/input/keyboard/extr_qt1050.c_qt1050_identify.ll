; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt1050.c_qt1050_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt1050.c_qt1050_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qt1050_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@QT1050_CHIP_ID = common dso_local global i32 0, align 4
@QT1050_CHIP_ID_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ID %d not supported\0A\00", align 1
@QT1050_FW_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not read the firmware version\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"AT42QT1050 firmware version %1d.%1d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qt1050_priv*)* @qt1050_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt1050_identify(%struct.qt1050_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qt1050_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qt1050_priv* %0, %struct.qt1050_priv** %3, align 8
  %6 = load %struct.qt1050_priv*, %struct.qt1050_priv** %3, align 8
  %7 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @QT1050_CHIP_ID, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %4)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @QT1050_CHIP_ID_VER, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.qt1050_priv*, %struct.qt1050_priv** %3, align 8
  %16 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %2, align 4
  br label %45

21:                                               ; preds = %1
  %22 = load %struct.qt1050_priv*, %struct.qt1050_priv** %3, align 8
  %23 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @QT1050_FW_VERSION, align 4
  %26 = call i32 @regmap_read(i32 %24, i32 %25, i32* %4)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.qt1050_priv*, %struct.qt1050_priv** %3, align 8
  %31 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %45

35:                                               ; preds = %21
  %36 = load %struct.qt1050_priv*, %struct.qt1050_priv** %3, align 8
  %37 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %4, align 4
  %41 = lshr i32 %40, 4
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 15
  %44 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %43)
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %35, %29, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
