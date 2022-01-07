; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_i2c.c_amdgpu_atombios_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_i2c.c_amdgpu_atombios_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }
%struct.amdgpu_i2c_chan = type { i32 }

@HW_I2C_WRITE = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@ATOM_MAX_HW_I2C_READ = common dso_local global i32 0, align 4
@HW_I2C_READ = common dso_local global i32 0, align 4
@ATOM_MAX_HW_I2C_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_atombios_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_i2c_chan*, align 8
  %9 = alloca %struct.i2c_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %18 = call %struct.amdgpu_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter* %17)
  store %struct.amdgpu_i2c_chan* %18, %struct.amdgpu_i2c_chan** %8, align 8
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 0
  store %struct.i2c_msg* %20, %struct.i2c_msg** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %41

23:                                               ; preds = %3
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @HW_I2C_WRITE, align 4
  %34 = call i32 @amdgpu_atombios_i2c_process_i2c_ch(%struct.amdgpu_i2c_chan* %29, i32 %32, i32 %33, i32* null, i32 0)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %4, align 4
  br label %109

39:                                               ; preds = %28
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %4, align 4
  br label %109

41:                                               ; preds = %23, %3
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %104, %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %107

46:                                               ; preds = %42
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i64 %49
  store %struct.i2c_msg* %50, %struct.i2c_msg** %9, align 8
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @I2C_M_RD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load i32, i32* @ATOM_MAX_HW_I2C_READ, align 4
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* @HW_I2C_READ, align 4
  store i32 %62, i32* %16, align 4
  br label %66

63:                                               ; preds = %46
  %64 = load i32, i32* @ATOM_MAX_HW_I2C_WRITE, align 4
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* @HW_I2C_WRITE, align 4
  store i32 %65, i32* %16, align 4
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %96, %66
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %103

70:                                               ; preds = %67
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %12, align 4
  br label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = load %struct.amdgpu_i2c_chan*, %struct.amdgpu_i2c_chan** %8, align 8
  %80 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @amdgpu_atombios_i2c_process_i2c_ch(%struct.amdgpu_i2c_chan* %79, i32 %82, i32 %83, i32* %89, i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %78
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %4, align 4
  br label %109

96:                                               ; preds = %78
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %13, align 4
  br label %67

103:                                              ; preds = %67
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %42

107:                                              ; preds = %42
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %94, %39, %37
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.amdgpu_i2c_chan* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @amdgpu_atombios_i2c_process_i2c_ch(%struct.amdgpu_i2c_chan*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
