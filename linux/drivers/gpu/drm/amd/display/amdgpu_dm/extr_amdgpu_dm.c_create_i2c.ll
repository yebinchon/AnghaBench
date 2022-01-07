; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_create_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_create_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_i2c_adapter = type { %struct.ddc_service*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.ddc_service = type { %struct.TYPE_11__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@amdgpu_dm_i2c_algo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"AMDGPU DM i2c hw bus %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amdgpu_i2c_adapter* (%struct.ddc_service*, i32, i32*)* @create_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amdgpu_i2c_adapter* @create_i2c(%struct.ddc_service* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.amdgpu_i2c_adapter*, align 8
  %5 = alloca %struct.ddc_service*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_i2c_adapter*, align 8
  store %struct.ddc_service* %0, %struct.ddc_service** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.ddc_service*, %struct.ddc_service** %5, align 8
  %11 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %8, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.amdgpu_i2c_adapter* @kzalloc(i32 40, i32 %15)
  store %struct.amdgpu_i2c_adapter* %16, %struct.amdgpu_i2c_adapter** %9, align 8
  %17 = load %struct.amdgpu_i2c_adapter*, %struct.amdgpu_i2c_adapter** %9, align 8
  %18 = icmp ne %struct.amdgpu_i2c_adapter* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.amdgpu_i2c_adapter* null, %struct.amdgpu_i2c_adapter** %4, align 8
  br label %62

20:                                               ; preds = %3
  %21 = load i32, i32* @THIS_MODULE, align 4
  %22 = load %struct.amdgpu_i2c_adapter*, %struct.amdgpu_i2c_adapter** %9, align 8
  %23 = getelementptr inbounds %struct.amdgpu_i2c_adapter, %struct.amdgpu_i2c_adapter* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @I2C_CLASS_DDC, align 4
  %26 = load %struct.amdgpu_i2c_adapter*, %struct.amdgpu_i2c_adapter** %9, align 8
  %27 = getelementptr inbounds %struct.amdgpu_i2c_adapter, %struct.amdgpu_i2c_adapter* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.amdgpu_i2c_adapter*, %struct.amdgpu_i2c_adapter** %9, align 8
  %34 = getelementptr inbounds %struct.amdgpu_i2c_adapter, %struct.amdgpu_i2c_adapter* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i32* %32, i32** %36, align 8
  %37 = load %struct.amdgpu_i2c_adapter*, %struct.amdgpu_i2c_adapter** %9, align 8
  %38 = getelementptr inbounds %struct.amdgpu_i2c_adapter, %struct.amdgpu_i2c_adapter* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  store i32* @amdgpu_dm_i2c_algo, i32** %39, align 8
  %40 = load %struct.amdgpu_i2c_adapter*, %struct.amdgpu_i2c_adapter** %9, align 8
  %41 = getelementptr inbounds %struct.amdgpu_i2c_adapter, %struct.amdgpu_i2c_adapter* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @snprintf(i32 %43, i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.amdgpu_i2c_adapter*, %struct.amdgpu_i2c_adapter** %9, align 8
  %47 = getelementptr inbounds %struct.amdgpu_i2c_adapter, %struct.amdgpu_i2c_adapter* %46, i32 0, i32 1
  %48 = load %struct.amdgpu_i2c_adapter*, %struct.amdgpu_i2c_adapter** %9, align 8
  %49 = call i32 @i2c_set_adapdata(%struct.TYPE_12__* %47, %struct.amdgpu_i2c_adapter* %48)
  %50 = load %struct.ddc_service*, %struct.ddc_service** %5, align 8
  %51 = load %struct.amdgpu_i2c_adapter*, %struct.amdgpu_i2c_adapter** %9, align 8
  %52 = getelementptr inbounds %struct.amdgpu_i2c_adapter, %struct.amdgpu_i2c_adapter* %51, i32 0, i32 0
  store %struct.ddc_service* %50, %struct.ddc_service** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.amdgpu_i2c_adapter*, %struct.amdgpu_i2c_adapter** %9, align 8
  %55 = getelementptr inbounds %struct.amdgpu_i2c_adapter, %struct.amdgpu_i2c_adapter* %54, i32 0, i32 0
  %56 = load %struct.ddc_service*, %struct.ddc_service** %55, align 8
  %57 = getelementptr inbounds %struct.ddc_service, %struct.ddc_service* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 %53, i32* %60, align 4
  %61 = load %struct.amdgpu_i2c_adapter*, %struct.amdgpu_i2c_adapter** %9, align 8
  store %struct.amdgpu_i2c_adapter* %61, %struct.amdgpu_i2c_adapter** %4, align 8
  br label %62

62:                                               ; preds = %20, %19
  %63 = load %struct.amdgpu_i2c_adapter*, %struct.amdgpu_i2c_adapter** %4, align 8
  ret %struct.amdgpu_i2c_adapter* %63
}

declare dso_local %struct.amdgpu_i2c_adapter* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_12__*, %struct.amdgpu_i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
