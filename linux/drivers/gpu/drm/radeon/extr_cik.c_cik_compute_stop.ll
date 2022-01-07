; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_compute_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_compute_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.radeon_ring = type { i32, i32, i32 }

@CP_PQ_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@WPTR_POLL_EN = common dso_local global i64 0, align 8
@CP_HQD_ACTIVE = common dso_local global i32 0, align 4
@CP_HQD_DEQUEUE_REQUEST = common dso_local global i32 0, align 4
@CP_HQD_PQ_RPTR = common dso_local global i32 0, align 4
@CP_HQD_PQ_WPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ring*)* @cik_compute_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_compute_stop(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %15 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cik_srbm_select(%struct.radeon_device* %7, i32 %10, i32 %13, i32 %16, i32 0)
  %18 = load i32, i32* @CP_PQ_WPTR_POLL_CNTL, align 4
  %19 = call i32 @RREG32(i32 %18)
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* @WPTR_POLL_EN, align 8
  %22 = xor i64 %21, -1
  %23 = load i64, i64* %6, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @CP_PQ_WPTR_POLL_CNTL, align 4
  %26 = load i64, i64* %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @WREG32(i32 %25, i32 %27)
  %29 = load i32, i32* @CP_HQD_ACTIVE, align 4
  %30 = call i32 @RREG32(i32 %29)
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %2
  %34 = load i32, i32* @CP_HQD_DEQUEUE_REQUEST, align 4
  %35 = call i32 @WREG32(i32 %34, i32 1)
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %50, %33
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load i32, i32* @CP_HQD_ACTIVE, align 4
  %44 = call i32 @RREG32(i32 %43)
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %53

48:                                               ; preds = %42
  %49 = call i32 @udelay(i32 1)
  br label %50

50:                                               ; preds = %48
  %51 = load i64, i64* %5, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %36

53:                                               ; preds = %47, %36
  %54 = load i32, i32* @CP_HQD_DEQUEUE_REQUEST, align 4
  %55 = call i32 @WREG32(i32 %54, i32 0)
  %56 = load i32, i32* @CP_HQD_PQ_RPTR, align 4
  %57 = call i32 @WREG32(i32 %56, i32 0)
  %58 = load i32, i32* @CP_HQD_PQ_WPTR, align 4
  %59 = call i32 @WREG32(i32 %58, i32 0)
  br label %60

60:                                               ; preds = %53, %2
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = call i32 @cik_srbm_select(%struct.radeon_device* %61, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @cik_srbm_select(%struct.radeon_device*, i32, i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
