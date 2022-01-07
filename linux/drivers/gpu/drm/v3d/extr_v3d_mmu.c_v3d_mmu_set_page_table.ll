; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_mmu.c_v3d_mmu_set_page_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_mmu.c_v3d_mmu_set_page_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i32, i32 }

@V3D_MMU_PT_PA_BASE = common dso_local global i32 0, align 4
@V3D_MMU_PAGE_SHIFT = common dso_local global i32 0, align 4
@V3D_MMU_CTL = common dso_local global i32 0, align 4
@V3D_MMU_CTL_ENABLE = common dso_local global i32 0, align 4
@V3D_MMU_CTL_PT_INVALID_ENABLE = common dso_local global i32 0, align 4
@V3D_MMU_CTL_PT_INVALID_ABORT = common dso_local global i32 0, align 4
@V3D_MMU_CTL_PT_INVALID_INT = common dso_local global i32 0, align 4
@V3D_MMU_CTL_WRITE_VIOLATION_ABORT = common dso_local global i32 0, align 4
@V3D_MMU_CTL_WRITE_VIOLATION_INT = common dso_local global i32 0, align 4
@V3D_MMU_CTL_CAP_EXCEEDED_ABORT = common dso_local global i32 0, align 4
@V3D_MMU_CTL_CAP_EXCEEDED_INT = common dso_local global i32 0, align 4
@V3D_MMU_ILLEGAL_ADDR = common dso_local global i32 0, align 4
@V3D_MMU_ILLEGAL_ADDR_ENABLE = common dso_local global i32 0, align 4
@V3D_MMUC_CONTROL = common dso_local global i32 0, align 4
@V3D_MMUC_CONTROL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v3d_mmu_set_page_table(%struct.v3d_dev* %0) #0 {
  %2 = alloca %struct.v3d_dev*, align 8
  store %struct.v3d_dev* %0, %struct.v3d_dev** %2, align 8
  %3 = load i32, i32* @V3D_MMU_PT_PA_BASE, align 4
  %4 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %5 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @V3D_MMU_PAGE_SHIFT, align 4
  %8 = ashr i32 %6, %7
  %9 = call i32 @V3D_WRITE(i32 %3, i32 %8)
  %10 = load i32, i32* @V3D_MMU_CTL, align 4
  %11 = load i32, i32* @V3D_MMU_CTL_ENABLE, align 4
  %12 = load i32, i32* @V3D_MMU_CTL_PT_INVALID_ENABLE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @V3D_MMU_CTL_PT_INVALID_ABORT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @V3D_MMU_CTL_PT_INVALID_INT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @V3D_MMU_CTL_WRITE_VIOLATION_ABORT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @V3D_MMU_CTL_WRITE_VIOLATION_INT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @V3D_MMU_CTL_CAP_EXCEEDED_ABORT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @V3D_MMU_CTL_CAP_EXCEEDED_INT, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @V3D_WRITE(i32 %10, i32 %25)
  %27 = load i32, i32* @V3D_MMU_ILLEGAL_ADDR, align 4
  %28 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %29 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @V3D_MMU_PAGE_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load i32, i32* @V3D_MMU_ILLEGAL_ADDR_ENABLE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @V3D_WRITE(i32 %27, i32 %34)
  %36 = load i32, i32* @V3D_MMUC_CONTROL, align 4
  %37 = load i32, i32* @V3D_MMUC_CONTROL_ENABLE, align 4
  %38 = call i32 @V3D_WRITE(i32 %36, i32 %37)
  %39 = load %struct.v3d_dev*, %struct.v3d_dev** %2, align 8
  %40 = call i32 @v3d_mmu_flush_all(%struct.v3d_dev* %39)
  ret i32 %40
}

declare dso_local i32 @V3D_WRITE(i32, i32) #1

declare dso_local i32 @v3d_mmu_flush_all(%struct.v3d_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
