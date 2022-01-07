; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_df_v3_6.c_df_v3_6_pmc_get_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_df_v3_6.c_df_v3_6_pmc_get_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@DF_V3_6_PERFMON_OVERFLOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"config=%llx addr=%08x:%08x val=%08x:%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i64, i64*)* @df_v3_6_pmc_get_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_v3_6_pmc_get_count(%struct.amdgpu_device* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i64*, i64** %6, align 8
  store i64 0, i64* %11, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %48 [
    i32 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @df_v3_6_pmc_get_read_settings(%struct.amdgpu_device* %16, i64 %17, i64* %7, i64* %8)
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %15
  br label %49

25:                                               ; preds = %21
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @df_v3_6_perfmon_rreg(%struct.amdgpu_device* %26, i64 %27, i64* %9, i64 %28, i64* %10)
  %30 = load i64, i64* %10, align 8
  %31 = shl i64 %30, 32
  %32 = load i64, i64* %9, align 8
  %33 = or i64 %31, %32
  %34 = load i64*, i64** %6, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DF_V3_6_PERFMON_OVERFLOW, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i64*, i64** %6, align 8
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %39, %25
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %43, i64 %44, i64 %45, i64 %46)
  br label %49

48:                                               ; preds = %3
  br label %49

49:                                               ; preds = %24, %48, %41
  ret void
}

declare dso_local i32 @df_v3_6_pmc_get_read_settings(%struct.amdgpu_device*, i64, i64*, i64*) #1

declare dso_local i32 @df_v3_6_perfmon_rreg(%struct.amdgpu_device*, i64, i64*, i64, i64*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
