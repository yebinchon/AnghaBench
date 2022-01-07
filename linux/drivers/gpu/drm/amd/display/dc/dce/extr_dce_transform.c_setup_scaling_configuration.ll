; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_setup_scaling_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_setup_scaling_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.scaler_data = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SCL_BYPASS_CONTROL = common dso_local global i32 0, align 4
@SCL_BYPASS_MODE = common dso_local global i32 0, align 4
@SCL_MODE = common dso_local global i32 0, align 4
@SCL_PSCL_EN = common dso_local global i32 0, align 4
@SCL_TAP_CONTROL = common dso_local global i32 0, align 4
@SCL_H_NUM_OF_TAPS = common dso_local global i32 0, align 4
@SCL_V_NUM_OF_TAPS = common dso_local global i32 0, align 4
@PIXEL_FORMAT_GRPH_END = common dso_local global i64 0, align 8
@SCL_CONTROL = common dso_local global i32 0, align 4
@SCL_BOUNDARY_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_transform*, %struct.scaler_data*)* @setup_scaling_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_scaling_configuration(%struct.dce_transform* %0, %struct.scaler_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dce_transform*, align 8
  %5 = alloca %struct.scaler_data*, align 8
  store %struct.dce_transform* %0, %struct.dce_transform** %4, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %5, align 8
  %6 = load i32, i32* @SCL_BYPASS_CONTROL, align 4
  %7 = load i32, i32* @SCL_BYPASS_MODE, align 4
  %8 = call i32 @REG_SET(i32 %6, i32 0, i32 %7, i32 0)
  %9 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %10 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %14 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %12, %16
  %18 = icmp sle i32 %17, 2
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load %struct.dce_transform*, %struct.dce_transform** %4, align 8
  %21 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @SCL_MODE, align 4
  %28 = load i32, i32* @SCL_MODE, align 4
  %29 = load i32, i32* @SCL_PSCL_EN, align 4
  %30 = call i32 @REG_UPDATE_2(i32 %27, i32 %28, i32 0, i32 %29, i32 0)
  br label %35

31:                                               ; preds = %19
  %32 = load i32, i32* @SCL_MODE, align 4
  %33 = load i32, i32* @SCL_MODE, align 4
  %34 = call i32 @REG_UPDATE(i32 %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %31, %26
  store i32 0, i32* %3, align 4
  br label %79

36:                                               ; preds = %2
  %37 = load i32, i32* @SCL_TAP_CONTROL, align 4
  %38 = load i32, i32* @SCL_H_NUM_OF_TAPS, align 4
  %39 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %40 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* @SCL_V_NUM_OF_TAPS, align 4
  %45 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %46 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @REG_SET_2(i32 %37, i32 0, i32 %38, i32 %43, i32 %44, i32 %49)
  %51 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %52 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PIXEL_FORMAT_GRPH_END, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %36
  %57 = load i32, i32* @SCL_MODE, align 4
  %58 = load i32, i32* @SCL_MODE, align 4
  %59 = call i32 @REG_UPDATE(i32 %57, i32 %58, i32 1)
  br label %64

60:                                               ; preds = %36
  %61 = load i32, i32* @SCL_MODE, align 4
  %62 = load i32, i32* @SCL_MODE, align 4
  %63 = call i32 @REG_UPDATE(i32 %61, i32 %62, i32 2)
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.dce_transform*, %struct.dce_transform** %4, align 8
  %66 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @SCL_MODE, align 4
  %73 = load i32, i32* @SCL_PSCL_EN, align 4
  %74 = call i32 @REG_UPDATE(i32 %72, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %71, %64
  %76 = load i32, i32* @SCL_CONTROL, align 4
  %77 = load i32, i32* @SCL_BOUNDARY_MODE, align 4
  %78 = call i32 @REG_SET(i32 %76, i32 0, i32 %77, i32 1)
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %35
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
