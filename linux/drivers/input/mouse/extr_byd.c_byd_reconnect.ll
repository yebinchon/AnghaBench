; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_byd.c_byd_reconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_byd.c_byd_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"Reconnect\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Reconnected after %d attempts\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to initialize device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @byd_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byd_reconnect(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %25, %1
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = call i32 @psmouse_reset(%struct.psmouse* %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 @ssleep(i32 1)
  br label %15

15:                                               ; preds = %13, %8
  %16 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %17 = call i32 @byd_detect(%struct.psmouse* %16, i32 0)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  %24 = icmp slt i32 %23, 3
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %8, label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %45

32:                                               ; preds = %27
  %33 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_dbg(%struct.psmouse* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %37 = call i32 @byd_reset_touchpad(%struct.psmouse* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %42 = call i32 @psmouse_err(%struct.psmouse* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %40, %30
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @psmouse_dbg(%struct.psmouse*, i8*, ...) #1

declare dso_local i32 @psmouse_reset(%struct.psmouse*) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @byd_detect(%struct.psmouse*, i32) #1

declare dso_local i32 @byd_reset_touchpad(%struct.psmouse*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
