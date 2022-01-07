; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_destroy_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/gameport/extr_gameport.c_gameport_destroy_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gameport*)* @gameport_destroy_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gameport_destroy_port(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  %3 = alloca %struct.gameport*, align 8
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %4 = load %struct.gameport*, %struct.gameport** %2, align 8
  %5 = call %struct.gameport* @gameport_get_pending_child(%struct.gameport* %4)
  store %struct.gameport* %5, %struct.gameport** %3, align 8
  %6 = load %struct.gameport*, %struct.gameport** %3, align 8
  %7 = icmp ne %struct.gameport* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.gameport*, %struct.gameport** %3, align 8
  %10 = call i32 @gameport_remove_pending_events(%struct.gameport* %9)
  %11 = load %struct.gameport*, %struct.gameport** %3, align 8
  %12 = getelementptr inbounds %struct.gameport, %struct.gameport* %11, i32 0, i32 0
  %13 = call i32 @put_device(i32* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.gameport*, %struct.gameport** %2, align 8
  %16 = getelementptr inbounds %struct.gameport, %struct.gameport* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.gameport*, %struct.gameport** %2, align 8
  %21 = getelementptr inbounds %struct.gameport, %struct.gameport* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.gameport*, %struct.gameport** %2, align 8
  %25 = getelementptr inbounds %struct.gameport, %struct.gameport* %24, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %25, align 8
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.gameport*, %struct.gameport** %2, align 8
  %28 = getelementptr inbounds %struct.gameport, %struct.gameport* %27, i32 0, i32 0
  %29 = call i64 @device_is_registered(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.gameport*, %struct.gameport** %2, align 8
  %33 = getelementptr inbounds %struct.gameport, %struct.gameport* %32, i32 0, i32 0
  %34 = call i32 @device_del(i32* %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.gameport*, %struct.gameport** %2, align 8
  %37 = getelementptr inbounds %struct.gameport, %struct.gameport* %36, i32 0, i32 1
  %38 = call i32 @list_del_init(i32* %37)
  %39 = load %struct.gameport*, %struct.gameport** %2, align 8
  %40 = call i32 @gameport_remove_pending_events(%struct.gameport* %39)
  %41 = load %struct.gameport*, %struct.gameport** %2, align 8
  %42 = getelementptr inbounds %struct.gameport, %struct.gameport* %41, i32 0, i32 0
  %43 = call i32 @put_device(i32* %42)
  ret void
}

declare dso_local %struct.gameport* @gameport_get_pending_child(%struct.gameport*) #1

declare dso_local i32 @gameport_remove_pending_events(%struct.gameport*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i64 @device_is_registered(i32*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
