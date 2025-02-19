; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_sidewinder.c_sw_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_sidewinder.c_sw_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }
%struct.sw = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @sw_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_disconnect(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca %struct.sw*, align 8
  %4 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %5 = load %struct.gameport*, %struct.gameport** %2, align 8
  %6 = call %struct.sw* @gameport_get_drvdata(%struct.gameport* %5)
  store %struct.sw* %6, %struct.sw** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.sw*, %struct.sw** %3, align 8
  %10 = getelementptr inbounds %struct.sw, %struct.sw* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.sw*, %struct.sw** %3, align 8
  %15 = getelementptr inbounds %struct.sw, %struct.sw* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @input_unregister_device(i32 %20)
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.gameport*, %struct.gameport** %2, align 8
  %27 = call i32 @gameport_close(%struct.gameport* %26)
  %28 = load %struct.gameport*, %struct.gameport** %2, align 8
  %29 = call i32 @gameport_set_drvdata(%struct.gameport* %28, i32* null)
  %30 = load %struct.sw*, %struct.sw** %3, align 8
  %31 = call i32 @kfree(%struct.sw* %30)
  ret void
}

declare dso_local %struct.sw* @gameport_get_drvdata(%struct.gameport*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @gameport_close(%struct.gameport*) #1

declare dso_local i32 @gameport_set_drvdata(%struct.gameport*, i32*) #1

declare dso_local i32 @kfree(%struct.sw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
