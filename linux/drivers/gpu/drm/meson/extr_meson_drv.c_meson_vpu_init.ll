; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_drv.c_meson_vpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_drv.c_meson_vpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i64 }

@VPU_RDARB_MODE_L1C1 = common dso_local global i32 0, align 4
@VPU_RDARB_MODE_L1C2 = common dso_local global i32 0, align 4
@VPU_RDARB_MODE_L2C1 = common dso_local global i32 0, align 4
@VPU_WRARB_MODE_L2C1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_drm*)* @meson_vpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_vpu_init(%struct.meson_drm* %0) #0 {
  %2 = alloca %struct.meson_drm*, align 8
  %3 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %2, align 8
  %4 = call i32 @VPU_RDARB_SLAVE_TO_MASTER_PORT(i32 0, i32 1)
  %5 = call i32 @VPU_RDARB_SLAVE_TO_MASTER_PORT(i32 5, i32 1)
  %6 = or i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %9 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @VPU_RDARB_MODE_L1C1, align 4
  %12 = call i64 @_REG(i32 %11)
  %13 = add nsw i64 %10, %12
  %14 = call i32 @writel_relaxed(i32 %7, i64 %13)
  %15 = call i32 @VPU_RDARB_SLAVE_TO_MASTER_PORT(i32 0, i32 1)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %18 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @VPU_RDARB_MODE_L1C2, align 4
  %21 = call i64 @_REG(i32 %20)
  %22 = add nsw i64 %19, %21
  %23 = call i32 @writel_relaxed(i32 %16, i64 %22)
  %24 = call i32 @VPU_RDARB_SLAVE_TO_MASTER_PORT(i32 4, i32 1)
  %25 = call i32 @VPU_RDARB_SLAVE_TO_MASTER_PORT(i32 7, i32 1)
  %26 = or i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %29 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @VPU_RDARB_MODE_L2C1, align 4
  %32 = call i64 @_REG(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = call i32 @writel_relaxed(i32 %27, i64 %33)
  %35 = call i32 @VPU_RDARB_SLAVE_TO_MASTER_PORT(i32 1, i32 1)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.meson_drm*, %struct.meson_drm** %2, align 8
  %38 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @VPU_WRARB_MODE_L2C1, align 4
  %41 = call i64 @_REG(i32 %40)
  %42 = add nsw i64 %39, %41
  %43 = call i32 @writel_relaxed(i32 %36, i64 %42)
  ret void
}

declare dso_local i32 @VPU_RDARB_SLAVE_TO_MASTER_PORT(i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
