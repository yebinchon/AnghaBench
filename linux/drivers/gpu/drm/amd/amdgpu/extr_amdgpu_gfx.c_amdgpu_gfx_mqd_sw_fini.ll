; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gfx.c_amdgpu_gfx_mqd_sw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gfx.c_amdgpu_gfx_mqd_sw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.amdgpu_ring*, %struct.amdgpu_ring* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32, i32, i32 }

@CHIP_NAVI10 = common dso_local global i64 0, align 8
@amdgpu_async_gfx_ring = common dso_local global i64 0, align 8
@AMDGPU_MAX_GFX_RINGS = common dso_local global i64 0, align 8
@AMDGPU_MAX_COMPUTE_RINGS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_gfx_mqd_sw_fini(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store %struct.amdgpu_ring* null, %struct.amdgpu_ring** %3, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CHIP_NAVI10, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %50

10:                                               ; preds = %1
  %11 = load i64, i64* @amdgpu_async_gfx_ring, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %46, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %14
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 6
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %25, i64 %27
  store %struct.amdgpu_ring* %28, %struct.amdgpu_ring** %3, align 8
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kfree(i32 %37)
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %39, i32 0, i32 2
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %41, i32 0, i32 1
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %43, i32 0, i32 0
  %45 = call i32 @amdgpu_bo_free_kernel(i32* %40, i32* %42, i32* %44)
  br label %46

46:                                               ; preds = %21
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %14

49:                                               ; preds = %14
  br label %50

50:                                               ; preds = %49, %10, %1
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %83, %50
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %51
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 5
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %62, i64 %64
  store %struct.amdgpu_ring* %65, %struct.amdgpu_ring** %3, align 8
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @kfree(i32 %74)
  %76 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %77 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %76, i32 0, i32 2
  %78 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %79 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %78, i32 0, i32 1
  %80 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %81 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %80, i32 0, i32 0
  %82 = call i32 @amdgpu_bo_free_kernel(i32* %77, i32* %79, i32* %81)
  br label %83

83:                                               ; preds = %58
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %51

86:                                               ; preds = %51
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store %struct.amdgpu_ring* %90, %struct.amdgpu_ring** %3, align 8
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @CHIP_NAVI10, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %86
  %97 = load i64, i64* @amdgpu_async_gfx_ring, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %101 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @AMDGPU_MAX_GFX_RINGS, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @kfree(i32 %107)
  br label %109

109:                                              ; preds = %99, %96, %86
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @AMDGPU_MAX_COMPUTE_RINGS, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @kfree(i32 %117)
  %119 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %120 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %119, i32 0, i32 2
  %121 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %122 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %121, i32 0, i32 1
  %123 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %124 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %123, i32 0, i32 0
  %125 = call i32 @amdgpu_bo_free_kernel(i32* %120, i32* %122, i32* %124)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @amdgpu_bo_free_kernel(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
