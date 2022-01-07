; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_s6sy761.c_s6sy761_report_coordinates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_s6sy761.c_s6sy761_report_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6sy761_data = type { i32 }

@S6SY761_MASK_Z = common dso_local global i32 0, align 4
@S6SY761_MASK_X = common dso_local global i32 0, align 4
@S6SY761_MASK_Y = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s6sy761_data*, i32*, i32)* @s6sy761_report_coordinates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s6sy761_report_coordinates(%struct.s6sy761_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.s6sy761_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.s6sy761_data* %0, %struct.s6sy761_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 4
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 5
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 6
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @S6SY761_MASK_Z, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 3
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S6SY761_MASK_X, align 4
  %31 = and i32 %29, %30
  %32 = ashr i32 %31, 4
  %33 = or i32 %26, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 3
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @S6SY761_MASK_Y, align 4
  %42 = and i32 %40, %41
  %43 = or i32 %37, %42
  store i32 %43, i32* %11, align 4
  %44 = load %struct.s6sy761_data*, %struct.s6sy761_data** %4, align 8
  %45 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @input_mt_slot(i32 %46, i32 %47)
  %49 = load %struct.s6sy761_data*, %struct.s6sy761_data** %4, align 8
  %50 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MT_TOOL_FINGER, align 4
  %53 = call i32 @input_mt_report_slot_state(i32 %51, i32 %52, i32 1)
  %54 = load %struct.s6sy761_data*, %struct.s6sy761_data** %4, align 8
  %55 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @input_report_abs(i32 %56, i32 %57, i32 %58)
  %60 = load %struct.s6sy761_data*, %struct.s6sy761_data** %4, align 8
  %61 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @input_report_abs(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.s6sy761_data*, %struct.s6sy761_data** %4, align 8
  %67 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @input_report_abs(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.s6sy761_data*, %struct.s6sy761_data** %4, align 8
  %73 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @input_report_abs(i32 %74, i32 %75, i32 %76)
  %78 = load %struct.s6sy761_data*, %struct.s6sy761_data** %4, align 8
  %79 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @input_report_abs(i32 %80, i32 %81, i32 %82)
  %84 = load %struct.s6sy761_data*, %struct.s6sy761_data** %4, align 8
  %85 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @input_sync(i32 %86)
  ret void
}

declare dso_local i32 @input_mt_slot(i32, i32) #1

declare dso_local i32 @input_mt_report_slot_state(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
