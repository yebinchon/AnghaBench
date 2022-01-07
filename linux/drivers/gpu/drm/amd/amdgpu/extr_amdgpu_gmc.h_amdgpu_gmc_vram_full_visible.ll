; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gmc.h_amdgpu_gmc_vram_full_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gmc.h_amdgpu_gmc_vram_full_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_gmc = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_gmc*)* @amdgpu_gmc_vram_full_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_gmc_vram_full_visible(%struct.amdgpu_gmc* %0) #0 {
  %2 = alloca %struct.amdgpu_gmc*, align 8
  store %struct.amdgpu_gmc* %0, %struct.amdgpu_gmc** %2, align 8
  %3 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %5, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.amdgpu_gmc*, %struct.amdgpu_gmc** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_gmc, %struct.amdgpu_gmc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
