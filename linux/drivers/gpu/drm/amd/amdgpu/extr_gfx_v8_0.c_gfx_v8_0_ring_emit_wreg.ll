; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_emit_wreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_emit_wreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WR_CONFIRM = common dso_local global i32 0, align 4
@PACKET3_WRITE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32)* @gfx_v8_0_ring_emit_wreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_ring_emit_wreg(%struct.amdgpu_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %9 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %18 [
    i32 129, label %13
    i32 128, label %17
  ]

13:                                               ; preds = %3
  %14 = call i32 @WRITE_DATA_ENGINE_SEL(i32 1)
  %15 = load i32, i32* @WR_CONFIRM, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %7, align 4
  br label %20

17:                                               ; preds = %3
  store i32 65536, i32* %7, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @WR_CONFIRM, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %18, %17, %13
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %22 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %23 = call i32 @PACKET3(i32 %22, i32 3)
  %24 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %21, i32 %23)
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %25, i32 %26)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %28, i32 %29)
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %32 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %31, i32 0)
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %33, i32 %34)
  ret void
}

declare dso_local i32 @WRITE_DATA_ENGINE_SEL(i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
