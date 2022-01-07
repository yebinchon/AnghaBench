; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip.c_grip_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip.c_grip_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.grip = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @grip_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grip_disconnect(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca %struct.grip*, align 8
  %4 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %5 = load %struct.gameport*, %struct.gameport** %2, align 8
  %6 = call %struct.grip* @gameport_get_drvdata(%struct.gameport* %5)
  store %struct.grip* %6, %struct.grip** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = load %struct.grip*, %struct.grip** %3, align 8
  %12 = getelementptr inbounds %struct.grip, %struct.grip* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %10
  %20 = load %struct.grip*, %struct.grip** %3, align 8
  %21 = getelementptr inbounds %struct.grip, %struct.grip* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @input_unregister_device(i64 %26)
  br label %28

28:                                               ; preds = %19, %10
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %7

32:                                               ; preds = %7
  %33 = load %struct.gameport*, %struct.gameport** %2, align 8
  %34 = call i32 @gameport_close(%struct.gameport* %33)
  %35 = load %struct.gameport*, %struct.gameport** %2, align 8
  %36 = call i32 @gameport_set_drvdata(%struct.gameport* %35, i32* null)
  %37 = load %struct.grip*, %struct.grip** %3, align 8
  %38 = call i32 @kfree(%struct.grip* %37)
  ret void
}

declare dso_local %struct.grip* @gameport_get_drvdata(%struct.gameport*) #1

declare dso_local i32 @input_unregister_device(i64) #1

declare dso_local i32 @gameport_close(%struct.gameport*) #1

declare dso_local i32 @gameport_set_drvdata(%struct.gameport*, i32*) #1

declare dso_local i32 @kfree(%struct.grip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
