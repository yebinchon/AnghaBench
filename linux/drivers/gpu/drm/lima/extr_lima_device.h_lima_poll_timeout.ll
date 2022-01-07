; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.h_lima_poll_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.h_lima_poll_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_ip*, i64 (%struct.lima_ip*)*, i32, i32)* @lima_poll_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_poll_timeout(%struct.lima_ip* %0, i64 (%struct.lima_ip*)* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lima_ip*, align 8
  %7 = alloca i64 (%struct.lima_ip*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lima_ip* %0, %struct.lima_ip** %6, align 8
  store i64 (%struct.lima_ip*)* %1, i64 (%struct.lima_ip*)** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i32 (...) @ktime_get()
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @ktime_add_us(i32 %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @might_sleep_if(i32 %14)
  br label %16

16:                                               ; preds = %4, %42
  %17 = load i64 (%struct.lima_ip*)*, i64 (%struct.lima_ip*)** %7, align 8
  %18 = load %struct.lima_ip*, %struct.lima_ip** %6, align 8
  %19 = call i64 %17(%struct.lima_ip* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %43

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = call i32 (...) @ktime_get()
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @ktime_compare(i32 %26, i32 %27)
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %43

33:                                               ; preds = %25, %22
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 2
  %39 = add nsw i32 %38, 1
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @usleep_range(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %33
  br label %16

43:                                               ; preds = %30, %21
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @ktime_add_us(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
