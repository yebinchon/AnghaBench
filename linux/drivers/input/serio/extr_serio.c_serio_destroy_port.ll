; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_serio_destroy_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_serio_destroy_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32, i32, i32*, i32, i32 (%struct.serio*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @serio_destroy_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serio_destroy_port(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.serio*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.serio*, %struct.serio** %2, align 8
  %6 = call %struct.serio* @serio_get_pending_child(%struct.serio* %5)
  store %struct.serio* %6, %struct.serio** %3, align 8
  %7 = icmp ne %struct.serio* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load %struct.serio*, %struct.serio** %3, align 8
  %10 = call i32 @serio_remove_pending_events(%struct.serio* %9)
  %11 = load %struct.serio*, %struct.serio** %3, align 8
  %12 = getelementptr inbounds %struct.serio, %struct.serio* %11, i32 0, i32 0
  %13 = call i32 @put_device(i32* %12)
  br label %4

14:                                               ; preds = %4
  %15 = load %struct.serio*, %struct.serio** %2, align 8
  %16 = getelementptr inbounds %struct.serio, %struct.serio* %15, i32 0, i32 4
  %17 = load i32 (%struct.serio*)*, i32 (%struct.serio*)** %16, align 8
  %18 = icmp ne i32 (%struct.serio*)* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.serio*, %struct.serio** %2, align 8
  %21 = getelementptr inbounds %struct.serio, %struct.serio* %20, i32 0, i32 4
  %22 = load i32 (%struct.serio*)*, i32 (%struct.serio*)** %21, align 8
  %23 = load %struct.serio*, %struct.serio** %2, align 8
  %24 = call i32 %22(%struct.serio* %23)
  br label %25

25:                                               ; preds = %19, %14
  %26 = load %struct.serio*, %struct.serio** %2, align 8
  %27 = getelementptr inbounds %struct.serio, %struct.serio* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.serio*, %struct.serio** %2, align 8
  %32 = getelementptr inbounds %struct.serio, %struct.serio* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @serio_pause_rx(i32* %33)
  %35 = load %struct.serio*, %struct.serio** %2, align 8
  %36 = getelementptr inbounds %struct.serio, %struct.serio* %35, i32 0, i32 3
  %37 = call i32 @list_del_init(i32* %36)
  %38 = load %struct.serio*, %struct.serio** %2, align 8
  %39 = getelementptr inbounds %struct.serio, %struct.serio* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @serio_continue_rx(i32* %40)
  %42 = load %struct.serio*, %struct.serio** %2, align 8
  %43 = getelementptr inbounds %struct.serio, %struct.serio* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %30, %25
  %45 = load %struct.serio*, %struct.serio** %2, align 8
  %46 = getelementptr inbounds %struct.serio, %struct.serio* %45, i32 0, i32 0
  %47 = call i64 @device_is_registered(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.serio*, %struct.serio** %2, align 8
  %51 = getelementptr inbounds %struct.serio, %struct.serio* %50, i32 0, i32 0
  %52 = call i32 @device_del(i32* %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.serio*, %struct.serio** %2, align 8
  %55 = getelementptr inbounds %struct.serio, %struct.serio* %54, i32 0, i32 1
  %56 = call i32 @list_del_init(i32* %55)
  %57 = load %struct.serio*, %struct.serio** %2, align 8
  %58 = call i32 @serio_remove_pending_events(%struct.serio* %57)
  %59 = load %struct.serio*, %struct.serio** %2, align 8
  %60 = getelementptr inbounds %struct.serio, %struct.serio* %59, i32 0, i32 0
  %61 = call i32 @put_device(i32* %60)
  ret void
}

declare dso_local %struct.serio* @serio_get_pending_child(%struct.serio*) #1

declare dso_local i32 @serio_remove_pending_events(%struct.serio*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @serio_pause_rx(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @serio_continue_rx(i32*) #1

declare dso_local i64 @device_is_registered(i32*) #1

declare dso_local i32 @device_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
