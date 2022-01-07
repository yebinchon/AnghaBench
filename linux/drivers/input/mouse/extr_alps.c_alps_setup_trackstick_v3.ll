; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_setup_trackstick_v3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_setup_trackstick_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@EIO = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETSCALE21 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to initialize trackstick (E7 report failed)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"trackstick E7 report: %3ph\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to enter into trackstick extended mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @alps_setup_trackstick_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_setup_trackstick_v3(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @alps_passthrough_mode_v3(%struct.psmouse* %9, i32 %10, i32 1)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %91

16:                                               ; preds = %2
  %17 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %18 = load i32, i32* @PSMOUSE_CMD_SETSCALE21, align 4
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %20 = call i64 @alps_rpt_cmd(%struct.psmouse* %17, i32 0, i32 %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %24 = call i32 @psmouse_warn(%struct.psmouse* %23, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %40

27:                                               ; preds = %16
  %28 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %30 = call i32 @psmouse_dbg(%struct.psmouse* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %32 = call i64 @alps_trackstick_enter_extended_mode_v3_v6(%struct.psmouse* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %36 = call i32 @psmouse_err(%struct.psmouse* %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %27
  br label %40

40:                                               ; preds = %39, %22
  %41 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @alps_passthrough_mode_v3(%struct.psmouse* %41, i32 %42, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %91

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %91

53:                                               ; preds = %48
  %54 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %55 = call i64 @alps_enter_command_mode(%struct.psmouse* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %91

60:                                               ; preds = %53
  %61 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 8
  %64 = call i32 @alps_command_mode_read_reg(%struct.psmouse* %61, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %82

70:                                               ; preds = %60
  %71 = call i32 @BIT(i32 1)
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @__alps_command_mode_write_reg(%struct.psmouse* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %70
  br label %82

82:                                               ; preds = %81, %67
  %83 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %84 = call i64 @alps_exit_command_mode(%struct.psmouse* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %86, %57, %51, %45, %13
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @alps_passthrough_mode_v3(%struct.psmouse*, i32, i32) #1

declare dso_local i64 @alps_rpt_cmd(%struct.psmouse*, i32, i32, i8*) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i8*) #1

declare dso_local i64 @alps_trackstick_enter_extended_mode_v3_v6(%struct.psmouse*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

declare dso_local i64 @alps_enter_command_mode(%struct.psmouse*) #1

declare dso_local i32 @alps_command_mode_read_reg(%struct.psmouse*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @__alps_command_mode_write_reg(%struct.psmouse*, i32) #1

declare dso_local i64 @alps_exit_command_mode(%struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
