; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_amijoy.c_amijoy_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_amijoy.c_amijoy_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@amijoy = common dso_local global i64* null, align 8
@amiga_custom = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ciaa = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@amijoy_dev = common dso_local global i32* null, align 8
@BTN_TRIGGER = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @amijoy_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amijoy_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %83, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %86

11:                                               ; preds = %8
  %12 = load i64*, i64** @amijoy, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %34 [
    i32 0, label %20
    i32 1, label %27
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amiga_custom, i32 0, i32 0), align 4
  %22 = xor i32 %21, -1
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ciaa, i32 0, i32 0), align 4
  %24 = xor i32 %23, -1
  %25 = ashr i32 %24, 6
  %26 = and i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %34

27:                                               ; preds = %18
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @amiga_custom, i32 0, i32 1), align 4
  %29 = xor i32 %28, -1
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ciaa, i32 0, i32 0), align 4
  %31 = xor i32 %30, -1
  %32 = ashr i32 %31, 7
  %33 = and i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %18, %27, %20
  %35 = load i32*, i32** @amijoy_dev, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BTN_TRIGGER, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @input_report_key(i32 %39, i32 %40, i32 %41)
  %43 = load i32*, i32** @amijoy_dev, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ABS_X, align 4
  %49 = load i32, i32* %6, align 4
  %50 = ashr i32 %49, 1
  %51 = and i32 %50, 1
  %52 = load i32, i32* %6, align 4
  %53 = ashr i32 %52, 9
  %54 = and i32 %53, 1
  %55 = sub nsw i32 %51, %54
  %56 = call i32 @input_report_abs(i32 %47, i32 %48, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %58, 1
  %60 = xor i32 %57, %59
  %61 = xor i32 %60, -1
  store i32 %61, i32* %6, align 4
  %62 = load i32*, i32** @amijoy_dev, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ABS_Y, align 4
  %68 = load i32, i32* %6, align 4
  %69 = ashr i32 %68, 1
  %70 = and i32 %69, 1
  %71 = load i32, i32* %6, align 4
  %72 = ashr i32 %71, 9
  %73 = and i32 %72, 1
  %74 = sub nsw i32 %70, %73
  %75 = call i32 @input_report_abs(i32 %66, i32 %67, i32 %74)
  %76 = load i32*, i32** @amijoy_dev, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @input_sync(i32 %80)
  br label %82

82:                                               ; preds = %34, %11
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %8

86:                                               ; preds = %8
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %87
}

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
