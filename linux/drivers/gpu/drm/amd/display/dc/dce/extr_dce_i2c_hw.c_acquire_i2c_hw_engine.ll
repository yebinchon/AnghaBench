; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_acquire_i2c_hw_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_acquire_i2c_hw_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_hw = type { i32, %struct.ddc* }
%struct.resource_pool = type { i32, %struct.dce_i2c_hw**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ddc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@GPIO_MODE_HARDWARE = common dso_local global i32 0, align 4
@GPIO_DDC_CONFIG_TYPE_MODE_I2C = common dso_local global i32 0, align 4
@GPIO_RESULT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dce_i2c_hw* @acquire_i2c_hw_engine(%struct.resource_pool* %0, %struct.ddc* %1) #0 {
  %3 = alloca %struct.dce_i2c_hw*, align 8
  %4 = alloca %struct.resource_pool*, align 8
  %5 = alloca %struct.ddc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dce_i2c_hw*, align 8
  %10 = alloca i32, align 4
  store %struct.resource_pool* %0, %struct.resource_pool** %4, align 8
  store %struct.ddc* %1, %struct.ddc** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.dce_i2c_hw* null, %struct.dce_i2c_hw** %9, align 8
  %11 = load %struct.ddc*, %struct.ddc** %5, align 8
  %12 = icmp ne %struct.ddc* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.dce_i2c_hw* null, %struct.dce_i2c_hw** %3, align 8
  br label %98

14:                                               ; preds = %2
  %15 = load %struct.ddc*, %struct.ddc** %5, align 8
  %16 = getelementptr inbounds %struct.ddc, %struct.ddc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = load %struct.ddc*, %struct.ddc** %5, align 8
  %22 = call i32 @dal_ddc_get_line(%struct.ddc* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.resource_pool*, %struct.resource_pool** %4, align 8
  %25 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %23, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load %struct.resource_pool*, %struct.resource_pool** %4, align 8
  %32 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %31, i32 0, i32 1
  %33 = load %struct.dce_i2c_hw**, %struct.dce_i2c_hw*** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %33, i64 %35
  %37 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %36, align 8
  store %struct.dce_i2c_hw* %37, %struct.dce_i2c_hw** %9, align 8
  br label %38

38:                                               ; preds = %30, %20
  br label %39

39:                                               ; preds = %38, %14
  %40 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %9, align 8
  %41 = icmp ne %struct.dce_i2c_hw* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store %struct.dce_i2c_hw* null, %struct.dce_i2c_hw** %3, align 8
  br label %98

43:                                               ; preds = %39
  %44 = load %struct.resource_pool*, %struct.resource_pool** %4, align 8
  %45 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %9, align 8
  %50 = call i32 @is_engine_available(%struct.dce_i2c_hw* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48, %43
  store %struct.dce_i2c_hw* null, %struct.dce_i2c_hw** %3, align 8
  br label %98

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %67, %53
  %55 = load %struct.ddc*, %struct.ddc** %5, align 8
  %56 = load i32, i32* @GPIO_MODE_HARDWARE, align 4
  %57 = load i32, i32* @GPIO_DDC_CONFIG_TYPE_MODE_I2C, align 4
  %58 = call i32 @dal_ddc_open(%struct.ddc* %55, i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @GPIO_RESULT_OK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %70

63:                                               ; preds = %54
  %64 = call i32 @udelay(i32 10)
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 2
  br i1 %69, label %54, label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @GPIO_RESULT_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store %struct.dce_i2c_hw* null, %struct.dce_i2c_hw** %3, align 8
  br label %98

75:                                               ; preds = %70
  %76 = load %struct.ddc*, %struct.ddc** %5, align 8
  %77 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %9, align 8
  %78 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %77, i32 0, i32 1
  store %struct.ddc* %76, %struct.ddc** %78, align 8
  %79 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %9, align 8
  %80 = call i32 @get_speed(%struct.dce_i2c_hw* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %9, align 8
  %86 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %75
  %88 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %9, align 8
  %89 = call i32 @setup_engine(%struct.dce_i2c_hw* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %9, align 8
  %93 = call i32 @release_engine(%struct.dce_i2c_hw* %92)
  store %struct.dce_i2c_hw* null, %struct.dce_i2c_hw** %3, align 8
  br label %98

94:                                               ; preds = %87
  %95 = load %struct.resource_pool*, %struct.resource_pool** %4, align 8
  %96 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %9, align 8
  store %struct.dce_i2c_hw* %97, %struct.dce_i2c_hw** %3, align 8
  br label %98

98:                                               ; preds = %94, %91, %74, %52, %42, %13
  %99 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %3, align 8
  ret %struct.dce_i2c_hw* %99
}

declare dso_local i32 @dal_ddc_get_line(%struct.ddc*) #1

declare dso_local i32 @is_engine_available(%struct.dce_i2c_hw*) #1

declare dso_local i32 @dal_ddc_open(%struct.ddc*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @get_speed(%struct.dce_i2c_hw*) #1

declare dso_local i32 @setup_engine(%struct.dce_i2c_hw*) #1

declare dso_local i32 @release_engine(%struct.dce_i2c_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
