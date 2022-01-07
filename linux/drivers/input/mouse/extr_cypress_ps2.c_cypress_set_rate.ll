; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, i32, %struct.cytp_data* }
%struct.cytp_data = type { i32 }

@CYTP_BIT_HIGH_RATE = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETRATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, i32)* @cypress_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_set_rate(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cytp_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 2
  %8 = load %struct.cytp_data*, %struct.cytp_data** %7, align 8
  store %struct.cytp_data* %8, %struct.cytp_data** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp uge i32 %9, 80
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 0
  store i32 80, i32* %13, align 8
  %14 = load i32, i32* @CYTP_BIT_HIGH_RATE, align 4
  %15 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %16 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %21 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %20, i32 0, i32 0
  store i32 40, i32* %21, align 8
  %22 = load i32, i32* @CYTP_BIT_HIGH_RATE, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.cytp_data*, %struct.cytp_data** %5, align 8
  %25 = getelementptr inbounds %struct.cytp_data, %struct.cytp_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %19, %11
  %29 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %30 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %29, i32 0, i32 1
  %31 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %32 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %31, i32 0, i32 0
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* @PSMOUSE_CMD_SETRATE, align 4
  %35 = call i32 @ps2_command(i32* %30, i8* %33, i32 %34)
  ret void
}

declare dso_local i32 @ps2_command(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
