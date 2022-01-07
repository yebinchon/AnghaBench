; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_ring_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_ring_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

@RADEON_ISYNC_CNTL = common dso_local global i32 0, align 4
@RADEON_ISYNC_ANY2D_IDLE3D = common dso_local global i32 0, align 4
@RADEON_ISYNC_ANY3D_IDLE2D = common dso_local global i32 0, align 4
@RADEON_ISYNC_WAIT_IDLEGUI = common dso_local global i32 0, align 4
@RADEON_ISYNC_CPSCRATCH_IDLEGUI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r100_ring_start(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %4, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %8 = call i32 @radeon_ring_lock(%struct.radeon_device* %6, %struct.radeon_ring* %7, i32 2)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %29

12:                                               ; preds = %2
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %14 = load i32, i32* @RADEON_ISYNC_CNTL, align 4
  %15 = call i32 @PACKET0(i32 %14, i32 0)
  %16 = call i32 @radeon_ring_write(%struct.radeon_ring* %13, i32 %15)
  %17 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %18 = load i32, i32* @RADEON_ISYNC_ANY2D_IDLE3D, align 4
  %19 = load i32, i32* @RADEON_ISYNC_ANY3D_IDLE2D, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @RADEON_ISYNC_WAIT_IDLEGUI, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @RADEON_ISYNC_CPSCRATCH_IDLEGUI, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @radeon_ring_write(%struct.radeon_ring* %17, i32 %24)
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = load %struct.radeon_ring*, %struct.radeon_ring** %4, align 8
  %28 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %26, %struct.radeon_ring* %27, i32 0)
  br label %29

29:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
