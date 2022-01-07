; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ili210x.c_ili210x_report_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ili210x.c_ili210x_report_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ili210x = type { i32, i64, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@MODEL_ILI210X = common dso_local global i64 0, align 8
@MODEL_ILI251X = common dso_local global i64 0, align 8
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ili210x*, i32*)* @ili210x_report_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili210x_report_events(%struct.ili210x* %0, i32* %1) #0 {
  %3 = alloca %struct.ili210x*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ili210x* %0, %struct.ili210x** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.ili210x*, %struct.ili210x** %3, align 8
  %12 = getelementptr inbounds %struct.ili210x, %struct.ili210x* %11, i32 0, i32 3
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %65, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ili210x*, %struct.ili210x** %3, align 8
  %17 = getelementptr inbounds %struct.ili210x, %struct.ili210x* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %14
  %21 = load %struct.ili210x*, %struct.ili210x** %3, align 8
  %22 = getelementptr inbounds %struct.ili210x, %struct.ili210x* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MODEL_ILI210X, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.ili210x*, %struct.ili210x** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ili210x_touchdata_to_coords(%struct.ili210x* %27, i32* %28, i32 %29, i32* %9, i32* %10)
  store i32 %30, i32* %8, align 4
  br label %47

31:                                               ; preds = %20
  %32 = load %struct.ili210x*, %struct.ili210x** %3, align 8
  %33 = getelementptr inbounds %struct.ili210x, %struct.ili210x* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MODEL_ILI251X, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.ili210x*, %struct.ili210x** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ili251x_touchdata_to_coords(%struct.ili210x* %38, i32* %39, i32 %40, i32* %9, i32* %10)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45, %31
  br label %47

47:                                               ; preds = %46, %26
  %48 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @input_mt_slot(%struct.input_dev* %48, i32 %49)
  %51 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %52 = load i32, i32* @MT_TOOL_FINGER, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @input_mt_report_slot_state(%struct.input_dev* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  br label %65

58:                                               ; preds = %47
  %59 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %60 = load %struct.ili210x*, %struct.ili210x** %3, align 8
  %61 = getelementptr inbounds %struct.ili210x, %struct.ili210x* %60, i32 0, i32 2
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @touchscreen_report_pos(%struct.input_dev* %59, i32* %61, i32 %62, i32 %63, i32 1)
  br label %65

65:                                               ; preds = %58, %57
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %14

68:                                               ; preds = %14
  %69 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %70 = call i32 @input_mt_report_pointer_emulation(%struct.input_dev* %69, i32 0)
  %71 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %72 = call i32 @input_sync(%struct.input_dev* %71)
  %73 = load %struct.ili210x*, %struct.ili210x** %3, align 8
  %74 = getelementptr inbounds %struct.ili210x, %struct.ili210x* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MODEL_ILI210X, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 243
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %78, %68
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @ili210x_touchdata_to_coords(%struct.ili210x*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ili251x_touchdata_to_coords(%struct.ili210x*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @input_mt_slot(%struct.input_dev*, i32) #1

declare dso_local i32 @input_mt_report_slot_state(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @touchscreen_report_pos(%struct.input_dev*, i32*, i32, i32, i32) #1

declare dso_local i32 @input_mt_report_pointer_emulation(%struct.input_dev*, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
