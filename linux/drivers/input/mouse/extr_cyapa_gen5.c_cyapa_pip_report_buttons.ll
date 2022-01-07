; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_report_buttons.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_pip_report_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.cyapa_pip_report_data = type { i32* }

@PIP_BUTTONS_OFFSET = common dso_local global i64 0, align 8
@CAPABILITY_BTN_SHIFT = common dso_local global i32 0, align 4
@CAPABILITY_BTN_MASK = common dso_local global i32 0, align 4
@CAPABILITY_LEFT_BTN_MASK = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@CAPABILITY_MIDDLE_BTN_MASK = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@CAPABILITY_RIGHT_BTN_MASK = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cyapa*, %struct.cyapa_pip_report_data*)* @cyapa_pip_report_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyapa_pip_report_buttons(%struct.cyapa* %0, %struct.cyapa_pip_report_data* %1) #0 {
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca %struct.cyapa_pip_report_data*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  store %struct.cyapa_pip_report_data* %1, %struct.cyapa_pip_report_data** %4, align 8
  %7 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %8 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %7, i32 0, i32 1
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %5, align 8
  %10 = load %struct.cyapa_pip_report_data*, %struct.cyapa_pip_report_data** %4, align 8
  %11 = getelementptr inbounds %struct.cyapa_pip_report_data, %struct.cyapa_pip_report_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @PIP_BUTTONS_OFFSET, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @CAPABILITY_BTN_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @CAPABILITY_BTN_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %22 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CAPABILITY_LEFT_BTN_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %29 = load i32, i32* @BTN_LEFT, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @CAPABILITY_LEFT_BTN_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @input_report_key(%struct.input_dev* %28, i32 %29, i32 %36)
  br label %38

38:                                               ; preds = %27, %2
  %39 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %40 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CAPABILITY_MIDDLE_BTN_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %47 = load i32, i32* @BTN_MIDDLE, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @CAPABILITY_MIDDLE_BTN_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @input_report_key(%struct.input_dev* %46, i32 %47, i32 %54)
  br label %56

56:                                               ; preds = %45, %38
  %57 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %58 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CAPABILITY_RIGHT_BTN_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %65 = load i32, i32* @BTN_RIGHT, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @CAPABILITY_RIGHT_BTN_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @input_report_key(%struct.input_dev* %64, i32 %65, i32 %72)
  br label %74

74:                                               ; preds = %63, %56
  %75 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %76 = call i32 @input_sync(%struct.input_dev* %75)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
