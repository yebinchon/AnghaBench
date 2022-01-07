; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_grip_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_grip_mp.c_grip_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.grip_mp = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @grip_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grip_disconnect(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca %struct.grip_mp*, align 8
  %4 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %5 = load %struct.gameport*, %struct.gameport** %2, align 8
  %6 = call %struct.grip_mp* @gameport_get_drvdata(%struct.gameport* %5)
  store %struct.grip_mp* %6, %struct.grip_mp** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %33, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  %11 = load %struct.grip_mp*, %struct.grip_mp** %3, align 8
  %12 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 %15
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %10
  %22 = load %struct.grip_mp*, %struct.grip_mp** %3, align 8
  %23 = getelementptr inbounds %struct.grip_mp, %struct.grip_mp* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @input_unregister_device(i32 %30)
  br label %32

32:                                               ; preds = %21, %10
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %7

36:                                               ; preds = %7
  %37 = load %struct.gameport*, %struct.gameport** %2, align 8
  %38 = call i32 @gameport_close(%struct.gameport* %37)
  %39 = load %struct.gameport*, %struct.gameport** %2, align 8
  %40 = call i32 @gameport_set_drvdata(%struct.gameport* %39, i32* null)
  %41 = load %struct.grip_mp*, %struct.grip_mp** %3, align 8
  %42 = call i32 @kfree(%struct.grip_mp* %41)
  ret void
}

declare dso_local %struct.grip_mp* @gameport_get_drvdata(%struct.gameport*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @gameport_close(%struct.gameport*) #1

declare dso_local i32 @gameport_set_drvdata(%struct.gameport*, i32*) #1

declare dso_local i32 @kfree(%struct.grip_mp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
