; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_ps2_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_ps2_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.elantech_data*, %struct.ps2dev }
%struct.elantech_data = type { i32 }
%struct.ps2dev = type { i32 }

@ETP_PS2_COMMAND_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"retrying ps2 command 0x%02x (%d).\0A\00", align 1
@ETP_PS2_COMMAND_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ps2 command 0x%02x failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8*, i32)* @elantech_ps2_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_ps2_command(%struct.psmouse* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps2dev*, align 8
  %8 = alloca %struct.elantech_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %12 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 1
  store %struct.ps2dev* %12, %struct.ps2dev** %7, align 8
  %13 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 0
  %15 = load %struct.elantech_data*, %struct.elantech_data** %14, align 8
  store %struct.elantech_data* %15, %struct.elantech_data** %8, align 8
  %16 = load i32, i32* @ETP_PS2_COMMAND_TRIES, align 4
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %33, %3
  %18 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ps2_command(%struct.ps2dev* %18, i8* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %36

25:                                               ; preds = %17
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @elantech_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @ETP_PS2_COMMAND_DELAY, align 4
  %32 = call i32 @msleep(i32 %31)
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %17, label %36

36:                                               ; preds = %33, %24
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @psmouse_err(%struct.psmouse* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %9, align 4
  ret i32 %44
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @elantech_debug(i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
