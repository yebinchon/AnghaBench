; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_report_contact_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_report_contact_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_drvdata = type { %struct.TYPE_2__*, %struct.input_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.input_dev = type { i32 }

@CONTACT_X_MSB_MASK = common dso_local global i32 0, align 4
@CONTACT_Y_MSB_MASK = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@MT_TOOL_PALM = common dso_local global i32 0, align 4
@MAX_TOUCH_MAJOR = common dso_local global i32 0, align 4
@MAX_PRESSURE = common dso_local global i32 0, align 4
@CONTACT_TOUCH_MAJOR_MASK = common dso_local global i32 0, align 4
@CONTACT_PRESSURE_MASK = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asus_drvdata*, i32, i32*)* @asus_report_contact_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_report_contact_down(%struct.asus_drvdata* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.asus_drvdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.asus_drvdata* %0, %struct.asus_drvdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %13 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %12, i32 0, i32 1
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CONTACT_X_MSB_MASK, align 4
  %19 = and i32 %17, %18
  %20 = shl i32 %19, 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %20, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %26 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CONTACT_Y_MSB_MASK, align 4
  %34 = and i32 %32, %33
  %35 = shl i32 %34, 8
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = sub nsw i32 %29, %39
  store i32 %40, i32* %11, align 4
  %41 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %42 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @input_report_abs(%struct.input_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %46 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @input_report_abs(%struct.input_dev* %45, i32 %46, i32 %47)
  %49 = load %struct.asus_drvdata*, %struct.asus_drvdata** %4, align 8
  %50 = getelementptr inbounds %struct.asus_drvdata, %struct.asus_drvdata* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 5
  br i1 %54, label %55, label %56

55:                                               ; preds = %3
  br label %84

56:                                               ; preds = %3
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @MT_TOOL_PALM, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @MAX_TOUCH_MAJOR, align 4
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @MAX_PRESSURE, align 4
  store i32 %62, i32* %9, align 4
  br label %75

63:                                               ; preds = %56
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 4
  %68 = load i32, i32* @CONTACT_TOUCH_MAJOR_MASK, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %8, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CONTACT_PRESSURE_MASK, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %63, %60
  %76 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %77 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @input_report_abs(%struct.input_dev* %76, i32 %77, i32 %78)
  %80 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %81 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @input_report_abs(%struct.input_dev* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %75, %55
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
