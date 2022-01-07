; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_pmd_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_pmd_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { %struct.xgene_edac_pmd_ctx* }
%struct.xgene_edac_pmd_ctx = type { i32, i32 }

@PCPHPERRINTSTS = common dso_local global i32 0, align 4
@PMD0_MERR_MASK = common dso_local global i32 0, align 4
@MAX_CPU_PER_PMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*)* @xgene_edac_pmd_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_edac_pmd_check(%struct.edac_device_ctl_info* %0) #0 {
  %2 = alloca %struct.edac_device_ctl_info*, align 8
  %3 = alloca %struct.xgene_edac_pmd_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %2, align 8
  %6 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %7 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %6, i32 0, i32 0
  %8 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %7, align 8
  store %struct.xgene_edac_pmd_ctx* %8, %struct.xgene_edac_pmd_ctx** %3, align 8
  %9 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PCPHPERRINTSTS, align 4
  %13 = call i32 @xgene_edac_pcp_rd(i32 %11, i32 %12, i32* %4)
  %14 = load i32, i32* @PMD0_MERR_MASK, align 4
  %15 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %14, %17
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %38

23:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %32, %23
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MAX_CPU_PER_PMD, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @xgene_edac_pmd_l1_check(%struct.edac_device_ctl_info* %29, i32 %30)
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %24

35:                                               ; preds = %24
  %36 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %37 = call i32 @xgene_edac_pmd_l2_check(%struct.edac_device_ctl_info* %36)
  br label %38

38:                                               ; preds = %35, %22
  ret void
}

declare dso_local i32 @xgene_edac_pcp_rd(i32, i32, i32*) #1

declare dso_local i32 @xgene_edac_pmd_l1_check(%struct.edac_device_ctl_info*, i32) #1

declare dso_local i32 @xgene_edac_pmd_l2_check(%struct.edac_device_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
