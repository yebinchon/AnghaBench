; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_close_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_close_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handle = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32, i32 (%struct.input_dev*)*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_close_device(%struct.input_handle* %0) #0 {
  %2 = alloca %struct.input_handle*, align 8
  %3 = alloca %struct.input_dev*, align 8
  store %struct.input_handle* %0, %struct.input_handle** %2, align 8
  %4 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %5 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %4, i32 0, i32 1
  %6 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  store %struct.input_dev* %6, %struct.input_dev** %3, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %11 = call i32 @__input_release_device(%struct.input_handle* %10)
  %12 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %1
  %18 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @input_dev_poller_stop(i64 %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 1
  %30 = load i32 (%struct.input_dev*)*, i32 (%struct.input_dev*)** %29, align 8
  %31 = icmp ne i32 (%struct.input_dev*)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %34 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %33, i32 0, i32 1
  %35 = load i32 (%struct.input_dev*)*, i32 (%struct.input_dev*)** %34, align 8
  %36 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %37 = call i32 %35(%struct.input_dev* %36)
  br label %38

38:                                               ; preds = %32, %27
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.input_handle*, %struct.input_handle** %2, align 8
  %41 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = call i32 (...) @synchronize_rcu()
  br label %47

47:                                               ; preds = %45, %39
  %48 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__input_release_device(%struct.input_handle*) #1

declare dso_local i32 @input_dev_poller_stop(i64) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
