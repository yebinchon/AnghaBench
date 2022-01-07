; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_hw_init_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_hw_init_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to enable absolute mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_hw_init_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_hw_init_v6(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %6 = call i64 @alps_passthrough_mode_v2(%struct.psmouse* %5, i32 1)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %11 = call i32 @alps_trackstick_enter_extended_mode_v3_v6(%struct.psmouse* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %13 = call i64 @alps_passthrough_mode_v2(%struct.psmouse* %12, i32 0)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %29

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %16
  %22 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %23 = call i64 @alps_absolute_mode_v6(%struct.psmouse* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %27 = call i32 @psmouse_err(%struct.psmouse* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %29

28:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25, %19, %15, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @alps_passthrough_mode_v2(%struct.psmouse*, i32) #1

declare dso_local i32 @alps_trackstick_enter_extended_mode_v3_v6(%struct.psmouse*) #1

declare dso_local i64 @alps_absolute_mode_v6(%struct.psmouse*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
