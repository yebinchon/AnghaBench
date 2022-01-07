; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gmc.c_amdgpu_gmc_vram_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gmc.c_amdgpu_gmc_vram_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_gmc = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@amdgpu_vram_limit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"VRAM: %lluM 0x%016llX - 0x%016llX (%lluM used)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_gmc_vram_location(%struct.amdgpu_device* %0, %struct.amdgpu_gmc* %1, i64 %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_gmc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_gmc* %1, %struct.amdgpu_gmc** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* @amdgpu_vram_limit, align 8
  %9 = trunc i64 %8 to i32
  %10 = shl i32 %9, 20
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %12, i32 0, i32 3
  store i64 %11, i64* %13, align 8
  %14 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %16, %20
  %22 = sub nsw i64 %21, 1
  %23 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %24 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %30 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %36 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %27, %3
  %38 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %39 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %45 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %48 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %47, i32 0, i32 5
  store i64 %46, i64* %48, align 8
  %49 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %50 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %53 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %43, %37
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %59 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %60, 20
  %62 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %63 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %66 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %5, align 8
  %69 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 20
  %72 = call i32 @dev_info(i32 %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %64, i64 %67, i32 %71)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
