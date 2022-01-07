; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5588-keys.c_adp5588_report_switch_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5588-keys.c_adp5588_report_switch_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp5588_kpad = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i16, i32 }
%struct.TYPE_4__ = type { i32 }

@GPIO_DAT_STAT1 = common dso_local global i32 0, align 4
@GPIO_DAT_STAT2 = common dso_local global i32 0, align 4
@GPIO_DAT_STAT3 = common dso_local global i32 0, align 4
@GPI_PIN_ROW_END = common dso_local global i16 0, align 2
@GPI_PIN_ROW_BASE = common dso_local global i16 0, align 2
@GPI_PIN_COL_BASE = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [51 x i8] c"Can't read GPIO_DAT_STAT switch %d default to OFF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adp5588_kpad*)* @adp5588_report_switch_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adp5588_report_switch_state(%struct.adp5588_kpad* %0) #0 {
  %2 = alloca %struct.adp5588_kpad*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.adp5588_kpad* %0, %struct.adp5588_kpad** %2, align 8
  %10 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %2, align 8
  %11 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i32, i32* @GPIO_DAT_STAT1, align 4
  %14 = call i32 @adp5588_read(%struct.TYPE_4__* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %2, align 8
  %16 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* @GPIO_DAT_STAT2, align 4
  %19 = call i32 @adp5588_read(%struct.TYPE_4__* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %2, align 8
  %21 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* @GPIO_DAT_STAT3, align 4
  %24 = call i32 @adp5588_read(%struct.TYPE_4__* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %105, %1
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %2, align 8
  %28 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %108

31:                                               ; preds = %25
  %32 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %2, align 8
  %33 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i16, i16* %38, align 4
  store i16 %39, i16* %9, align 2
  %40 = load i16, i16* %9, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* @GPI_PIN_ROW_END, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp sle i32 %41, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %31
  %46 = load i32, i32* %3, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i16, i16* %9, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* @GPI_PIN_ROW_BASE, align 2
  %50 = zext i16 %49 to i32
  %51 = sub nsw i32 %48, %50
  store i32 %51, i32* %7, align 4
  br label %75

52:                                               ; preds = %31
  %53 = load i16, i16* %9, align 2
  %54 = zext i16 %53 to i32
  %55 = load i16, i16* @GPI_PIN_COL_BASE, align 2
  %56 = zext i16 %55 to i32
  %57 = sub nsw i32 %54, %56
  %58 = icmp slt i32 %57, 8
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %6, align 4
  %61 = load i16, i16* %9, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* @GPI_PIN_COL_BASE, align 2
  %64 = zext i16 %63 to i32
  %65 = sub nsw i32 %62, %64
  store i32 %65, i32* %7, align 4
  br label %74

66:                                               ; preds = %52
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %6, align 4
  %68 = load i16, i16* %9, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* @GPI_PIN_COL_BASE, align 2
  %71 = zext i16 %70 to i32
  %72 = sub nsw i32 %69, %71
  %73 = sub nsw i32 %72, 8
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %66, %59
  br label %75

75:                                               ; preds = %74, %45
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %2, align 8
  %80 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i16, i16* %9, align 2
  %84 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i16 zeroext %83)
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %78, %75
  %86 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %2, align 8
  %87 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %2, align 8
  %90 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = shl i32 1, %98
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i32 @input_report_switch(i32 %88, i32 %96, i32 %103)
  br label %105

105:                                              ; preds = %85
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %25

108:                                              ; preds = %25
  %109 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %2, align 8
  %110 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @input_sync(i32 %111)
  ret void
}

declare dso_local i32 @adp5588_read(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i16 zeroext) #1

declare dso_local i32 @input_report_switch(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
