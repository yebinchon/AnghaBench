; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_dce_i2c_acquire_i2c_sw_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_sw.c_dce_i2c_acquire_i2c_sw_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_sw = type { i32 }
%struct.resource_pool = type { %struct.dce_i2c_sw** }
%struct.ddc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dce_i2c_sw* @dce_i2c_acquire_i2c_sw_engine(%struct.resource_pool* %0, %struct.ddc* %1) #0 {
  %3 = alloca %struct.dce_i2c_sw*, align 8
  %4 = alloca %struct.resource_pool*, align 8
  %5 = alloca %struct.ddc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dce_i2c_sw*, align 8
  store %struct.resource_pool* %0, %struct.resource_pool** %4, align 8
  store %struct.ddc* %1, %struct.ddc** %5, align 8
  store %struct.dce_i2c_sw* null, %struct.dce_i2c_sw** %7, align 8
  %8 = load %struct.ddc*, %struct.ddc** %5, align 8
  %9 = call i64 @get_hw_supported_ddc_line(%struct.ddc* %8, i32* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.resource_pool*, %struct.resource_pool** %4, align 8
  %13 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %12, i32 0, i32 0
  %14 = load %struct.dce_i2c_sw**, %struct.dce_i2c_sw*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %14, i64 %16
  %18 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %17, align 8
  store %struct.dce_i2c_sw* %18, %struct.dce_i2c_sw** %7, align 8
  br label %19

19:                                               ; preds = %11, %2
  %20 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %7, align 8
  %21 = icmp ne %struct.dce_i2c_sw* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store %struct.dce_i2c_sw* null, %struct.dce_i2c_sw** %3, align 8
  br label %31

23:                                               ; preds = %19
  %24 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %7, align 8
  %25 = load %struct.ddc*, %struct.ddc** %5, align 8
  %26 = call i32 @dce_i2c_engine_acquire_sw(%struct.dce_i2c_sw* %24, %struct.ddc* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store %struct.dce_i2c_sw* null, %struct.dce_i2c_sw** %3, align 8
  br label %31

29:                                               ; preds = %23
  %30 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %7, align 8
  store %struct.dce_i2c_sw* %30, %struct.dce_i2c_sw** %3, align 8
  br label %31

31:                                               ; preds = %29, %28, %22
  %32 = load %struct.dce_i2c_sw*, %struct.dce_i2c_sw** %3, align 8
  ret %struct.dce_i2c_sw* %32
}

declare dso_local i64 @get_hw_supported_ddc_line(%struct.ddc*, i32*) #1

declare dso_local i32 @dce_i2c_engine_acquire_sw(%struct.dce_i2c_sw*, %struct.ddc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
