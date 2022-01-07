; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_hw_init_v1_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_hw_init_v1_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, %struct.alps_data* }
%struct.alps_data = type { i32 }

@ALPS_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to enable hardware tapping\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to enable absolute mode\0A\00", align 1
@PSMOUSE_CMD_SETSTREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to enable stream mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_hw_init_v1_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_hw_init_v1_v2(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.alps_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %6 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 1
  %7 = load %struct.alps_data*, %struct.alps_data** %6, align 8
  store %struct.alps_data* %7, %struct.alps_data** %4, align 8
  %8 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %9 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ALPS_PASS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %16 = call i64 @alps_passthrough_mode_v2(%struct.psmouse* %15, i32 1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %55

19:                                               ; preds = %14, %1
  %20 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %21 = call i64 @alps_tap_mode(%struct.psmouse* %20, i32 1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %25 = call i32 @psmouse_warn(%struct.psmouse* %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %55

26:                                               ; preds = %19
  %27 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %28 = call i64 @alps_absolute_mode_v1_v2(%struct.psmouse* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %32 = call i32 @psmouse_err(%struct.psmouse* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %55

33:                                               ; preds = %26
  %34 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %35 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ALPS_PASS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %42 = call i64 @alps_passthrough_mode_v2(%struct.psmouse* %41, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 -1, i32* %2, align 4
  br label %55

45:                                               ; preds = %40, %33
  %46 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %47 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %46, i32 0, i32 0
  %48 = load i32, i32* @PSMOUSE_CMD_SETSTREAM, align 4
  %49 = call i64 @ps2_command(i32* %47, i32* null, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %53 = call i32 @psmouse_err(%struct.psmouse* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %55

54:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %51, %44, %30, %23, %18
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @alps_passthrough_mode_v2(%struct.psmouse*, i32) #1

declare dso_local i64 @alps_tap_mode(%struct.psmouse*, i32) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*) #1

declare dso_local i64 @alps_absolute_mode_v1_v2(%struct.psmouse*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

declare dso_local i64 @ps2_command(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
