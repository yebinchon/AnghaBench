; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_hw_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_hw_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32, i16, i32, i32 (%struct.ad714x_chip*, i32, i16*, i32)* }

@AD714X_PARTID_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"found AD7142 captouch, rev:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"found AD7143 captouch, rev:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"found AD7147(A) captouch, rev:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"found AD7148 captouch, rev:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"fail to detect AD714X captouch, read ID is %04x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad714x_chip*)* @ad714x_hw_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad714x_hw_detect(%struct.ad714x_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad714x_chip*, align 8
  %4 = alloca i16, align 2
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %3, align 8
  %5 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %6 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %5, i32 0, i32 3
  %7 = load i32 (%struct.ad714x_chip*, i32, i16*, i32)*, i32 (%struct.ad714x_chip*, i32, i16*, i32)** %6, align 8
  %8 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %9 = load i32, i32* @AD714X_PARTID_REG, align 4
  %10 = call i32 %7(%struct.ad714x_chip* %8, i32 %9, i16* %4, i32 1)
  %11 = load i16, i16* %4, align 2
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 65520
  switch i32 %13, label %78 [
    i32 131, label %14
    i32 130, label %30
    i32 129, label %46
    i32 128, label %62
  ]

14:                                               ; preds = %1
  %15 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %16 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %15, i32 0, i32 0
  store i32 28994, i32* %16, align 8
  %17 = load i16, i16* %4, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 15
  %20 = trunc i32 %19 to i16
  %21 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %22 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %21, i32 0, i32 1
  store i16 %20, i16* %22, align 4
  %23 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %24 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %27 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 4
  %29 = call i32 @dev_info(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i16 zeroext %28)
  store i32 0, i32* %2, align 4
  br label %86

30:                                               ; preds = %1
  %31 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %32 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %31, i32 0, i32 0
  store i32 28995, i32* %32, align 8
  %33 = load i16, i16* %4, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 15
  %36 = trunc i32 %35 to i16
  %37 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %38 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %37, i32 0, i32 1
  store i16 %36, i16* %38, align 4
  %39 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %40 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %43 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %42, i32 0, i32 1
  %44 = load i16, i16* %43, align 4
  %45 = call i32 @dev_info(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %44)
  store i32 0, i32* %2, align 4
  br label %86

46:                                               ; preds = %1
  %47 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %48 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %47, i32 0, i32 0
  store i32 28999, i32* %48, align 8
  %49 = load i16, i16* %4, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %50, 15
  %52 = trunc i32 %51 to i16
  %53 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %54 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %53, i32 0, i32 1
  store i16 %52, i16* %54, align 4
  %55 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %56 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %59 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %58, i32 0, i32 1
  %60 = load i16, i16* %59, align 4
  %61 = call i32 @dev_info(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %60)
  store i32 0, i32* %2, align 4
  br label %86

62:                                               ; preds = %1
  %63 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %64 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %63, i32 0, i32 0
  store i32 29000, i32* %64, align 8
  %65 = load i16, i16* %4, align 2
  %66 = zext i16 %65 to i32
  %67 = and i32 %66, 15
  %68 = trunc i32 %67 to i16
  %69 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %70 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %69, i32 0, i32 1
  store i16 %68, i16* %70, align 4
  %71 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %72 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %75 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %74, i32 0, i32 1
  %76 = load i16, i16* %75, align 4
  %77 = call i32 @dev_info(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %76)
  store i32 0, i32* %2, align 4
  br label %86

78:                                               ; preds = %1
  %79 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %80 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i16, i16* %4, align 2
  %83 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i16 zeroext %82)
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %78, %62, %46, %30, %14
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @dev_info(i32, i8*, i16 zeroext) #1

declare dso_local i32 @dev_err(i32, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
