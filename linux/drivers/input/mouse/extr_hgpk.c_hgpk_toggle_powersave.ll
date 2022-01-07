; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_toggle_powersave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_toggle_powersave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i64, %struct.ps2dev }
%struct.ps2dev = type { i32 }

@HGPK_MODEL_D = common dso_local global i64 0, align 8
@PSMOUSE_INITIALIZING = common dso_local global i32 0, align 4
@PSMOUSE_CMD_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to reset device!\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Touchpad powered up.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Powering off touchpad.\0A\00", align 1
@PSMOUSE_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @hgpk_toggle_powersave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgpk_toggle_powersave(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 1
  store %struct.ps2dev* %10, %struct.ps2dev** %6, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HGPK_MODEL_D, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %22 = load i32, i32* @PSMOUSE_INITIALIZING, align 4
  %23 = call i32 @psmouse_set_state(%struct.psmouse* %21, i32 %22)
  store i32 20, i32* %7, align 4
  br label %24

24:                                               ; preds = %35, %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %29 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %30 = call i32 @ps2_sendbyte(%struct.ps2dev* %28, i32 %29, i32 20)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %38

33:                                               ; preds = %27
  %34 = call i32 @msleep(i32 25)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %7, align 4
  br label %24

38:                                               ; preds = %32, %24
  %39 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %40 = call i32 @hgpk_reset_device(%struct.psmouse* %39, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %45 = call i32 @psmouse_err(%struct.psmouse* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %74

47:                                               ; preds = %38
  %48 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %49 = call i32 @psmouse_activate(%struct.psmouse* %48)
  %50 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %51 = call i32 @psmouse_dbg(%struct.psmouse* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %73

52:                                               ; preds = %17
  %53 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %54 = call i32 @psmouse_dbg(%struct.psmouse* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %56 = call i64 @ps2_command(%struct.ps2dev* %55, i32* null, i32 236)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %60 = call i64 @ps2_command(%struct.ps2dev* %59, i32* null, i32 236)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %64 = call i64 @ps2_command(%struct.ps2dev* %63, i32* null, i32 234)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %58, %52
  store i32 -1, i32* %3, align 4
  br label %74

67:                                               ; preds = %62
  %68 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %69 = load i32, i32* @PSMOUSE_IGNORE, align 4
  %70 = call i32 @psmouse_set_state(%struct.psmouse* %68, i32 %69)
  %71 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %72 = call i32 @ps2_sendbyte(%struct.ps2dev* %71, i32 236, i32 20)
  br label %73

73:                                               ; preds = %67, %47
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %66, %43, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @psmouse_set_state(%struct.psmouse*, i32) #1

declare dso_local i32 @ps2_sendbyte(%struct.ps2dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hgpk_reset_device(%struct.psmouse*, i32) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

declare dso_local i32 @psmouse_activate(%struct.psmouse*) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*) #1

declare dso_local i64 @ps2_command(%struct.ps2dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
