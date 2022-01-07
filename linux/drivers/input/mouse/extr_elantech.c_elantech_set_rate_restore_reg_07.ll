; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_set_rate_restore_reg_07.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_set_rate_restore_reg_07.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.elantech_data* }
%struct.elantech_data = type { i32, i32 (%struct.psmouse*, i32)* }

@.str = private unnamed_addr constant [25 x i8] c"restoring reg_07 failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, i32)* @elantech_set_rate_restore_reg_07 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elantech_set_rate_restore_reg_07(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.elantech_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 0
  %8 = load %struct.elantech_data*, %struct.elantech_data** %7, align 8
  store %struct.elantech_data* %8, %struct.elantech_data** %5, align 8
  %9 = load %struct.elantech_data*, %struct.elantech_data** %5, align 8
  %10 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %9, i32 0, i32 1
  %11 = load i32 (%struct.psmouse*, i32)*, i32 (%struct.psmouse*, i32)** %10, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 %11(%struct.psmouse* %12, i32 %13)
  %15 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %16 = load %struct.elantech_data*, %struct.elantech_data** %5, align 8
  %17 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @elantech_write_reg(%struct.psmouse* %15, i32 7, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %23 = call i32 @psmouse_err(%struct.psmouse* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %2
  ret void
}

declare dso_local i64 @elantech_write_reg(%struct.psmouse*, i32, i32) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
