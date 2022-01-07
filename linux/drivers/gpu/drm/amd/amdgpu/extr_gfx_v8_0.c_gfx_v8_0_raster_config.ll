; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_raster_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_raster_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"unknown asic: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32*, i32*)* @gfx_v8_0_raster_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_raster_config(%struct.amdgpu_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %87 [
    i32 135, label %10
    i32 128, label %10
    i32 130, label %39
    i32 134, label %39
    i32 129, label %60
    i32 136, label %60
    i32 133, label %67
    i32 132, label %67
    i32 131, label %82
  ]

10:                                               ; preds = %3, %3
  %11 = call i32 @RB_MAP_PKR0(i32 2)
  %12 = call i32 @RB_MAP_PKR1(i32 2)
  %13 = or i32 %11, %12
  %14 = call i32 @RB_XSEL2(i32 1)
  %15 = or i32 %13, %14
  %16 = call i32 @PKR_MAP(i32 2)
  %17 = or i32 %15, %16
  %18 = call i32 @PKR_XSEL(i32 1)
  %19 = or i32 %17, %18
  %20 = call i32 @PKR_YSEL(i32 1)
  %21 = or i32 %19, %20
  %22 = call i32 @SE_MAP(i32 2)
  %23 = or i32 %21, %22
  %24 = call i32 @SE_XSEL(i32 2)
  %25 = or i32 %23, %24
  %26 = call i32 @SE_YSEL(i32 3)
  %27 = or i32 %25, %26
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = call i32 @SE_PAIR_MAP(i32 2)
  %32 = call i32 @SE_PAIR_XSEL(i32 3)
  %33 = or i32 %31, %32
  %34 = call i32 @SE_PAIR_YSEL(i32 2)
  %35 = or i32 %33, %34
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  br label %92

39:                                               ; preds = %3, %3
  %40 = call i32 @RB_MAP_PKR0(i32 2)
  %41 = call i32 @RB_XSEL2(i32 1)
  %42 = or i32 %40, %41
  %43 = call i32 @SE_MAP(i32 2)
  %44 = or i32 %42, %43
  %45 = call i32 @SE_XSEL(i32 1)
  %46 = or i32 %44, %45
  %47 = call i32 @SE_YSEL(i32 1)
  %48 = or i32 %46, %47
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = call i32 @SE_PAIR_MAP(i32 2)
  %53 = call i32 @SE_PAIR_XSEL(i32 2)
  %54 = or i32 %52, %53
  %55 = call i32 @SE_PAIR_YSEL(i32 2)
  %56 = or i32 %54, %55
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %92

60:                                               ; preds = %3, %3
  %61 = call i32 @RB_MAP_PKR0(i32 2)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %65, align 4
  br label %92

67:                                               ; preds = %3, %3
  %68 = call i32 @RB_MAP_PKR0(i32 2)
  %69 = call i32 @RB_XSEL2(i32 1)
  %70 = or i32 %68, %69
  %71 = call i32 @SE_MAP(i32 2)
  %72 = or i32 %70, %71
  %73 = call i32 @SE_XSEL(i32 1)
  %74 = or i32 %72, %73
  %75 = call i32 @SE_YSEL(i32 1)
  %76 = or i32 %74, %75
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %80, align 4
  br label %92

82:                                               ; preds = %3
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %85, align 4
  br label %92

87:                                               ; preds = %3
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %82, %67, %60, %39, %10
  ret void
}

declare dso_local i32 @RB_MAP_PKR0(i32) #1

declare dso_local i32 @RB_MAP_PKR1(i32) #1

declare dso_local i32 @RB_XSEL2(i32) #1

declare dso_local i32 @PKR_MAP(i32) #1

declare dso_local i32 @PKR_XSEL(i32) #1

declare dso_local i32 @PKR_YSEL(i32) #1

declare dso_local i32 @SE_MAP(i32) #1

declare dso_local i32 @SE_XSEL(i32) #1

declare dso_local i32 @SE_YSEL(i32) #1

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
