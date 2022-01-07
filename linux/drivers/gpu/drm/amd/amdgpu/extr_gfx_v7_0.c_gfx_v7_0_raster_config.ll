; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_raster_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_raster_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"unknown asic: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32*, i32*)* @gfx_v7_0_raster_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_raster_config(%struct.amdgpu_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %66 [
    i32 132, label %10
    i32 131, label %25
    i32 129, label %54
    i32 130, label %61
    i32 128, label %61
  ]

10:                                               ; preds = %3
  %11 = call i32 @RB_MAP_PKR0(i32 2)
  %12 = call i32 @RB_XSEL2(i32 1)
  %13 = or i32 %11, %12
  %14 = call i32 @SE_MAP(i32 2)
  %15 = or i32 %13, %14
  %16 = call i32 @SE_XSEL(i32 1)
  %17 = or i32 %15, %16
  %18 = call i32 @SE_YSEL(i32 1)
  %19 = or i32 %17, %18
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %23, align 4
  br label %71

25:                                               ; preds = %3
  %26 = call i32 @RB_MAP_PKR0(i32 2)
  %27 = call i32 @RB_MAP_PKR1(i32 2)
  %28 = or i32 %26, %27
  %29 = call i32 @RB_XSEL2(i32 1)
  %30 = or i32 %28, %29
  %31 = call i32 @PKR_MAP(i32 2)
  %32 = or i32 %30, %31
  %33 = call i32 @PKR_XSEL(i32 1)
  %34 = or i32 %32, %33
  %35 = call i32 @PKR_YSEL(i32 1)
  %36 = or i32 %34, %35
  %37 = call i32 @SE_MAP(i32 2)
  %38 = or i32 %36, %37
  %39 = call i32 @SE_XSEL(i32 2)
  %40 = or i32 %38, %39
  %41 = call i32 @SE_YSEL(i32 3)
  %42 = or i32 %40, %41
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = call i32 @SE_PAIR_MAP(i32 2)
  %47 = call i32 @SE_PAIR_XSEL(i32 3)
  %48 = or i32 %46, %47
  %49 = call i32 @SE_PAIR_YSEL(i32 2)
  %50 = or i32 %48, %49
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %71

54:                                               ; preds = %3
  %55 = call i32 @RB_MAP_PKR0(i32 2)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %59, align 4
  br label %71

61:                                               ; preds = %3, %3
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %62, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %64, align 4
  br label %71

66:                                               ; preds = %3
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %66, %61, %54, %25, %10
  ret void
}

declare dso_local i32 @RB_MAP_PKR0(i32) #1

declare dso_local i32 @RB_XSEL2(i32) #1

declare dso_local i32 @SE_MAP(i32) #1

declare dso_local i32 @SE_XSEL(i32) #1

declare dso_local i32 @SE_YSEL(i32) #1

declare dso_local i32 @RB_MAP_PKR1(i32) #1

declare dso_local i32 @PKR_MAP(i32) #1

declare dso_local i32 @PKR_XSEL(i32) #1

declare dso_local i32 @PKR_YSEL(i32) #1

declare dso_local i32 @SE_PAIR_MAP(i32) #1

declare dso_local i32 @SE_PAIR_XSEL(i32) #1

declare dso_local i32 @SE_PAIR_YSEL(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
