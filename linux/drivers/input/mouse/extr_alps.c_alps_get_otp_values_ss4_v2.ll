; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_get_otp_values_ss4_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_get_otp_values_ss4_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_SETSTREAM = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@PSMOUSE_CMD_SETPOLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8, i8*)* @alps_get_otp_values_ss4_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_get_otp_values_ss4_v2(%struct.psmouse* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.psmouse*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ps2dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8* %2, i8** %7, align 8
  %9 = load %struct.psmouse*, %struct.psmouse** %5, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 0
  store %struct.ps2dev* %10, %struct.ps2dev** %8, align 8
  %11 = load i8, i8* %6, align 1
  %12 = zext i8 %11 to i32
  switch i32 %12, label %49 [
    i32 0, label %13
    i32 1, label %31
  ]

13:                                               ; preds = %3
  %14 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %15 = load i32, i32* @PSMOUSE_CMD_SETSTREAM, align 4
  %16 = call i32 @ps2_command(%struct.ps2dev* %14, i8* null, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %13
  %19 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %20 = load i32, i32* @PSMOUSE_CMD_SETSTREAM, align 4
  %21 = call i32 @ps2_command(%struct.ps2dev* %19, i8* null, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %27 = call i32 @ps2_command(%struct.ps2dev* %24, i8* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %18, %13
  store i32 -1, i32* %4, align 4
  br label %50

30:                                               ; preds = %23
  br label %49

31:                                               ; preds = %3
  %32 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %33 = load i32, i32* @PSMOUSE_CMD_SETPOLL, align 4
  %34 = call i32 @ps2_command(%struct.ps2dev* %32, i8* null, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %31
  %37 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %38 = load i32, i32* @PSMOUSE_CMD_SETPOLL, align 4
  %39 = call i32 @ps2_command(%struct.ps2dev* %37, i8* null, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load %struct.ps2dev*, %struct.ps2dev** %8, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %45 = call i32 @ps2_command(%struct.ps2dev* %42, i8* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %36, %31
  store i32 -1, i32* %4, align 4
  br label %50

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %3, %48, %30
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %47, %29
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
