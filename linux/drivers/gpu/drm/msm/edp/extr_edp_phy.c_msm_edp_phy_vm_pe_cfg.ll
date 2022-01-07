; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_phy.c_msm_edp_phy_vm_pe_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/edp/extr_edp_phy.c_msm_edp_phy_vm_pe_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edp_phy = type { i64 }

@REG_EDP_PHY_GLB_VM_CFG0 = common dso_local global i64 0, align 8
@REG_EDP_PHY_GLB_VM_CFG1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_edp_phy_vm_pe_cfg(%struct.edp_phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.edp_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.edp_phy* %0, %struct.edp_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.edp_phy*, %struct.edp_phy** %4, align 8
  %8 = getelementptr inbounds %struct.edp_phy, %struct.edp_phy* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @REG_EDP_PHY_GLB_VM_CFG0, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @edp_write(i64 %11, i32 %12)
  %14 = load %struct.edp_phy*, %struct.edp_phy** %4, align 8
  %15 = getelementptr inbounds %struct.edp_phy, %struct.edp_phy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REG_EDP_PHY_GLB_VM_CFG1, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @edp_write(i64 %18, i32 %19)
  ret void
}

declare dso_local i32 @edp_write(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
