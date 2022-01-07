; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c.c_dce_i2c_submit_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c.c_dce_i2c_submit_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_pool = type { i32 }
%struct.ddc = type { i32 }
%struct.i2c_command = type { i32 }
%struct.dce_i2c_hw = type { i32 }
%struct.dce_i2c_sw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce_i2c_submit_command(%struct.resource_pool* %0, %struct.ddc* %1, %struct.i2c_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource_pool*, align 8
  %6 = alloca %struct.ddc*, align 8
  %7 = alloca %struct.i2c_command*, align 8
  %8 = alloca %struct.dce_i2c_hw*, align 8
  %9 = alloca %struct.dce_i2c_sw*, align 8
  store %struct.resource_pool* %0, %struct.resource_pool** %5, align 8
  store %struct.ddc* %1, %struct.ddc** %6, align 8
  store %struct.i2c_command* %2, %struct.i2c_command** %7, align 8
  %10 = load %struct.ddc*, %struct.ddc** %6, align 8
  %11 = icmp ne %struct.ddc* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %44

14:                                               ; preds = %3
  %15 = load %struct.i2c_command*, %struct.i2c_command** %7, align 8
  %16 = icmp ne %struct.i2c_command* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %4, align 4
  br label %44

19:                                               ; preds = %14
  %20 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %21 = load %struct.ddc*, %struct.ddc** %6, align 8
  %22 = call %struct.dce_i2c_sw* @dce_i2c_acquire_i2c_sw_engine(%struct.resource_pool* %20, %struct.ddc* %21)
  store %struct.dce_i2c_sw* %22, %struct.dce_i2c_sw** %9, align 8
  %23 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %9, align 8
  %24 = icmp ne %struct.dce_i2c_sw* %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %19
  %26 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %27 = load %struct.ddc*, %struct.ddc** %6, align 8
  %28 = call %struct.dce_i2c_hw* @acquire_i2c_hw_engine(%struct.resource_pool* %26, %struct.ddc* %27)
  store %struct.dce_i2c_hw* %28, %struct.dce_i2c_hw** %8, align 8
  %29 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %8, align 8
  %30 = icmp ne %struct.dce_i2c_hw* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %44

32:                                               ; preds = %25
  %33 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %34 = load %struct.ddc*, %struct.ddc** %6, align 8
  %35 = load %struct.i2c_command*, %struct.i2c_command** %7, align 8
  %36 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %8, align 8
  %37 = call i32 @dce_i2c_submit_command_hw(%struct.resource_pool* %33, %struct.ddc* %34, %struct.i2c_command* %35, %struct.dce_i2c_hw* %36)
  store i32 %37, i32* %4, align 4
  br label %44

38:                                               ; preds = %19
  %39 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %40 = load %struct.ddc*, %struct.ddc** %6, align 8
  %41 = load %struct.i2c_command*, %struct.i2c_command** %7, align 8
  %42 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %9, align 8
  %43 = call i32 @dce_i2c_submit_command_sw(%struct.resource_pool* %39, %struct.ddc* %40, %struct.i2c_command* %41, %struct.dce_i2c_sw* %42)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %32, %31, %17, %12
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local %struct.dce_i2c_sw* @dce_i2c_acquire_i2c_sw_engine(%struct.resource_pool*, %struct.ddc*) #1

declare dso_local %struct.dce_i2c_hw* @acquire_i2c_hw_engine(%struct.resource_pool*, %struct.ddc*) #1

declare dso_local i32 @dce_i2c_submit_command_hw(%struct.resource_pool*, %struct.ddc*, %struct.i2c_command*, %struct.dce_i2c_hw*) #1

declare dso_local i32 @dce_i2c_submit_command_sw(%struct.resource_pool*, %struct.ddc*, %struct.i2c_command*, %struct.dce_i2c_sw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
