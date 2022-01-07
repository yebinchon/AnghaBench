; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_get_addr_from_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_uvd.c_amdgpu_uvd_get_addr_from_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_uvd_cs_ctx = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_uvd_cs_ctx*)* @amdgpu_uvd_get_addr_from_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_uvd_get_addr_from_ctx(%struct.amdgpu_uvd_cs_ctx* %0) #0 {
  %2 = alloca %struct.amdgpu_uvd_cs_ctx*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_uvd_cs_ctx* %0, %struct.amdgpu_uvd_cs_ctx** %2, align 8
  %6 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @amdgpu_get_ib_value(i32 %8, i32 %11, i32 %14)
  store i64 %15, i64* %3, align 8
  %16 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.amdgpu_uvd_cs_ctx*, %struct.amdgpu_uvd_cs_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_uvd_cs_ctx, %struct.amdgpu_uvd_cs_ctx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @amdgpu_get_ib_value(i32 %18, i32 %21, i32 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %3, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %29, 32
  %31 = or i32 %27, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i64 @amdgpu_get_ib_value(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
