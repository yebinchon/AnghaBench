; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_hw_init_v7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_hw_init_v7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_hw_init_v7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_hw_init_v7(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.ps2dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 0
  store %struct.ps2dev* %8, %struct.ps2dev** %4, align 8
  store i32 -1, i32* %6, align 4
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = call i64 @alps_enter_command_mode(%struct.psmouse* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %14 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %13, i32 49881)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %1
  br label %46

17:                                               ; preds = %12
  %18 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %19 = call i64 @alps_get_v3_v7_resolution(%struct.psmouse* %18, i32 50071)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %46

22:                                               ; preds = %17
  %23 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %24 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %23, i32 49865, i32 100)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %46

27:                                               ; preds = %22
  %28 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %29 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %28, i32 49860)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %46

33:                                               ; preds = %27
  %34 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, 2
  %37 = call i64 @__alps_command_mode_write_reg(%struct.psmouse* %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %46

40:                                               ; preds = %33
  %41 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %42 = call i32 @alps_exit_command_mode(%struct.psmouse* %41)
  %43 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %44 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %45 = call i32 @ps2_command(%struct.ps2dev* %43, i32* null, i32 %44)
  store i32 %45, i32* %2, align 4
  br label %50

46:                                               ; preds = %39, %32, %26, %21, %16
  %47 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %48 = call i32 @alps_exit_command_mode(%struct.psmouse* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @alps_enter_command_mode(%struct.psmouse*) #1

declare dso_local i32 @alps_command_mode_read_reg(%struct.psmouse*, i32) #1

declare dso_local i64 @alps_get_v3_v7_resolution(%struct.psmouse*, i32) #1

declare dso_local i64 @alps_command_mode_write_reg(%struct.psmouse*, i32, i32) #1

declare dso_local i64 @__alps_command_mode_write_reg(%struct.psmouse*, i32) #1

declare dso_local i32 @alps_exit_command_mode(%struct.psmouse*) #1

declare dso_local i32 @ps2_command(%struct.ps2dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
