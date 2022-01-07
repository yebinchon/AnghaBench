; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_pmd_hw_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_pmd_hw_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i64, %struct.xgene_edac_pmd_ctx* }
%struct.xgene_edac_pmd_ctx = type { i32, i32 }

@OP_RUNNING_INTERRUPT = common dso_local global i64 0, align 8
@PCPHPERRINTMSK = common dso_local global i32 0, align 4
@PMD0_MERR_MASK = common dso_local global i32 0, align 4
@MAX_CPU_PER_PMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*, i32)* @xgene_edac_pmd_hw_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_edac_pmd_hw_ctl(%struct.edac_device_ctl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgene_edac_pmd_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %8 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %7, i32 0, i32 1
  %9 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %8, align 8
  store %struct.xgene_edac_pmd_ctx* %9, %struct.xgene_edac_pmd_ctx** %5, align 8
  %10 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %11 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OP_RUNNING_INTERRUPT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PCPHPERRINTMSK, align 4
  %23 = load i32, i32* @PMD0_MERR_MASK, align 4
  %24 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %23, %26
  %28 = call i32 @xgene_edac_pcp_clrbits(i32 %21, i32 %22, i32 %27)
  br label %40

29:                                               ; preds = %15
  %30 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PCPHPERRINTMSK, align 4
  %34 = load i32, i32* @PMD0_MERR_MASK, align 4
  %35 = load %struct.xgene_edac_pmd_ctx*, %struct.xgene_edac_pmd_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, %struct.xgene_edac_pmd_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %34, %37
  %39 = call i32 @xgene_edac_pcp_setbits(i32 %32, i32 %33, i32 %38)
  br label %40

40:                                               ; preds = %29, %18
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %46 = call i32 @xgene_edac_pmd_hw_cfg(%struct.edac_device_ctl_info* %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %55, %44
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @MAX_CPU_PER_PMD, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @xgene_edac_pmd_cpu_hw_cfg(%struct.edac_device_ctl_info* %52, i32 %53)
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %47

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %41
  ret void
}

declare dso_local i32 @xgene_edac_pcp_clrbits(i32, i32, i32) #1

declare dso_local i32 @xgene_edac_pcp_setbits(i32, i32, i32) #1

declare dso_local i32 @xgene_edac_pmd_hw_cfg(%struct.edac_device_ctl_info*) #1

declare dso_local i32 @xgene_edac_pmd_cpu_hw_cfg(%struct.edac_device_ctl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
