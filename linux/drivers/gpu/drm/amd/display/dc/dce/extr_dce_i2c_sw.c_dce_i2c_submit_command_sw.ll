; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_dce_i2c_submit_command_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_dce_i2c_submit_command_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_pool = type { i32 }
%struct.ddc = type { i32 }
%struct.i2c_command = type { i32, %struct.i2c_payload*, i32 }
%struct.i2c_payload = type { i32 }
%struct.dce_i2c_sw = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce_i2c_submit_command_sw(%struct.resource_pool* %0, %struct.ddc* %1, %struct.i2c_command* %2, %struct.dce_i2c_sw* %3) #0 {
  %5 = alloca %struct.resource_pool*, align 8
  %6 = alloca %struct.ddc*, align 8
  %7 = alloca %struct.i2c_command*, align 8
  %8 = alloca %struct.dce_i2c_sw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_payload*, align 8
  store %struct.resource_pool* %0, %struct.resource_pool** %5, align 8
  store %struct.ddc* %1, %struct.ddc** %6, align 8
  store %struct.i2c_command* %2, %struct.i2c_command** %7, align 8
  store %struct.dce_i2c_sw* %3, %struct.dce_i2c_sw** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %8, align 8
  %14 = load %struct.i2c_command*, %struct.i2c_command** %7, align 8
  %15 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dce_i2c_sw_engine_set_speed(%struct.dce_i2c_sw* %13, i32 %16)
  store i32 1, i32* %10, align 4
  br label %18

18:                                               ; preds = %44, %4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.i2c_command*, %struct.i2c_command** %7, align 8
  %21 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.i2c_command*, %struct.i2c_command** %7, align 8
  %27 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = icmp ne i32 %25, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load %struct.i2c_command*, %struct.i2c_command** %7, align 8
  %33 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %32, i32 0, i32 1
  %34 = load %struct.i2c_payload*, %struct.i2c_payload** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %34, i64 %36
  store %struct.i2c_payload* %37, %struct.i2c_payload** %12, align 8
  %38 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %8, align 8
  %39 = load %struct.i2c_payload*, %struct.i2c_payload** %12, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @dce_i2c_sw_engine_submit_payload(%struct.dce_i2c_sw* %38, %struct.i2c_payload* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %47

44:                                               ; preds = %24
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %18

47:                                               ; preds = %43, %18
  %48 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %49 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %8, align 8
  %50 = call i32 @release_engine_dce_sw(%struct.resource_pool* %48, %struct.dce_i2c_sw* %49)
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local i32 @dce_i2c_sw_engine_set_speed(%struct.dce_i2c_sw*, i32) #1

declare dso_local i32 @dce_i2c_sw_engine_submit_payload(%struct.dce_i2c_sw*, %struct.i2c_payload*, i32) #1

declare dso_local i32 @release_engine_dce_sw(%struct.resource_pool*, %struct.dce_i2c_sw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
