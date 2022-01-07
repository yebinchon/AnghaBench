; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_kcq_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_kcq_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v8_0_kcq_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_kcq_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store %struct.amdgpu_ring* null, %struct.amdgpu_ring** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = call i32 @gfx_v8_0_cp_compute_enable(%struct.amdgpu_device* %6, i32 1)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %60, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %19, i64 %21
  store %struct.amdgpu_ring* %22, %struct.amdgpu_ring** %3, align 8
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @amdgpu_bo_reserve(i32 %25, i32 0)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  br label %72

33:                                               ; preds = %15
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %37, i32 0, i32 1
  %39 = call i32 @amdgpu_bo_kmap(i32 %36, i32** %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %44 = call i32 @gfx_v8_0_kcq_init_queue(%struct.amdgpu_ring* %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @amdgpu_bo_kunmap(i32 %47)
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %50 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %42, %33
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %53 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @amdgpu_bo_unreserve(i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %72

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %8

63:                                               ; preds = %8
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %65 = call i32 @gfx_v8_0_set_mec_doorbell_range(%struct.amdgpu_device* %64)
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %67 = call i32 @gfx_v8_0_kiq_kcq_enable(%struct.amdgpu_device* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %72

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %70, %58, %32
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @gfx_v8_0_cp_compute_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_bo_reserve(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_bo_kmap(i32, i32**) #1

declare dso_local i32 @gfx_v8_0_kcq_init_queue(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_bo_kunmap(i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(i32) #1

declare dso_local i32 @gfx_v8_0_set_mec_doorbell_range(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_kiq_kcq_enable(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
