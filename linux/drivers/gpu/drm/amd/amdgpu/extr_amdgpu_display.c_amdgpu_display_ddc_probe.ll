; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_display.c_amdgpu_display_ddc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_display.c_amdgpu_display_ddc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_connector = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@DDC_ADDR = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_display_ddc_probe(%struct.amdgpu_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.amdgpu_connector* %0, %struct.amdgpu_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  store i32* %6, i32** %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  %15 = load i32, i32* @DDC_ADDR, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i64 1
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  store i32 8, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 1
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  store i32* %19, i32** %18, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 2
  %21 = load i32, i32* @I2C_M_RD, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 3
  %23 = load i32, i32* @DDC_ADDR, align 4
  store i32 %23, i32* %22, align 4
  %24 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %4, align 8
  %25 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %4, align 8
  %31 = call i32 @amdgpu_i2c_router_select_ddc_port(%struct.amdgpu_connector* %30)
  br label %32

32:                                               ; preds = %29, %2
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %4, align 8
  %37 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %42 = call i32 @i2c_transfer(i32* %40, %struct.i2c_msg* %41, i32 2)
  store i32 %42, i32* %8, align 4
  br label %50

43:                                               ; preds = %32
  %44 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %4, align 8
  %45 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %49 = call i32 @i2c_transfer(i32* %47, %struct.i2c_msg* %48, i32 2)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %43, %35
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %60

54:                                               ; preds = %50
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %56 = call i32 @drm_edid_header_is_valid(i32* %55)
  %57 = icmp slt i32 %56, 6
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %60

59:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %58, %53
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @amdgpu_i2c_router_select_ddc_port(%struct.amdgpu_connector*) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @drm_edid_header_is_valid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
