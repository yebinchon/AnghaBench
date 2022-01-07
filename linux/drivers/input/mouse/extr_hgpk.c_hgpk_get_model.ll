; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_get_model.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_get_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@PSMOUSE_CMD_SETSCALE21 = common dso_local global i32 0, align 4
@PSMOUSE_CMD_GETINFO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ID: %*ph\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"OLPC touchpad revision 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @hgpk_get_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgpk_get_model(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.ps2dev*, align 8
  %5 = alloca [3 x i8], align 1
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 0
  store %struct.ps2dev* %7, %struct.ps2dev** %4, align 8
  %8 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %9 = load i32, i32* @PSMOUSE_CMD_SETSCALE21, align 4
  %10 = call i64 @ps2_command(%struct.ps2dev* %8, i8* null, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %1
  %13 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %14 = load i32, i32* @PSMOUSE_CMD_SETSCALE21, align 4
  %15 = call i64 @ps2_command(%struct.ps2dev* %13, i8* null, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %19 = load i32, i32* @PSMOUSE_CMD_SETSCALE21, align 4
  %20 = call i64 @ps2_command(%struct.ps2dev* %18, i8* null, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %25 = load i32, i32* @PSMOUSE_CMD_GETINFO, align 4
  %26 = call i64 @ps2_command(%struct.ps2dev* %23, i8* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %17, %12, %1
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %22
  %32 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %33 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %34 = call i32 @psmouse_dbg(%struct.psmouse* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 3, i8* %33)
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %37, 103
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %31
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %55

47:                                               ; preds = %39
  %48 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @psmouse_info(%struct.psmouse* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %50)
  %52 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %47, %44, %28
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @ps2_command(%struct.ps2dev*, i8*, i32) #1

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, i32, i8*) #1

declare dso_local i32 @psmouse_info(%struct.psmouse*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
