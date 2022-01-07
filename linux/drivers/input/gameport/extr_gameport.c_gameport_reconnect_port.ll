; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_reconnect_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_reconnect_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { %struct.gameport*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.gameport*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @gameport_reconnect_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gameport_reconnect_port(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  br label %3

3:                                                ; preds = %33, %1
  %4 = load %struct.gameport*, %struct.gameport** %2, align 8
  %5 = getelementptr inbounds %struct.gameport, %struct.gameport* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = load %struct.gameport*, %struct.gameport** %2, align 8
  %10 = getelementptr inbounds %struct.gameport, %struct.gameport* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64 (%struct.gameport*)*, i64 (%struct.gameport*)** %12, align 8
  %14 = icmp ne i64 (%struct.gameport*)* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %8
  %16 = load %struct.gameport*, %struct.gameport** %2, align 8
  %17 = getelementptr inbounds %struct.gameport, %struct.gameport* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64 (%struct.gameport*)*, i64 (%struct.gameport*)** %19, align 8
  %21 = load %struct.gameport*, %struct.gameport** %2, align 8
  %22 = call i64 %20(%struct.gameport* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15, %8, %3
  %25 = load %struct.gameport*, %struct.gameport** %2, align 8
  %26 = call i32 @gameport_disconnect_port(%struct.gameport* %25)
  %27 = load %struct.gameport*, %struct.gameport** %2, align 8
  %28 = call i32 @gameport_find_driver(%struct.gameport* %27)
  br label %36

29:                                               ; preds = %15
  %30 = load %struct.gameport*, %struct.gameport** %2, align 8
  %31 = getelementptr inbounds %struct.gameport, %struct.gameport* %30, i32 0, i32 0
  %32 = load %struct.gameport*, %struct.gameport** %31, align 8
  store %struct.gameport* %32, %struct.gameport** %2, align 8
  br label %33

33:                                               ; preds = %29
  %34 = load %struct.gameport*, %struct.gameport** %2, align 8
  %35 = icmp ne %struct.gameport* %34, null
  br i1 %35, label %3, label %36

36:                                               ; preds = %33, %24
  ret void
}

declare dso_local i32 @gameport_disconnect_port(%struct.gameport*) #1

declare dso_local i32 @gameport_find_driver(%struct.gameport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
