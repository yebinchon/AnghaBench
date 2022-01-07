; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_eop_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_eop_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.amdgpu_ring*, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32 }
%struct.amdgpu_irq_src = type { i32 }
%struct.amdgpu_iv_entry = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"IH: CP EOP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, %struct.amdgpu_iv_entry*)* @gfx_v10_0_eop_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_eop_irq(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, %struct.amdgpu_iv_entry* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_irq_src*, align 8
  %6 = alloca %struct.amdgpu_iv_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %5, align 8
  store %struct.amdgpu_iv_entry* %2, %struct.amdgpu_iv_entry** %6, align 8
  %12 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %14 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 12
  %17 = ashr i32 %16, 2
  store i32 %17, i32* %8, align 4
  %18 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %19 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 3
  %22 = ashr i32 %21, 0
  store i32 %22, i32* %9, align 4
  %23 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %6, align 8
  %24 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 112
  %27 = ashr i32 %26, 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %88 [
    i32 0, label %29
    i32 1, label %47
    i32 2, label %47
  ]

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %35, align 8
  %37 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %36, i64 0
  %38 = call i32 @amdgpu_fence_process(%struct.amdgpu_ring* %37)
  br label %46

39:                                               ; preds = %29
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %42, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %43, i64 1
  %45 = call i32 @amdgpu_fence_process(%struct.amdgpu_ring* %44)
  br label %46

46:                                               ; preds = %39, %32
  br label %88

47:                                               ; preds = %3, %3
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %84, %47
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %48
  %56 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %57 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %59, i64 %61
  store %struct.amdgpu_ring* %62, %struct.amdgpu_ring** %11, align 8
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %55
  %69 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %70 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %76 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %11, align 8
  %82 = call i32 @amdgpu_fence_process(%struct.amdgpu_ring* %81)
  br label %83

83:                                               ; preds = %80, %74, %68, %55
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %48

87:                                               ; preds = %48
  br label %88

88:                                               ; preds = %3, %87, %46
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @amdgpu_fence_process(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
