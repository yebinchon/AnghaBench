; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_gfx_set_wptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_gfx_set_wptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i64, i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@CP_RB0_WPTR = common dso_local global i32 0, align 4
@CAYMAN_RING_TYPE_CP1_INDEX = common dso_local global i64 0, align 8
@CP_RB1_WPTR = common dso_local global i32 0, align 4
@CP_RB2_WPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_gfx_set_wptr(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %4, align 8
  %5 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %6 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* @CP_RB0_WPTR, align 4
  %12 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @WREG32(i32 %11, i32 %14)
  %16 = load i32, i32* @CP_RB0_WPTR, align 4
  %17 = call i32 @RREG32(i32 %16)
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CAYMAN_RING_TYPE_CP1_INDEX, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i32, i32* @CP_RB1_WPTR, align 4
  %26 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %27 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @WREG32(i32 %25, i32 %28)
  %30 = load i32, i32* @CP_RB1_WPTR, align 4
  %31 = call i32 @RREG32(i32 %30)
  br label %40

32:                                               ; preds = %18
  %33 = load i32, i32* @CP_RB2_WPTR, align 4
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %35 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @WREG32(i32 %33, i32 %36)
  %38 = load i32, i32* @CP_RB2_WPTR, align 4
  %39 = call i32 @RREG32(i32 %38)
  br label %40

40:                                               ; preds = %32, %24
  br label %41

41:                                               ; preds = %40, %10
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
