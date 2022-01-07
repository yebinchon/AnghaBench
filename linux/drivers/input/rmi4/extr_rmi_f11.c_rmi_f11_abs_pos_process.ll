; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f11.c_rmi_f11_abs_pos_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f11.c_rmi_f11_abs_pos_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f11_data = type { %struct.f11_2d_data }
%struct.f11_2d_data = type { i64* }
%struct.rmi_2d_sensor = type { i32 }
%struct.rmi_2d_sensor_abs_object = type { i32, i64, i64, i64, i64, i64, i32 }

@RMI_F11_ABS_BYTES = common dso_local global i64 0, align 8
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@RMI_2D_OBJECT_FINGER = common dso_local global i32 0, align 4
@RMI_2D_OBJECT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f11_data*, %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor_abs_object*, i32, i64)* @rmi_f11_abs_pos_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmi_f11_abs_pos_process(%struct.f11_data* %0, %struct.rmi_2d_sensor* %1, %struct.rmi_2d_sensor_abs_object* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.f11_data*, align 8
  %7 = alloca %struct.rmi_2d_sensor*, align 8
  %8 = alloca %struct.rmi_2d_sensor_abs_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.f11_2d_data*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.f11_data* %0, %struct.f11_data** %6, align 8
  store %struct.rmi_2d_sensor* %1, %struct.rmi_2d_sensor** %7, align 8
  store %struct.rmi_2d_sensor_abs_object* %2, %struct.rmi_2d_sensor_abs_object** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load %struct.f11_data*, %struct.f11_data** %6, align 8
  %15 = getelementptr inbounds %struct.f11_data, %struct.f11_data* %14, i32 0, i32 0
  store %struct.f11_2d_data* %15, %struct.f11_2d_data** %11, align 8
  %16 = load %struct.f11_2d_data*, %struct.f11_2d_data** %11, align 8
  %17 = getelementptr inbounds %struct.f11_2d_data, %struct.f11_2d_data* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @RMI_F11_ABS_BYTES, align 8
  %21 = mul i64 %19, %20
  %22 = getelementptr inbounds i64, i64* %18, i64 %21
  store i64* %22, i64** %12, align 8
  %23 = load i32, i32* @MT_TOOL_FINGER, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %29 [
    i32 128, label %25
  ]

25:                                               ; preds = %5
  %26 = load i32, i32* @RMI_2D_OBJECT_FINGER, align 4
  %27 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %8, align 8
  %28 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  br label %33

29:                                               ; preds = %5
  %30 = load i32, i32* @RMI_2D_OBJECT_NONE, align 4
  %31 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %8, align 8
  %32 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %8, align 8
  %36 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i64*, i64** %12, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = shl i64 %39, 4
  %41 = load i64*, i64** %12, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %43, 15
  %45 = or i64 %40, %44
  %46 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %8, align 8
  %47 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i64*, i64** %12, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = shl i64 %50, 4
  %52 = load i64*, i64** %12, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 2
  %54 = load i64, i64* %53, align 8
  %55 = lshr i64 %54, 4
  %56 = or i64 %51, %55
  %57 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %8, align 8
  %58 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load i64*, i64** %12, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %8, align 8
  %63 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load i64*, i64** %12, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 3
  %66 = load i64, i64* %65, align 8
  %67 = and i64 %66, 15
  %68 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %8, align 8
  %69 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %68, i32 0, i32 4
  store i64 %67, i64* %69, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 3
  %72 = load i64, i64* %71, align 8
  %73 = lshr i64 %72, 4
  %74 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %8, align 8
  %75 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, %struct.rmi_2d_sensor_abs_object* %74, i32 0, i32 5
  store i64 %73, i64* %75, align 8
  %76 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %7, align 8
  %77 = load %struct.rmi_2d_sensor_abs_object*, %struct.rmi_2d_sensor_abs_object** %8, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @rmi_2d_sensor_abs_process(%struct.rmi_2d_sensor* %76, %struct.rmi_2d_sensor_abs_object* %77, i64 %78)
  ret void
}

declare dso_local i32 @rmi_2d_sensor_abs_process(%struct.rmi_2d_sensor*, %struct.rmi_2d_sensor_abs_object*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
