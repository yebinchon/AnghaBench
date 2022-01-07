; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_patch_cond_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_patch_cond_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32)* @sdma_v5_0_ring_patch_cond_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v5_0_ring_patch_cond_exec(%struct.amdgpu_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ugt i32 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 1437226410
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sub i32 %35, %36
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %59

44:                                               ; preds = %2
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add i32 %47, 1
  %49 = load i32, i32* %4, align 4
  %50 = sub i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %50, %51
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %44, %34
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
