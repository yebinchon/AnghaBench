; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_df_v3_6.c_df_v3_6_pmc_get_ctrl_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_df_v3_6.c_df_v3_6_pmc_get_ctrl_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"[DF PMC] addressing not retrieved! Lo: %x, Hi: %x\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"config=%llx addr=%08x:%08x val=%08x:%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i64*, i64*, i64*, i64*)* @df_v3_6_pmc_get_ctrl_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @df_v3_6_pmc_get_ctrl_settings(%struct.amdgpu_device* %0, i32 %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i64*, i64** %10, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = call i32 @df_v3_6_pmc_get_addr(%struct.amdgpu_device* %20, i32 %21, i32 1, i64* %22, i64* %23)
  %25 = load i64*, i64** %10, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %6
  %29 = load i64*, i64** %11, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %6
  %33 = load i64*, i64** %10, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %11, align 8
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %36)
  %38 = load i32, i32* @ENXIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %83

40:                                               ; preds = %28
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @DF_V3_6_GET_EVENT(i32 %41)
  %43 = and i32 %42, 63
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %14, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @DF_V3_6_GET_UNITMASK(i32 %45)
  %47 = and i32 %46, 15
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %16, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @DF_V3_6_GET_INSTANCE(i32 %49)
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %15, align 8
  %52 = and i64 %51, 3
  store i64 %52, i64* %17, align 8
  %53 = load i64, i64* %15, align 8
  %54 = ashr i64 %53, 2
  %55 = and i64 %54, 15
  store i64 %55, i64* %18, align 8
  %56 = load i64, i64* %15, align 8
  %57 = ashr i64 %56, 6
  %58 = and i64 %57, 3
  store i64 %58, i64* %19, align 8
  %59 = load i64, i64* %16, align 8
  %60 = shl i64 %59, 8
  %61 = load i64, i64* %17, align 8
  %62 = shl i64 %61, 6
  %63 = or i64 %60, %62
  %64 = load i64, i64* %14, align 8
  %65 = or i64 %63, %64
  %66 = or i64 %65, 4194304
  %67 = load i64*, i64** %12, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* %19, align 8
  %69 = shl i64 %68, 29
  %70 = load i64, i64* %18, align 8
  %71 = or i64 %69, %70
  %72 = load i64*, i64** %13, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i64*, i64** %10, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %11, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %12, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i64*, i64** %13, align 8
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %73, i64 %75, i64 %77, i64 %79, i64 %81)
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %40, %32
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @df_v3_6_pmc_get_addr(%struct.amdgpu_device*, i32, i32, i64*, i64*) #1

declare dso_local i32 @DRM_ERROR(i8*, i64, i64) #1

declare dso_local i32 @DF_V3_6_GET_EVENT(i32) #1

declare dso_local i32 @DF_V3_6_GET_UNITMASK(i32) #1

declare dso_local i64 @DF_V3_6_GET_INSTANCE(i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
