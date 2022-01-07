; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.serio*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.psmouse = type { i32 (%struct.psmouse*)*, %struct.TYPE_6__, i32 (%struct.psmouse*)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@psmouse_mutex = common dso_local global i32 0, align 4
@SERIO_PS_PSTHRU = common dso_local global i64 0, align 8
@PSMOUSE_INITIALIZING = common dso_local global i32 0, align 4
@PSMOUSE_CMD_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to disable mouse on %s\0A\00", align 1
@PSMOUSE_CMD_RESET_DIS = common dso_local global i32 0, align 4
@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @psmouse_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psmouse_cleanup(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.psmouse*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %5 = load %struct.serio*, %struct.serio** %2, align 8
  %6 = call %struct.psmouse* @serio_get_drvdata(%struct.serio* %5)
  store %struct.psmouse* %6, %struct.psmouse** %3, align 8
  store %struct.psmouse* null, %struct.psmouse** %4, align 8
  %7 = call i32 @mutex_lock(i32* @psmouse_mutex)
  %8 = load %struct.serio*, %struct.serio** %2, align 8
  %9 = getelementptr inbounds %struct.serio, %struct.serio* %8, i32 0, i32 0
  %10 = load %struct.serio*, %struct.serio** %9, align 8
  %11 = icmp ne %struct.serio* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.serio*, %struct.serio** %2, align 8
  %14 = getelementptr inbounds %struct.serio, %struct.serio* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SERIO_PS_PSTHRU, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.serio*, %struct.serio** %2, align 8
  %21 = getelementptr inbounds %struct.serio, %struct.serio* %20, i32 0, i32 0
  %22 = load %struct.serio*, %struct.serio** %21, align 8
  %23 = call %struct.psmouse* @serio_get_drvdata(%struct.serio* %22)
  store %struct.psmouse* %23, %struct.psmouse** %4, align 8
  %24 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %25 = call i32 @psmouse_deactivate(%struct.psmouse* %24)
  br label %26

26:                                               ; preds = %19, %12, %1
  %27 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %28 = load i32, i32* @PSMOUSE_INITIALIZING, align 4
  %29 = call i32 @psmouse_set_state(%struct.psmouse* %27, i32 %28)
  %30 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %31 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %30, i32 0, i32 1
  %32 = load i32, i32* @PSMOUSE_CMD_DISABLE, align 4
  %33 = call i64 @ps2_command(%struct.TYPE_6__* %31, i32* null, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %37 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %38 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @psmouse_warn(%struct.psmouse* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %35, %26
  %45 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %46 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %45, i32 0, i32 2
  %47 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %46, align 8
  %48 = icmp ne i32 (%struct.psmouse*)* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %51 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %50, i32 0, i32 2
  %52 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %51, align 8
  %53 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %54 = call i32 %52(%struct.psmouse* %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %57 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %56, i32 0, i32 1
  %58 = load i32, i32* @PSMOUSE_CMD_RESET_DIS, align 4
  %59 = call i64 @ps2_command(%struct.TYPE_6__* %57, i32* null, i32 %58)
  %60 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %61 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %60, i32 0, i32 1
  %62 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %63 = call i64 @ps2_command(%struct.TYPE_6__* %61, i32* null, i32 %62)
  %64 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %65 = icmp ne %struct.psmouse* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %55
  %67 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %68 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %67, i32 0, i32 0
  %69 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %68, align 8
  %70 = icmp ne i32 (%struct.psmouse*)* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %73 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %72, i32 0, i32 0
  %74 = load i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)** %73, align 8
  %75 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %76 = call i32 %74(%struct.psmouse* %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %79 = call i32 @psmouse_activate(%struct.psmouse* %78)
  br label %80

80:                                               ; preds = %77, %55
  %81 = call i32 @mutex_unlock(i32* @psmouse_mutex)
  ret void
}

declare dso_local %struct.psmouse* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @psmouse_deactivate(%struct.psmouse*) #1

declare dso_local i32 @psmouse_set_state(%struct.psmouse*, i32) #1

declare dso_local i64 @ps2_command(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*, i32) #1

declare dso_local i32 @psmouse_activate(%struct.psmouse*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
