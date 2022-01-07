; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_navi10_ih.c_navi10_ih_set_rptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_navi10_ih.c_navi10_ih_set_rptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ih_ring = type { i32, i32, i32*, i64 }

@OSSSYS = common dso_local global i32 0, align 4
@mmIH_RB_RPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ih_ring*)* @navi10_ih_set_rptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @navi10_ih_set_rptr(%struct.amdgpu_device* %0, %struct.amdgpu_ih_ring* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ih_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ih_ring* %1, %struct.amdgpu_ih_ring** %4, align 8
  %5 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32 %12, i32* %15, align 4
  %16 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @WDOORBELL32(i32 %18, i32 %21)
  br label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @OSSSYS, align 4
  %25 = load i32, i32* @mmIH_RB_RPTR, align 4
  %26 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %4, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @WREG32_SOC15(i32 %24, i32 0, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %23, %9
  ret void
}

declare dso_local i32 @WDOORBELL32(i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
