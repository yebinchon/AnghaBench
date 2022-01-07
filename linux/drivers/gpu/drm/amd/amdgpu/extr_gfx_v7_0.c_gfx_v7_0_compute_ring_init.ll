; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_compute_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_compute_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.amdgpu_ring* }
%struct.TYPE_5__ = type { i32 }
%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, i64, i32* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"comp_%d.%d.%d\00", align 1
@AMDGPU_CP_IRQ_COMPUTE_MEC1_PIPE0_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i32, i32, i32)* @gfx_v7_0_compute_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v7_0_compute_ring_init(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i64 %20
  store %struct.amdgpu_ring* %21, %struct.amdgpu_ring** %14, align 8
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %32, i32 0, i32 6
  store i32* null, i32** %33, align 8
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %34, i32 0, i32 3
  store i32 1, i32* %35, align 4
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %43, i32 0, i32 5
  store i64 %42, i64* %44, align 8
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %49 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sprintf(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53, i32 %56)
  %58 = load i32, i32* @AMDGPU_CP_IRQ_COMPUTE_MEC1_PIPE0_EOP, align 4
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %60 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %62, %67
  %69 = add nsw i32 %58, %68
  %70 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %71 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  store i32 %73, i32* %13, align 4
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %74, %struct.amdgpu_ring* %75, i32 1024, i32* %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %5
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %6, align 4
  br label %86

85:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %83
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
