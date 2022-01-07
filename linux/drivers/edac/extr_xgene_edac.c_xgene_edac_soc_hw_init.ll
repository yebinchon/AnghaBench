; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_soc_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_soc_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i64, %struct.xgene_edac_dev_ctx* }
%struct.xgene_edac_dev_ctx = type { i32, i64 }

@OP_RUNNING_INTERRUPT = common dso_local global i64 0, align 8
@PCPHPERRINTMSK = common dso_local global i32 0, align 4
@IOB_PA_ERR_MASK = common dso_local global i32 0, align 4
@IOB_BA_ERR_MASK = common dso_local global i32 0, align 4
@IOB_XGIC_ERR_MASK = common dso_local global i32 0, align 4
@IOB_RB_ERR_MASK = common dso_local global i32 0, align 4
@PCPLPERRINTMSK = common dso_local global i32 0, align 4
@CSW_SWITCH_TRACE_ERR_MASK = common dso_local global i32 0, align 4
@IOBAXIS0TRANSERRINTMSK = common dso_local global i64 0, align 8
@IOBAXIS1TRANSERRINTMSK = common dso_local global i64 0, align 8
@XGICTRANSERRINTMSK = common dso_local global i64 0, align 8
@MEMERRINTMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*, i32)* @xgene_edac_soc_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_edac_soc_hw_init(%struct.edac_device_ctl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgene_edac_dev_ctx*, align 8
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %6, i32 0, i32 1
  %8 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %7, align 8
  store %struct.xgene_edac_dev_ctx* %8, %struct.xgene_edac_dev_ctx** %5, align 8
  %9 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %10 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OP_RUNNING_INTERRUPT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %95

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %14
  %18 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PCPHPERRINTMSK, align 4
  %22 = load i32, i32* @IOB_PA_ERR_MASK, align 4
  %23 = load i32, i32* @IOB_BA_ERR_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @IOB_XGIC_ERR_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @IOB_RB_ERR_MASK, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @xgene_edac_pcp_clrbits(i32 %20, i32 %21, i32 %28)
  %30 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PCPLPERRINTMSK, align 4
  %34 = load i32, i32* @CSW_SWITCH_TRACE_ERR_MASK, align 4
  %35 = call i32 @xgene_edac_pcp_clrbits(i32 %32, i32 %33, i32 %34)
  br label %55

36:                                               ; preds = %14
  %37 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PCPHPERRINTMSK, align 4
  %41 = load i32, i32* @IOB_PA_ERR_MASK, align 4
  %42 = load i32, i32* @IOB_BA_ERR_MASK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @IOB_XGIC_ERR_MASK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @IOB_RB_ERR_MASK, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @xgene_edac_pcp_setbits(i32 %39, i32 %40, i32 %47)
  %49 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %5, align 8
  %50 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PCPLPERRINTMSK, align 4
  %53 = load i32, i32* @CSW_SWITCH_TRACE_ERR_MASK, align 4
  %54 = call i32 @xgene_edac_pcp_setbits(i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %36, %17
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 0, i32 -1
  %60 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IOBAXIS0TRANSERRINTMSK, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 0, i32 -1
  %70 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %5, align 8
  %71 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @IOBAXIS1TRANSERRINTMSK, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 -1
  %80 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %5, align 8
  %81 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @XGICTRANSERRINTMSK, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 %79, i64 %84)
  %86 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %5, align 8
  %87 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @MEMERRINTMSK, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 0, i32 -1
  %94 = call i32 @xgene_edac_pcp_setbits(i32 %88, i32 %89, i32 %93)
  br label %95

95:                                               ; preds = %55, %2
  ret void
}

declare dso_local i32 @xgene_edac_pcp_clrbits(i32, i32, i32) #1

declare dso_local i32 @xgene_edac_pcp_setbits(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
