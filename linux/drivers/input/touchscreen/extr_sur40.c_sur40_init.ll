; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sur40_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SUR40_GET_VERSION = common dso_local global i32 0, align 4
@SUR40_SENSOR_CAPS = common dso_local global i32 0, align 4
@SUR40_ACCEL_CAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sur40_state*)* @sur40_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sur40_init(%struct.sur40_state* %0) #0 {
  %2 = alloca %struct.sur40_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.sur40_state* %0, %struct.sur40_state** %2, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i32* @kmalloc(i32 24, i32 %5)
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %57

12:                                               ; preds = %1
  %13 = load %struct.sur40_state*, %struct.sur40_state** %2, align 8
  %14 = load i32, i32* @SUR40_GET_VERSION, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @sur40_command(%struct.sur40_state* %13, i32 %14, i32 0, i32* %15, i32 12)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %57

20:                                               ; preds = %12
  %21 = load %struct.sur40_state*, %struct.sur40_state** %2, align 8
  %22 = load i32, i32* @SUR40_GET_VERSION, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @sur40_command(%struct.sur40_state* %21, i32 %22, i32 1, i32* %23, i32 12)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %57

28:                                               ; preds = %20
  %29 = load %struct.sur40_state*, %struct.sur40_state** %2, align 8
  %30 = load i32, i32* @SUR40_GET_VERSION, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @sur40_command(%struct.sur40_state* %29, i32 %30, i32 2, i32* %31, i32 12)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %57

36:                                               ; preds = %28
  %37 = load %struct.sur40_state*, %struct.sur40_state** %2, align 8
  %38 = load i32, i32* @SUR40_SENSOR_CAPS, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @sur40_command(%struct.sur40_state* %37, i32 %38, i32 0, i32* %39, i32 24)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %57

44:                                               ; preds = %36
  %45 = load %struct.sur40_state*, %struct.sur40_state** %2, align 8
  %46 = load i32, i32* @SUR40_ACCEL_CAPS, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @sur40_command(%struct.sur40_state* %45, i32 %46, i32 0, i32* %47, i32 5)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %57

52:                                               ; preds = %44
  %53 = load %struct.sur40_state*, %struct.sur40_state** %2, align 8
  %54 = load i32, i32* @SUR40_GET_VERSION, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @sur40_command(%struct.sur40_state* %53, i32 %54, i32 3, i32* %55, i32 12)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %51, %43, %35, %27, %19, %9
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @kfree(i32* %58)
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @sur40_command(%struct.sur40_state*, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
