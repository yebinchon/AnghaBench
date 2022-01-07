; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_spewing_hack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_spewing_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.hgpk_data* }
%struct.hgpk_data = type { i32, i32, i32, i32, i32 }

@spew_delay = common dso_local global i32 0, align 4
@SPEW_WATCH_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"packet spew detected (%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, i32, i32, i32, i32)* @hgpk_spewing_hack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hgpk_spewing_hack(%struct.psmouse* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hgpk_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 0
  %14 = load %struct.hgpk_data*, %struct.hgpk_data** %13, align 8
  store %struct.hgpk_data* %14, %struct.hgpk_data** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %5
  br label %98

21:                                               ; preds = %17
  %22 = load i32, i32* @spew_delay, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %98

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @abs(i32 %26) #3
  %28 = icmp sgt i32 %27, 3
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @abs(i32 %30) #3
  %32 = icmp sgt i32 %31, 3
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %25
  %34 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %35 = call i32 @hgpk_reset_spew_detection(%struct.hgpk_data* %34)
  br label %98

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %39 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %44 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %48 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %98 [
    i32 130, label %50
    i32 131, label %53
    i32 128, label %67
    i32 129, label %97
  ]

50:                                               ; preds = %36
  %51 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %52 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %51, i32 0, i32 2
  store i32 131, i32* %52, align 4
  br label %53

53:                                               ; preds = %36, %50
  %54 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %55 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %59 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SPEW_WATCH_COUNT, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %98

64:                                               ; preds = %53
  %65 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %66 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %65, i32 0, i32 2
  store i32 128, i32* %66, align 4
  br label %67

67:                                               ; preds = %36, %64
  %68 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %69 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @abs(i32 %70) #3
  %72 = icmp slt i32 %71, 3
  br i1 %72, label %73, label %96

73:                                               ; preds = %67
  %74 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %75 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @abs(i32 %76) #3
  %78 = icmp slt i32 %77, 3
  br i1 %78, label %79, label %96

79:                                               ; preds = %73
  %80 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %81 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %82 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %85 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @psmouse_warn(%struct.psmouse* %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %86)
  %88 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %89 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %88, i32 0, i32 2
  store i32 129, i32* %89, align 4
  %90 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %91 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %92 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %91, i32 0, i32 3
  %93 = load i32, i32* @spew_delay, align 4
  %94 = call i32 @msecs_to_jiffies(i32 %93)
  %95 = call i32 @psmouse_queue_work(%struct.psmouse* %90, i32* %92, i32 %94)
  br label %96

96:                                               ; preds = %79, %73, %67
  br label %98

97:                                               ; preds = %36
  br label %98

98:                                               ; preds = %20, %24, %33, %36, %97, %96, %63
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @hgpk_reset_spew_detection(%struct.hgpk_data*) #2

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*, i32, i32) #2

declare dso_local i32 @psmouse_queue_work(%struct.psmouse*, i32*, i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
