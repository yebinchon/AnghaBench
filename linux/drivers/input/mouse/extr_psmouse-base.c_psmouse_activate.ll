; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PSMOUSE_CMD_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to enable mouse on %s\0A\00", align 1
@PSMOUSE_ACTIVATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @psmouse_activate(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %4 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %5 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 0
  %6 = load i32, i32* @PSMOUSE_CMD_ENABLE, align 4
  %7 = call i64 @ps2_command(%struct.TYPE_4__* %5, i32* null, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %11 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @psmouse_warn(%struct.psmouse* %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 -1, i32* %2, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %20 = load i32, i32* @PSMOUSE_ACTIVATED, align 4
  %21 = call i32 @psmouse_set_state(%struct.psmouse* %19, i32 %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @ps2_command(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*, i32) #1

declare dso_local i32 @psmouse_set_state(%struct.psmouse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
