; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_gfx_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_gfx_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"gfx_%d.%d.%d\00", align 1
@AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i32, i32, i32)* @gfx_v10_0_gfx_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_gfx_ring_init(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.amdgpu_ring*, align 8
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i64 %20
  store %struct.amdgpu_ring* %21, %struct.amdgpu_ring** %13, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %13, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %13, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %13, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %13, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %13, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %33, i32 0, i32 3
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %5
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 %41, 1
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %13, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  br label %53

45:                                               ; preds = %5
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 1
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %13, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %45, %37
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %13, align 8
  %55 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %13, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %13, align 8
  %61 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %13, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @sprintf(i32 %56, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i32 %65)
  %67 = load i32, i32* @AMDGPU_CP_IRQ_GFX_ME0_PIPE0_EOP, align 4
  %68 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %13, align 8
  %69 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %67, %70
  store i32 %71, i32* %14, align 4
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %73 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %13, align 8
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @amdgpu_ring_init(%struct.amdgpu_device* %72, %struct.amdgpu_ring* %73, i32 1024, i32* %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %53
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %6, align 4
  br label %84

83:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %81
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_init(%struct.amdgpu_device*, %struct.amdgpu_ring*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
