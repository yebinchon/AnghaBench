; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_serio_handle_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_serio.c_serio_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.serio_event = type { i32, i32 }

@serio_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @serio_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serio_handle_event(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.serio_event*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %4 = call i32 @mutex_lock(i32* @serio_mutex)
  br label %5

5:                                                ; preds = %41, %1
  %6 = call %struct.serio_event* (...) @serio_get_event()
  store %struct.serio_event* %6, %struct.serio_event** %3, align 8
  %7 = icmp ne %struct.serio_event* %6, null
  br i1 %7, label %8, label %51

8:                                                ; preds = %5
  %9 = load %struct.serio_event*, %struct.serio_event** %3, align 8
  %10 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %41 [
    i32 129, label %12
    i32 131, label %17
    i32 128, label %22
    i32 130, label %31
    i32 132, label %36
  ]

12:                                               ; preds = %8
  %13 = load %struct.serio_event*, %struct.serio_event** %3, align 8
  %14 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @serio_add_port(i32 %15)
  br label %41

17:                                               ; preds = %8
  %18 = load %struct.serio_event*, %struct.serio_event** %3, align 8
  %19 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @serio_reconnect_port(i32 %20)
  br label %41

22:                                               ; preds = %8
  %23 = load %struct.serio_event*, %struct.serio_event** %3, align 8
  %24 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @serio_disconnect_port(i32 %25)
  %27 = load %struct.serio_event*, %struct.serio_event** %3, align 8
  %28 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @serio_find_driver(i32 %29)
  br label %41

31:                                               ; preds = %8
  %32 = load %struct.serio_event*, %struct.serio_event** %3, align 8
  %33 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @serio_reconnect_subtree(i32 %34)
  br label %41

36:                                               ; preds = %8
  %37 = load %struct.serio_event*, %struct.serio_event** %3, align 8
  %38 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @serio_attach_driver(i32 %39)
  br label %41

41:                                               ; preds = %8, %36, %31, %22, %17, %12
  %42 = load %struct.serio_event*, %struct.serio_event** %3, align 8
  %43 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.serio_event*, %struct.serio_event** %3, align 8
  %46 = getelementptr inbounds %struct.serio_event, %struct.serio_event* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @serio_remove_duplicate_events(i32 %44, i32 %47)
  %49 = load %struct.serio_event*, %struct.serio_event** %3, align 8
  %50 = call i32 @serio_free_event(%struct.serio_event* %49)
  br label %5

51:                                               ; preds = %5
  %52 = call i32 @mutex_unlock(i32* @serio_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.serio_event* @serio_get_event(...) #1

declare dso_local i32 @serio_add_port(i32) #1

declare dso_local i32 @serio_reconnect_port(i32) #1

declare dso_local i32 @serio_disconnect_port(i32) #1

declare dso_local i32 @serio_find_driver(i32) #1

declare dso_local i32 @serio_reconnect_subtree(i32) #1

declare dso_local i32 @serio_attach_driver(i32) #1

declare dso_local i32 @serio_remove_duplicate_events(i32, i32) #1

declare dso_local i32 @serio_free_event(%struct.serio_event*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
