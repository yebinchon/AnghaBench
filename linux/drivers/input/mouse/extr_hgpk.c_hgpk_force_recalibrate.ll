; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_force_recalibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_force_recalibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i64, %struct.hgpk_data* }
%struct.hgpk_data = type { i64 }

@HGPK_MODEL_C = common dso_local global i64 0, align 8
@autorecal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"recalibration disabled, ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"recalibrating touchpad..\0A\00", align 1
@PSMOUSE_INITIALIZING = common dso_local global i32 0, align 4
@tpdebug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"touchpad reactivated\0A\00", align 1
@recal_guard_time = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @hgpk_force_recalibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgpk_force_recalibrate(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.hgpk_data*, align 8
  %5 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 1
  %8 = load %struct.hgpk_data*, %struct.hgpk_data** %7, align 8
  store %struct.hgpk_data* %8, %struct.hgpk_data** %4, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HGPK_MODEL_C, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

15:                                               ; preds = %1
  %16 = load i32, i32* @autorecal, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %20 = call i32 @psmouse_dbg(%struct.psmouse* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %55

21:                                               ; preds = %15
  %22 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %23 = call i32 @psmouse_dbg(%struct.psmouse* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %25 = load i32, i32* @PSMOUSE_INITIALIZING, align 4
  %26 = call i32 @psmouse_set_state(%struct.psmouse* %24, i32 %25)
  %27 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %28 = call i32 @hgpk_reset_device(%struct.psmouse* %27, i32 1)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %55

33:                                               ; preds = %21
  %34 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %35 = call i64 @psmouse_activate(%struct.psmouse* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  br label %55

38:                                               ; preds = %33
  %39 = load i64, i64* @tpdebug, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %43 = call i32 @psmouse_dbg(%struct.psmouse* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i64, i64* @recal_guard_time, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i64, i64* @recal_guard_time, align 8
  %50 = call i64 @msecs_to_jiffies(i64 %49)
  %51 = add nsw i64 %48, %50
  %52 = load %struct.hgpk_data*, %struct.hgpk_data** %4, align 8
  %53 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %47, %44
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %37, %31, %18, %14
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*) #1

declare dso_local i32 @psmouse_set_state(%struct.psmouse*, i32) #1

declare dso_local i32 @hgpk_reset_device(%struct.psmouse*, i32) #1

declare dso_local i64 @psmouse_activate(%struct.psmouse*) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
