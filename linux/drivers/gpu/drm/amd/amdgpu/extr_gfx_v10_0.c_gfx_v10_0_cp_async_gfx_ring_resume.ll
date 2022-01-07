; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_cp_async_gfx_ring_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_cp_async_gfx_ring_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v10_0_cp_async_gfx_ring_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_cp_async_gfx_ring_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %59, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %62

13:                                               ; preds = %6
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i64 %19
  store %struct.amdgpu_ring* %20, %struct.amdgpu_ring** %5, align 8
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @amdgpu_bo_reserve(i32 %23, i32 0)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  br label %97

31:                                               ; preds = %13
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %36 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %35, i32 0, i32 2
  %37 = bitcast i32** %36 to i8**
  %38 = call i32 @amdgpu_bo_kmap(i32 %34, i8** %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %31
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %43 = call i32 @gfx_v10_0_gfx_init_queue(%struct.amdgpu_ring* %42)
  store i32 %43, i32* %3, align 4
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %45 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @amdgpu_bo_kunmap(i32 %46)
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %49 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %41, %31
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @amdgpu_bo_unreserve(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %97

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %6

62:                                               ; preds = %6
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %64 = call i32 @gfx_v10_0_kiq_enable_kgq(%struct.amdgpu_device* %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %97

68:                                               ; preds = %62
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %70 = call i32 @gfx_v10_0_cp_gfx_start(%struct.amdgpu_device* %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %97

74:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %93, %74
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %75
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %86, i64 %88
  store %struct.amdgpu_ring* %89, %struct.amdgpu_ring** %5, align 8
  %90 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %91 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %75

96:                                               ; preds = %75
  br label %97

97:                                               ; preds = %96, %73, %67, %57, %30
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @amdgpu_bo_reserve(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_bo_kmap(i32, i8**) #1

declare dso_local i32 @gfx_v10_0_gfx_init_queue(%struct.amdgpu_ring*) #1

declare dso_local i32 @amdgpu_bo_kunmap(i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(i32) #1

declare dso_local i32 @gfx_v10_0_kiq_enable_kgq(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_cp_gfx_start(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
