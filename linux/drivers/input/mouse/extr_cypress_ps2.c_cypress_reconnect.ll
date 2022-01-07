; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_reconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@CYTP_PS2_CMD_TRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Reconnect: unable to detect trackpad.\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Reconnect: Unable to initialize Cypress absolute mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @cypress_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_reconnect(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %6 = load i32, i32* @CYTP_PS2_CMD_TRIES, align 4
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %9 = call i32 @cypress_reset(%struct.psmouse* %8)
  %10 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %11 = call i32 @cypress_detect(%struct.psmouse* %10, i32 0)
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = icmp sgt i32 %17, 0
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i1 [ false, %12 ], [ %18, %15 ]
  br i1 %20, label %7, label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %26 = call i32 @psmouse_err(%struct.psmouse* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %35

27:                                               ; preds = %21
  %28 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %29 = call i64 @cypress_set_absolute_mode(%struct.psmouse* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %33 = call i32 @psmouse_err(%struct.psmouse* %32, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %35

34:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %31, %24
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @cypress_reset(%struct.psmouse*) #1

declare dso_local i32 @cypress_detect(%struct.psmouse*, i32) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

declare dso_local i64 @cypress_set_absolute_mode(%struct.psmouse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
