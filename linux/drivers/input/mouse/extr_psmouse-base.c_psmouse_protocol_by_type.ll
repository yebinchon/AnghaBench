; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_protocol_by_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_psmouse-base.c_psmouse_protocol_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse_protocol = type { i32 }

@psmouse_protocols = common dso_local global %struct.psmouse_protocol* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.psmouse_protocol* (i32)* @psmouse_protocol_by_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.psmouse_protocol* @psmouse_protocol_by_type(i32 %0) #0 {
  %2 = alloca %struct.psmouse_protocol*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse_protocol*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.psmouse_protocol* @__psmouse_protocol_by_type(i32 %5)
  store %struct.psmouse_protocol* %6, %struct.psmouse_protocol** %4, align 8
  %7 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %4, align 8
  %8 = icmp ne %struct.psmouse_protocol* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %4, align 8
  store %struct.psmouse_protocol* %10, %struct.psmouse_protocol** %2, align 8
  br label %15

11:                                               ; preds = %1
  %12 = call i32 @WARN_ON(i32 1)
  %13 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** @psmouse_protocols, align 8
  %14 = getelementptr inbounds %struct.psmouse_protocol, %struct.psmouse_protocol* %13, i64 0
  store %struct.psmouse_protocol* %14, %struct.psmouse_protocol** %2, align 8
  br label %15

15:                                               ; preds = %11, %9
  %16 = load %struct.psmouse_protocol*, %struct.psmouse_protocol** %2, align 8
  ret %struct.psmouse_protocol* %16
}

declare dso_local %struct.psmouse_protocol* @__psmouse_protocol_by_type(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
