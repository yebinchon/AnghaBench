; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_kp_read_matrix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pmic8xxx-keypad.c_pmic8xxx_kp_read_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic8xxx_kp = type { i32, i32, i32 }

@PM8XXX_MIN_ROWS = common dso_local global i32 0, align 4
@KEYP_OLD_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error reading KEYP_OLD_DATA, rc=%d\0A\00", align 1
@KEYP_RECENT_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Error reading KEYP_RECENT_DATA, rc=%d\0A\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@KEYP_CLOCK_FREQ = common dso_local global i32 0, align 4
@KEYP_SCAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Error reading KEYP_SCAN reg, rc=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Error writing KEYP_SCAN reg, rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic8xxx_kp*, i32*, i32*)* @pmic8xxx_kp_read_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic8xxx_kp_read_matrix(%struct.pmic8xxx_kp* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmic8xxx_kp*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pmic8xxx_kp* %0, %struct.pmic8xxx_kp** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %5, align 8
  %12 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PM8XXX_MIN_ROWS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @PM8XXX_MIN_ROWS, align 4
  store i32 %17, i32* %9, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %5, align 8
  %20 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %18, %16
  %23 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %5, align 8
  %24 = call i32 @pmic8xxx_chk_sync_read(%struct.pmic8xxx_kp* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %5, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @KEYP_OLD_DATA, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @pmic8xxx_kp_read_data(%struct.pmic8xxx_kp* %28, i32* %29, i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %5, align 8
  %37 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %98

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %5, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @KEYP_RECENT_DATA, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @pmic8xxx_kp_read_data(%struct.pmic8xxx_kp* %44, i32* %45, i32 %46, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %5, align 8
  %53 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %98

58:                                               ; preds = %43
  %59 = load i32, i32* @USEC_PER_SEC, align 4
  %60 = load i32, i32* @KEYP_CLOCK_FREQ, align 4
  %61 = call i32 @DIV_ROUND_UP(i32 %59, i32 %60)
  %62 = mul nsw i32 4, %61
  %63 = add nsw i32 %62, 1
  %64 = call i32 @udelay(i32 %63)
  %65 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %5, align 8
  %66 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @KEYP_SCAN, align 4
  %69 = call i32 @regmap_read(i32 %67, i32 %68, i32* %10)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %58
  %73 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %5, align 8
  %74 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %98

79:                                               ; preds = %58
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, 254
  store i32 %81, i32* %10, align 4
  %82 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %5, align 8
  %83 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @KEYP_SCAN, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @regmap_write(i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load %struct.pmic8xxx_kp*, %struct.pmic8xxx_kp** %5, align 8
  %92 = getelementptr inbounds %struct.pmic8xxx_kp, %struct.pmic8xxx_kp* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %79
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %72, %51, %35
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @pmic8xxx_chk_sync_read(%struct.pmic8xxx_kp*) #1

declare dso_local i32 @pmic8xxx_kp_read_data(%struct.pmic8xxx_kp*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
