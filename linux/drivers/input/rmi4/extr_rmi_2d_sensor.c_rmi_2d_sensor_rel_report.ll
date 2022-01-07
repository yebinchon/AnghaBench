; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_2d_sensor.c_rmi_2d_sensor_rel_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_2d_sensor.c_rmi_2d_sensor_rel_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_2d_sensor = type { i32, %struct.rmi_2d_axis_alignment }
%struct.rmi_2d_axis_alignment = type { i64, i64, i64 }

@RMI_2D_REL_POS_MAX = common dso_local global i32 0, align 4
@RMI_2D_REL_POS_MIN = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmi_2d_sensor_rel_report(%struct.rmi_2d_sensor* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rmi_2d_sensor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rmi_2d_axis_alignment*, align 8
  store %struct.rmi_2d_sensor* %0, %struct.rmi_2d_sensor** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %4, align 8
  %9 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %8, i32 0, i32 1
  store %struct.rmi_2d_axis_alignment* %9, %struct.rmi_2d_axis_alignment** %7, align 8
  %10 = load i32, i32* @RMI_2D_REL_POS_MAX, align 4
  %11 = load i32, i32* @RMI_2D_REL_POS_MIN, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @max(i32 %11, i32 %12)
  %14 = call i32 @min(i32 %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @RMI_2D_REL_POS_MAX, align 4
  %16 = load i32, i32* @RMI_2D_REL_POS_MIN, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @max(i32 %16, i32 %17)
  %19 = call i32 @min(i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.rmi_2d_axis_alignment*, %struct.rmi_2d_axis_alignment** %7, align 8
  %21 = getelementptr inbounds %struct.rmi_2d_axis_alignment, %struct.rmi_2d_axis_alignment* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @RMI_2D_REL_POS_MAX, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @min(i32 %25, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %3
  %30 = load %struct.rmi_2d_axis_alignment*, %struct.rmi_2d_axis_alignment** %7, align 8
  %31 = getelementptr inbounds %struct.rmi_2d_axis_alignment, %struct.rmi_2d_axis_alignment* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @RMI_2D_REL_POS_MAX, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @min(i32 %35, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.rmi_2d_axis_alignment*, %struct.rmi_2d_axis_alignment** %7, align 8
  %41 = getelementptr inbounds %struct.rmi_2d_axis_alignment, %struct.rmi_2d_axis_alignment* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @swap(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51, %48
  %55 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %4, align 8
  %56 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @REL_X, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @input_report_rel(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.rmi_2d_sensor*, %struct.rmi_2d_sensor** %4, align 8
  %62 = getelementptr inbounds %struct.rmi_2d_sensor, %struct.rmi_2d_sensor* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @REL_Y, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @input_report_rel(i32 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %54, %51
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @input_report_rel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
