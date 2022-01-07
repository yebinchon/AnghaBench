; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_raster_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_raster_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@PA_SC_RASTER_CONFIG__RB_XSEL2__SHIFT = common dso_local global i32 0, align 4
@PA_SC_RASTER_CONFIG__RB_XSEL__SHIFT = common dso_local global i32 0, align 4
@PA_SC_RASTER_CONFIG__PKR_MAP__SHIFT = common dso_local global i32 0, align 4
@PA_SC_RASTER_CONFIG__PKR_YSEL__SHIFT = common dso_local global i32 0, align 4
@PA_SC_RASTER_CONFIG__SE_MAP__SHIFT = common dso_local global i32 0, align 4
@PA_SC_RASTER_CONFIG__SE_XSEL__SHIFT = common dso_local global i32 0, align 4
@PA_SC_RASTER_CONFIG__SE_YSEL__SHIFT = common dso_local global i32 0, align 4
@PA_SC_RASTER_CONFIG__RB_YSEL__SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown asic: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32*)* @gfx_v6_0_raster_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_raster_config(%struct.amdgpu_device* %0, i32* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %53 [
    i32 129, label %8
    i32 130, label %8
    i32 128, label %32
    i32 131, label %44
    i32 132, label %50
  ]

8:                                                ; preds = %2, %2
  %9 = load i32, i32* @PA_SC_RASTER_CONFIG__RB_XSEL2__SHIFT, align 4
  %10 = shl i32 2, %9
  %11 = load i32, i32* @PA_SC_RASTER_CONFIG__RB_XSEL__SHIFT, align 4
  %12 = shl i32 1, %11
  %13 = or i32 %10, %12
  %14 = load i32, i32* @PA_SC_RASTER_CONFIG__PKR_MAP__SHIFT, align 4
  %15 = shl i32 2, %14
  %16 = or i32 %13, %15
  %17 = load i32, i32* @PA_SC_RASTER_CONFIG__PKR_YSEL__SHIFT, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  %20 = load i32, i32* @PA_SC_RASTER_CONFIG__SE_MAP__SHIFT, align 4
  %21 = shl i32 2, %20
  %22 = or i32 %19, %21
  %23 = load i32, i32* @PA_SC_RASTER_CONFIG__SE_XSEL__SHIFT, align 4
  %24 = shl i32 2, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* @PA_SC_RASTER_CONFIG__SE_YSEL__SHIFT, align 4
  %27 = shl i32 2, %26
  %28 = or i32 %25, %27
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  br label %58

32:                                               ; preds = %2
  %33 = load i32, i32* @PA_SC_RASTER_CONFIG__RB_XSEL__SHIFT, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* @PA_SC_RASTER_CONFIG__PKR_MAP__SHIFT, align 4
  %36 = shl i32 2, %35
  %37 = or i32 %34, %36
  %38 = load i32, i32* @PA_SC_RASTER_CONFIG__PKR_YSEL__SHIFT, align 4
  %39 = shl i32 1, %38
  %40 = or i32 %37, %39
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %58

44:                                               ; preds = %2
  %45 = load i32, i32* @PA_SC_RASTER_CONFIG__RB_YSEL__SHIFT, align 4
  %46 = shl i32 1, %45
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %58

50:                                               ; preds = %2
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %51, align 4
  br label %58

53:                                               ; preds = %2
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %50, %44, %32, %8
  ret void
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
