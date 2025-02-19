; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_joydev.c_joydev_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_joydev.c_joydev_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.joydev = type { i64, %struct.input_handle }
%struct.input_handle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.joydev*)* @joydev_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @joydev_cleanup(%struct.joydev* %0) #0 {
  %2 = alloca %struct.joydev*, align 8
  %3 = alloca %struct.input_handle*, align 8
  store %struct.joydev* %0, %struct.joydev** %2, align 8
  %4 = load %struct.joydev*, %struct.joydev** %2, align 8
  %5 = getelementptr inbounds %struct.joydev, %struct.joydev* %4, i32 0, i32 1
  store %struct.input_handle* %5, %struct.input_handle** %3, align 8
  %6 = load %struct.joydev*, %struct.joydev** %2, align 8
  %7 = call i32 @joydev_mark_dead(%struct.joydev* %6)
  %8 = load %struct.joydev*, %struct.joydev** %2, align 8
  %9 = call i32 @joydev_hangup(%struct.joydev* %8)
  %10 = load %struct.joydev*, %struct.joydev** %2, align 8
  %11 = getelementptr inbounds %struct.joydev, %struct.joydev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.input_handle*, %struct.input_handle** %3, align 8
  %16 = call i32 @input_close_device(%struct.input_handle* %15)
  br label %17

17:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @joydev_mark_dead(%struct.joydev*) #1

declare dso_local i32 @joydev_hangup(%struct.joydev*) #1

declare dso_local i32 @input_close_device(%struct.input_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
