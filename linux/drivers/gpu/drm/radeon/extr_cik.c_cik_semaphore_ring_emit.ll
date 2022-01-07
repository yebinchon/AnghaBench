; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_semaphore_ring_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_semaphore_ring_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i64 }
%struct.radeon_semaphore = type { i32 }

@PACKET3_SEM_SEL_WAIT = common dso_local global i32 0, align 4
@PACKET3_SEM_SEL_SIGNAL = common dso_local global i32 0, align 4
@PACKET3_MEM_SEMAPHORE = common dso_local global i32 0, align 4
@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@PACKET3_PFP_SYNC_ME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cik_semaphore_ring_emit(%struct.radeon_device* %0, %struct.radeon_ring* %1, %struct.radeon_semaphore* %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca %struct.radeon_semaphore*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %6, align 8
  store %struct.radeon_semaphore* %2, %struct.radeon_semaphore** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.radeon_semaphore*, %struct.radeon_semaphore** %7, align 8
  %12 = getelementptr inbounds %struct.radeon_semaphore, %struct.radeon_semaphore* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @PACKET3_SEM_SEL_WAIT, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @PACKET3_SEM_SEL_SIGNAL, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %10, align 4
  %22 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %23 = load i32, i32* @PACKET3_MEM_SEMAPHORE, align 4
  %24 = call i32 @PACKET3(i32 %23, i32 1)
  %25 = call i32 @radeon_ring_write(%struct.radeon_ring* %22, i32 %24)
  %26 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @lower_32_bits(i32 %27)
  %29 = call i32 @radeon_ring_write(%struct.radeon_ring* %26, i32 %28)
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @upper_32_bits(i32 %31)
  %33 = and i32 %32, 65535
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @radeon_ring_write(%struct.radeon_ring* %30, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %20
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %41 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %47 = load i32, i32* @PACKET3_PFP_SYNC_ME, align 4
  %48 = call i32 @PACKET3(i32 %47, i32 0)
  %49 = call i32 @radeon_ring_write(%struct.radeon_ring* %46, i32 %48)
  %50 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %51 = call i32 @radeon_ring_write(%struct.radeon_ring* %50, i32 0)
  br label %52

52:                                               ; preds = %45, %39, %20
  ret i32 1
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
