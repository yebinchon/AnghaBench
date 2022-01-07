; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_wait_reg_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_wait_reg_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@PACKET3_WAIT_REG_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32, i32, i32, i32, i32, i32)* @gfx_v10_0_wait_reg_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_wait_reg_mem(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.amdgpu_ring*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %20 = load i32, i32* @PACKET3_WAIT_REG_MEM, align 4
  %21 = call i32 @PACKET3(i32 %20, i32 5)
  %22 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %19, i32 %21)
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @WAIT_REG_MEM_MEM_SPACE(i32 %24)
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @WAIT_REG_MEM_OPERATION(i32 %26)
  %28 = or i32 %25, %27
  %29 = call i32 @WAIT_REG_MEM_FUNCTION(i32 3)
  %30 = or i32 %28, %29
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @WAIT_REG_MEM_ENGINE(i32 %31)
  %33 = or i32 %30, %32
  %34 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %23, i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %9
  %38 = load i32, i32* %14, align 4
  %39 = and i32 %38, 3
  %40 = call i32 @BUG_ON(i32 %39)
  br label %41

41:                                               ; preds = %37, %9
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %42, i32 %43)
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %45, i32 %46)
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %48, i32 %49)
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %51, i32 %52)
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %55 = load i32, i32* %18, align 4
  %56 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %54, i32 %55)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WAIT_REG_MEM_MEM_SPACE(i32) #1

declare dso_local i32 @WAIT_REG_MEM_OPERATION(i32) #1

declare dso_local i32 @WAIT_REG_MEM_FUNCTION(i32) #1

declare dso_local i32 @WAIT_REG_MEM_ENGINE(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
