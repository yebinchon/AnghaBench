; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_dce_i2c_hw_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_dce_i2c_hw_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_hw = type { i32, i32, i32, i32, i64, i8*, i8*, i64, i64, %struct.dce_i2c_mask*, %struct.dce_i2c_shift*, %struct.dce_i2c_registers*, i32, %struct.dc_context* }
%struct.dc_context = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dce_i2c_registers = type { i32 }
%struct.dce_i2c_shift = type { i32 }
%struct.dce_i2c_mask = type { i32 }

@DEFAULT_I2C_HW_SPEED = common dso_local global i8* null, align 8
@I2C_SETUP_TIME_LIMIT_DCE = common dso_local global i32 0, align 4
@I2C_HW_BUFFER_SIZE_DCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_i2c_hw_construct(%struct.dce_i2c_hw* %0, %struct.dc_context* %1, i32 %2, %struct.dce_i2c_registers* %3, %struct.dce_i2c_shift* %4, %struct.dce_i2c_mask* %5) #0 {
  %7 = alloca %struct.dce_i2c_hw*, align 8
  %8 = alloca %struct.dc_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dce_i2c_registers*, align 8
  %11 = alloca %struct.dce_i2c_shift*, align 8
  %12 = alloca %struct.dce_i2c_mask*, align 8
  store %struct.dce_i2c_hw* %0, %struct.dce_i2c_hw** %7, align 8
  store %struct.dc_context* %1, %struct.dc_context** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dce_i2c_registers* %3, %struct.dce_i2c_registers** %10, align 8
  store %struct.dce_i2c_shift* %4, %struct.dce_i2c_shift** %11, align 8
  store %struct.dce_i2c_mask* %5, %struct.dce_i2c_mask** %12, align 8
  %13 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  %14 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %15 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %14, i32 0, i32 13
  store %struct.dc_context* %13, %struct.dc_context** %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %18 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %17, i32 0, i32 12
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dc_context*, %struct.dc_context** %8, align 8
  %20 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 1
  %27 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %28 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.dce_i2c_registers*, %struct.dce_i2c_registers** %10, align 8
  %30 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %31 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %30, i32 0, i32 11
  store %struct.dce_i2c_registers* %29, %struct.dce_i2c_registers** %31, align 8
  %32 = load %struct.dce_i2c_shift*, %struct.dce_i2c_shift** %11, align 8
  %33 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %34 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %33, i32 0, i32 10
  store %struct.dce_i2c_shift* %32, %struct.dce_i2c_shift** %34, align 8
  %35 = load %struct.dce_i2c_mask*, %struct.dce_i2c_mask** %12, align 8
  %36 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %37 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %36, i32 0, i32 9
  store %struct.dce_i2c_mask* %35, %struct.dce_i2c_mask** %37, align 8
  %38 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %39 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %38, i32 0, i32 8
  store i64 0, i64* %39, align 8
  %40 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %41 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %40, i32 0, i32 7
  store i64 0, i64* %41, align 8
  %42 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %43 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load i8*, i8** @DEFAULT_I2C_HW_SPEED, align 8
  %45 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %46 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @DEFAULT_I2C_HW_SPEED, align 8
  %48 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %49 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %51 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @I2C_SETUP_TIME_LIMIT_DCE, align 4
  %53 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %54 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @I2C_HW_BUFFER_SIZE_DCE, align 4
  %56 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %7, align 8
  %57 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
