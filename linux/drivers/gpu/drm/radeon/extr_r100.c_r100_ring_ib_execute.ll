; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_ring_ib_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_ring_ib_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i64, i64 }
%struct.radeon_ib = type { i64, i64 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@RADEON_CP_IB_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r100_ring_ib_execute(%struct.radeon_device* %0, %struct.radeon_ib* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ib*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ib* %1, %struct.radeon_ib** %4, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %10 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %11 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %9, i64 %10
  store %struct.radeon_ring* %11, %struct.radeon_ring** %5, align 8
  %12 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %13 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %2
  %17 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %18 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 2
  %21 = add nsw i64 %20, 3
  store i64 %21, i64* %6, align 8
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @PACKET0(i64 %25, i32 0)
  %27 = call i32 @radeon_ring_write(%struct.radeon_ring* %22, i64 %26)
  %28 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @radeon_ring_write(%struct.radeon_ring* %28, i64 %29)
  br label %31

31:                                               ; preds = %16, %2
  %32 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %33 = load i64, i64* @RADEON_CP_IB_BASE, align 8
  %34 = call i64 @PACKET0(i64 %33, i32 1)
  %35 = call i32 @radeon_ring_write(%struct.radeon_ring* %32, i64 %34)
  %36 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %37 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %38 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @radeon_ring_write(%struct.radeon_ring* %36, i64 %39)
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %42 = load %struct.radeon_ib*, %struct.radeon_ib** %4, align 8
  %43 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @radeon_ring_write(%struct.radeon_ring* %41, i64 %44)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i64) #1

declare dso_local i64 @PACKET0(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
