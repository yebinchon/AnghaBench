; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_update_dual_info_ss4_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_update_dual_info_ss4_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_data = type { i32, i32 }
%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@ALPS_DUALPOINT_WITH_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ([4 x i8]*, %struct.alps_data*, %struct.psmouse*)* @alps_update_dual_info_ss4_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_update_dual_info_ss4_v2([4 x i8]* %0, %struct.alps_data* %1, %struct.psmouse* %2) #0 {
  %4 = alloca [4 x i8]*, align 8
  %5 = alloca %struct.alps_data*, align 8
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ps2dev*, align 8
  store [4 x i8]* %0, [4 x i8]** %4, align 8
  store %struct.alps_data* %1, %struct.alps_data** %5, align 8
  store %struct.psmouse* %2, %struct.psmouse** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 0
  store %struct.ps2dev* %11, %struct.ps2dev** %9, align 8
  %12 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %13 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @IS_SS4PLUS_DEV(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %3
  %18 = load [4 x i8]*, [4 x i8]** %4, align 8
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i64 0
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %19, i64 0, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = ashr i32 %22, 4
  %24 = and i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %17
  %28 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %29 = call i64 @alps_exit_command_mode(%struct.psmouse* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %33 = call i64 @alps_enter_command_mode(%struct.psmouse* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %37 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %36, i32 215)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %31, %27
  %39 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %40 = call i64 @alps_exit_command_mode(%struct.psmouse* %39)
  %41 = load %struct.ps2dev*, %struct.ps2dev** %9, align 8
  %42 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %43 = call i32 @ps2_command(%struct.ps2dev* %41, i32* null, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 29
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %38
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %46
  br label %51

51:                                               ; preds = %50, %17
  br label %52

52:                                               ; preds = %51, %3
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i32, i32* @ALPS_DUALPOINT, align 4
  %57 = load i32, i32* @ALPS_DUALPOINT_WITH_PRESSURE, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.alps_data*, %struct.alps_data** %5, align 8
  %60 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %55, %52
  ret i32 0
}

declare dso_local i64 @IS_SS4PLUS_DEV(i32) #1

declare dso_local i64 @alps_exit_command_mode(%struct.psmouse*) #1

declare dso_local i64 @alps_enter_command_mode(%struct.psmouse*) #1

declare dso_local i32 @alps_command_mode_read_reg(%struct.psmouse*, i32) #1

declare dso_local i32 @ps2_command(%struct.ps2dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
