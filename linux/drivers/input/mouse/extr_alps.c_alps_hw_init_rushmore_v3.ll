; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_hw_init_rushmore_v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_hw_init_rushmore_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev, %struct.alps_data* }
%struct.ps2dev = type { i32 }
%struct.alps_data = type { i32 }

@ALPS_DUALPOINT = common dso_local global i32 0, align 4
@ALPS_REG_BASE_RUSHMORE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_hw_init_rushmore_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_hw_init_rushmore_v3(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.alps_data*, align 8
  %5 = alloca %struct.ps2dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 1
  %10 = load %struct.alps_data*, %struct.alps_data** %9, align 8
  store %struct.alps_data* %10, %struct.alps_data** %4, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  store %struct.ps2dev* %12, %struct.ps2dev** %5, align 8
  store i32 -1, i32* %7, align 4
  %13 = load %struct.alps_data*, %struct.alps_data** %4, align 8
  %14 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ALPS_DUALPOINT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %21 = load i32, i32* @ALPS_REG_BASE_RUSHMORE, align 4
  %22 = call i32 @alps_setup_trackstick_v3(%struct.psmouse* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %84

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %1
  %30 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %31 = call i64 @alps_enter_command_mode(%struct.psmouse* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %35 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %34, i32 49881)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %39 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %38, i32 49867, i32 0)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33, %29
  br label %84

42:                                               ; preds = %37
  %43 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %44 = call i64 @alps_get_v3_v7_resolution(%struct.psmouse* %43, i32 49882)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %84

47:                                               ; preds = %42
  %48 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %49 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %48, i32 49862)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %84

53:                                               ; preds = %47
  %54 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 253
  %57 = call i64 @__alps_command_mode_write_reg(%struct.psmouse* %54, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %84

60:                                               ; preds = %53
  %61 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %62 = call i64 @alps_command_mode_write_reg(%struct.psmouse* %61, i32 49865, i32 100)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %84

65:                                               ; preds = %60
  %66 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %67 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %66, i32 49860)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %84

71:                                               ; preds = %65
  %72 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, 2
  %75 = call i64 @__alps_command_mode_write_reg(%struct.psmouse* %72, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %84

78:                                               ; preds = %71
  %79 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %80 = call i32 @alps_exit_command_mode(%struct.psmouse* %79)
  %81 = load %struct.ps2dev*, %struct.ps2dev** %5, align 8
  %82 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %83 = call i32 @ps2_command(%struct.ps2dev* %81, i32* null, i32 %82)
  store i32 %83, i32* %2, align 4
  br label %88

84:                                               ; preds = %77, %70, %64, %59, %52, %46, %41, %27
  %85 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %86 = call i32 @alps_exit_command_mode(%struct.psmouse* %85)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %84, %78
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @alps_setup_trackstick_v3(%struct.psmouse*, i32) #1

declare dso_local i64 @alps_enter_command_mode(%struct.psmouse*) #1

declare dso_local i32 @alps_command_mode_read_reg(%struct.psmouse*, i32) #1

declare dso_local i64 @alps_command_mode_write_reg(%struct.psmouse*, i32, i32) #1

declare dso_local i64 @alps_get_v3_v7_resolution(%struct.psmouse*, i32) #1

declare dso_local i64 @__alps_command_mode_write_reg(%struct.psmouse*, i32) #1

declare dso_local i32 @alps_exit_command_mode(%struct.psmouse*) #1

declare dso_local i32 @ps2_command(%struct.ps2dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
