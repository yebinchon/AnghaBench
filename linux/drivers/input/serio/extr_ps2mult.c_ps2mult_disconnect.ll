; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2mult.c_ps2mult_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2mult.c_ps2mult_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.ps2mult = type { i32 }

@PS2MULT_SESSION_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @ps2mult_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps2mult_disconnect(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.ps2mult*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = call %struct.ps2mult* @serio_get_drvdata(%struct.serio* %4)
  store %struct.ps2mult* %5, %struct.ps2mult** %3, align 8
  %6 = load %struct.serio*, %struct.serio** %2, align 8
  %7 = load i32, i32* @PS2MULT_SESSION_END, align 4
  %8 = call i32 @serio_write(%struct.serio* %6, i32 %7)
  %9 = load %struct.serio*, %struct.serio** %2, align 8
  %10 = call i32 @serio_close(%struct.serio* %9)
  %11 = load %struct.ps2mult*, %struct.ps2mult** %3, align 8
  %12 = call i32 @kfree(%struct.ps2mult* %11)
  %13 = load %struct.serio*, %struct.serio** %2, align 8
  %14 = call i32 @serio_set_drvdata(%struct.serio* %13, i32* null)
  ret void
}

declare dso_local %struct.ps2mult* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @serio_write(%struct.serio*, i32) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @kfree(%struct.ps2mult*) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
