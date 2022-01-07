; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_mc_irq_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_mc_irq_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.xgene_edac_mc_ctx* }
%struct.xgene_edac_mc_ctx = type { i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@edac_op_state = common dso_local global i64 0, align 8
@EDAC_OPSTATE_INT = common dso_local global i64 0, align 8
@PCPHPERRINTMSK = common dso_local global i32 0, align 4
@MCU_UNCORR_ERR_MASK = common dso_local global i32 0, align 4
@MCU_CTL_ERR_MASK = common dso_local global i32 0, align 4
@PCPLPERRINTMSK = common dso_local global i32 0, align 4
@MCU_CORR_ERR_MASK = common dso_local global i32 0, align 4
@MCUGECR = common dso_local global i64 0, align 8
@MCU_GECR_DEMANDUCINTREN_MASK = common dso_local global i32 0, align 4
@MCU_GECR_BACKUCINTREN_MASK = common dso_local global i32 0, align 4
@MCU_GECR_CINTREN_MASK = common dso_local global i32 0, align 4
@MUC_GECR_MCUADDRERREN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i32)* @xgene_edac_mc_irq_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_edac_mc_irq_ctl(%struct.mem_ctl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgene_edac_mc_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 0
  %9 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %8, align 8
  store %struct.xgene_edac_mc_ctx* %9, %struct.xgene_edac_mc_ctx** %5, align 8
  %10 = load i64, i64* @edac_op_state, align 8
  %11 = load i64, i64* @EDAC_OPSTATE_INT, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %137

14:                                               ; preds = %2
  %15 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %82

22:                                               ; preds = %14
  %23 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 1, %25
  %27 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %22
  %45 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* @PCPHPERRINTMSK, align 4
  %49 = load i32, i32* @MCU_UNCORR_ERR_MASK, align 4
  %50 = load i32, i32* @MCU_CTL_ERR_MASK, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @xgene_edac_pcp_clrbits(%struct.TYPE_3__* %47, i32 %48, i32 %51)
  %53 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* @PCPLPERRINTMSK, align 4
  %57 = load i32, i32* @MCU_CORR_ERR_MASK, align 4
  %58 = call i32 @xgene_edac_pcp_clrbits(%struct.TYPE_3__* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %44, %22
  %60 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %61 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MCUGECR, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @MCU_GECR_DEMANDUCINTREN_MASK, align 4
  %67 = load i32, i32* @MCU_GECR_BACKUCINTREN_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MCU_GECR_CINTREN_MASK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @MUC_GECR_MCUADDRERREN_MASK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MCUGECR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  br label %131

82:                                               ; preds = %14
  %83 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %84 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MCUGECR, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @readl(i64 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @MCU_GECR_DEMANDUCINTREN_MASK, align 4
  %90 = load i32, i32* @MCU_GECR_BACKUCINTREN_MASK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @MCU_GECR_CINTREN_MASK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @MUC_GECR_MCUADDRERREN_MASK, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %101 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MCUGECR, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 %99, i64 %104)
  %106 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %107 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %106, i32 0, i32 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* @PCPHPERRINTMSK, align 4
  %110 = load i32, i32* @MCU_UNCORR_ERR_MASK, align 4
  %111 = load i32, i32* @MCU_CTL_ERR_MASK, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @xgene_edac_pcp_setbits(%struct.TYPE_3__* %108, i32 %109, i32 %112)
  %114 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %115 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %114, i32 0, i32 1
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* @PCPLPERRINTMSK, align 4
  %118 = load i32, i32* @MCU_CORR_ERR_MASK, align 4
  %119 = call i32 @xgene_edac_pcp_setbits(%struct.TYPE_3__* %116, i32 %117, i32 %118)
  %120 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %121 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 1, %122
  %124 = xor i32 %123, -1
  %125 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %126 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %124
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %82, %59
  %132 = load %struct.xgene_edac_mc_ctx*, %struct.xgene_edac_mc_ctx** %5, align 8
  %133 = getelementptr inbounds %struct.xgene_edac_mc_ctx, %struct.xgene_edac_mc_ctx* %132, i32 0, i32 1
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = call i32 @mutex_unlock(i32* %135)
  br label %137

137:                                              ; preds = %131, %13
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xgene_edac_pcp_clrbits(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @xgene_edac_pcp_setbits(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
