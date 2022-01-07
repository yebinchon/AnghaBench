; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_request_mode_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_request_mode_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { i32, i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@system_long_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_interface_request_mode_switch(%struct.gb_interface* %0) #0 {
  %2 = alloca %struct.gb_interface*, align 8
  %3 = alloca i32, align 4
  store %struct.gb_interface* %0, %struct.gb_interface** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %5 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %8 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %35

14:                                               ; preds = %1
  %15 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %16 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %18 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %17, i32 0, i32 4
  %19 = call i32 @reinit_completion(i32* %18)
  %20 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %21 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %20, i32 0, i32 2
  %22 = call i32 @get_device(i32* %21)
  %23 = load i32, i32* @system_long_wq, align 4
  %24 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %25 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %24, i32 0, i32 3
  %26 = call i32 @queue_work(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %14
  %29 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %30 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %29, i32 0, i32 2
  %31 = call i32 @put_device(i32* %30)
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %34, %28, %11
  %36 = load %struct.gb_interface*, %struct.gb_interface** %2, align 8
  %37 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
