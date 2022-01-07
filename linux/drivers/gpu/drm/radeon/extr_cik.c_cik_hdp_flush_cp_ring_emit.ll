; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_hdp_flush_cp_ring_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_hdp_flush_cp_ring_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32, i32, i32 }

@CP2 = common dso_local global i32 0, align 4
@CP6 = common dso_local global i32 0, align 4
@CP0 = common dso_local global i32 0, align 4
@PACKET3_WAIT_REG_MEM = common dso_local global i32 0, align 4
@GPU_HDP_FLUSH_REQ = common dso_local global i32 0, align 4
@GPU_HDP_FLUSH_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @cik_hdp_flush_cp_ring_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_hdp_flush_cp_ring_emit(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %9, i64 %11
  store %struct.radeon_ring* %12, %struct.radeon_ring** %5, align 8
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %14 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %17 [
    i32 130, label %16
    i32 129, label %16
    i32 128, label %35
  ]

16:                                               ; preds = %2, %2
  br label %17

17:                                               ; preds = %2, %16
  %18 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %19 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %33 [
    i32 0, label %21
    i32 1, label %27
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* @CP2, align 4
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %22, %25
  store i32 %26, i32* %6, align 4
  br label %34

27:                                               ; preds = %17
  %28 = load i32, i32* @CP6, align 4
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %30 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %28, %31
  store i32 %32, i32* %6, align 4
  br label %34

33:                                               ; preds = %17
  br label %65

34:                                               ; preds = %27, %21
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @CP0, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %39 = load i32, i32* @PACKET3_WAIT_REG_MEM, align 4
  %40 = call i32 @PACKET3(i32 %39, i32 5)
  %41 = call i32 @radeon_ring_write(%struct.radeon_ring* %38, i32 %40)
  %42 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %43 = call i32 @WAIT_REG_MEM_OPERATION(i32 1)
  %44 = call i32 @WAIT_REG_MEM_FUNCTION(i32 3)
  %45 = or i32 %43, %44
  %46 = call i32 @WAIT_REG_MEM_ENGINE(i32 1)
  %47 = or i32 %45, %46
  %48 = call i32 @radeon_ring_write(%struct.radeon_ring* %42, i32 %47)
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %50 = load i32, i32* @GPU_HDP_FLUSH_REQ, align 4
  %51 = ashr i32 %50, 2
  %52 = call i32 @radeon_ring_write(%struct.radeon_ring* %49, i32 %51)
  %53 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %54 = load i32, i32* @GPU_HDP_FLUSH_DONE, align 4
  %55 = ashr i32 %54, 2
  %56 = call i32 @radeon_ring_write(%struct.radeon_ring* %53, i32 %55)
  %57 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @radeon_ring_write(%struct.radeon_ring* %57, i32 %58)
  %60 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @radeon_ring_write(%struct.radeon_ring* %60, i32 %61)
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %64 = call i32 @radeon_ring_write(%struct.radeon_ring* %63, i32 32)
  br label %65

65:                                               ; preds = %37, %33
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WAIT_REG_MEM_OPERATION(i32) #1

declare dso_local i32 @WAIT_REG_MEM_FUNCTION(i32) #1

declare dso_local i32 @WAIT_REG_MEM_ENGINE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
