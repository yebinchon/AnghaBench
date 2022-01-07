; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_emit_gds_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_emit_gds_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.amdgpu_ring = type { i32 }

@PACKET3_WRITE_DATA = common dso_local global i32 0, align 4
@amdgpu_gds_reg_offset = common dso_local global %struct.TYPE_2__* null, align 8
@GDS_GWS_VMID0__SIZE__SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i64, i64, i64, i64, i64, i64, i64)* @gfx_v8_0_ring_emit_gds_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_ring_emit_gds_switch(%struct.amdgpu_ring* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.amdgpu_ring*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 %7, i64* %16, align 8
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %18 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %19 = call i32 @PACKET3(i32 %18, i32 3)
  %20 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %17, i32 %19)
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %22 = call i32 @WRITE_DATA_ENGINE_SEL(i32 0)
  %23 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %24 = or i32 %22, %23
  %25 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %21, i32 %24)
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amdgpu_gds_reg_offset, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %26, i32 %31)
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %34 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %33, i32 0)
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %36 = load i64, i64* %11, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %35, i32 %37)
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %40 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %41 = call i32 @PACKET3(i32 %40, i32 3)
  %42 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %39, i32 %41)
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %44 = call i32 @WRITE_DATA_ENGINE_SEL(i32 0)
  %45 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %46 = or i32 %44, %45
  %47 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %43, i32 %46)
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amdgpu_gds_reg_offset, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %48, i32 %53)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %56 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 0)
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %58 = load i64, i64* %12, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %57, i32 %59)
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %62 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %63 = call i32 @PACKET3(i32 %62, i32 3)
  %64 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %61, i32 %63)
  %65 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %66 = call i32 @WRITE_DATA_ENGINE_SEL(i32 0)
  %67 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %68 = or i32 %66, %67
  %69 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %65, i32 %68)
  %70 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amdgpu_gds_reg_offset, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %70, i32 %75)
  %77 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %78 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %77, i32 0)
  %79 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* @GDS_GWS_VMID0__SIZE__SHIFT, align 8
  %82 = shl i64 %80, %81
  %83 = load i64, i64* %13, align 8
  %84 = or i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %79, i32 %85)
  %87 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %88 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %89 = call i32 @PACKET3(i32 %88, i32 3)
  %90 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %87, i32 %89)
  %91 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %92 = call i32 @WRITE_DATA_ENGINE_SEL(i32 0)
  %93 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %94 = or i32 %92, %93
  %95 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %91, i32 %94)
  %96 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @amdgpu_gds_reg_offset, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %96, i32 %101)
  %103 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %104 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %103, i32 0)
  %105 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* %15, align 8
  %108 = add i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = shl i32 1, %109
  %111 = load i64, i64* %15, align 8
  %112 = trunc i64 %111 to i32
  %113 = shl i32 1, %112
  %114 = sub nsw i32 %110, %113
  %115 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %105, i32 %114)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WRITE_DATA_ENGINE_SEL(i32) #1

declare dso_local i32 @WRITE_DATA_DST_SEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
