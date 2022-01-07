; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_reset_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_hgpk.c_hgpk_reset_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"failed to select mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @hgpk_reset_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hgpk_reset_device(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps2dev*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %9 = call i32 @psmouse_reset(%struct.psmouse* %8)
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 0
  store %struct.ps2dev* %14, %struct.ps2dev** %7, align 8
  %15 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %16 = call i64 @ps2_command(%struct.ps2dev* %15, i32* null, i32 245)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %12
  %19 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %20 = call i64 @ps2_command(%struct.ps2dev* %19, i32* null, i32 245)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %24 = call i64 @ps2_command(%struct.ps2dev* %23, i32* null, i32 230)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.ps2dev*, %struct.ps2dev** %7, align 8
  %28 = call i64 @ps2_command(%struct.ps2dev* %27, i32* null, i32 245)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22, %18, %12
  store i32 -1, i32* %3, align 4
  br label %45

31:                                               ; preds = %26
  %32 = call i32 @msleep(i32 150)
  br label %33

33:                                               ; preds = %31, %2
  %34 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %35 = call i32 @hgpk_select_mode(%struct.psmouse* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %40 = call i32 @psmouse_err(%struct.psmouse* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %33
  %43 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %44 = call i32 @hgpk_reset_hack_state(%struct.psmouse* %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %38, %30
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

declare dso_local i64 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hgpk_select_mode(%struct.psmouse*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

declare dso_local i32 @hgpk_reset_hack_state(%struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
