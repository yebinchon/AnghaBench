; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c___tmc_etr_enable_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c___tmc_etr_enable_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { i32, i64, %struct.etr_buf* }
%struct.etr_buf = type { i32, i64, i32 }

@TMC_RSZ = common dso_local global i64 0, align 8
@TMC_MODE_CIRCULAR_BUFFER = common dso_local global i32 0, align 4
@TMC_MODE = common dso_local global i64 0, align 8
@TMC_AXICTL = common dso_local global i64 0, align 8
@TMC_AXICTL_CLEAR_MASK = common dso_local global i32 0, align 4
@TMC_AXICTL_PROT_CTL_B1 = common dso_local global i32 0, align 4
@TMC_AXICTL_WR_BURST_16 = common dso_local global i32 0, align 4
@TMC_AXICTL_AXCACHE_OS = common dso_local global i32 0, align 4
@TMC_ETR_AXI_ARCACHE = common dso_local global i32 0, align 4
@TMC_AXICTL_ARCACHE_MASK = common dso_local global i32 0, align 4
@TMC_AXICTL_ARCACHE_OS = common dso_local global i32 0, align 4
@ETR_MODE_ETR_SG = common dso_local global i64 0, align 8
@TMC_AXICTL_SCT_GAT_MODE = common dso_local global i32 0, align 4
@TMC_ETR_SAVE_RESTORE = common dso_local global i32 0, align 4
@TMC_STS = common dso_local global i64 0, align 8
@TMC_STS_FULL = common dso_local global i32 0, align 4
@TMC_FFCR_EN_FMT = common dso_local global i32 0, align 4
@TMC_FFCR_EN_TI = common dso_local global i32 0, align 4
@TMC_FFCR_FON_FLIN = common dso_local global i32 0, align 4
@TMC_FFCR_FON_TRIG_EVT = common dso_local global i32 0, align 4
@TMC_FFCR_TRIGON_TRIGIN = common dso_local global i32 0, align 4
@TMC_FFCR = common dso_local global i64 0, align 8
@TMC_TRG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmc_drvdata*)* @__tmc_etr_enable_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tmc_etr_enable_hw(%struct.tmc_drvdata* %0) #0 {
  %2 = alloca %struct.tmc_drvdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.etr_buf*, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %2, align 8
  %6 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %7 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %6, i32 0, i32 2
  %8 = load %struct.etr_buf*, %struct.etr_buf** %7, align 8
  store %struct.etr_buf* %8, %struct.etr_buf** %5, align 8
  %9 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %10 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @CS_UNLOCK(i64 %11)
  %13 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %14 = call i32 @tmc_wait_for_tmcready(%struct.tmc_drvdata* %13)
  %15 = load %struct.etr_buf*, %struct.etr_buf** %5, align 8
  %16 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 4
  %19 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %20 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TMC_RSZ, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel_relaxed(i32 %18, i64 %23)
  %25 = load i32, i32* @TMC_MODE_CIRCULAR_BUFFER, align 4
  %26 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %27 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TMC_MODE, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel_relaxed(i32 %25, i64 %30)
  %32 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %33 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TMC_AXICTL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl_relaxed(i64 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @TMC_AXICTL_CLEAR_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @TMC_AXICTL_PROT_CTL_B1, align 4
  %43 = load i32, i32* @TMC_AXICTL_WR_BURST_16, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @TMC_AXICTL_AXCACHE_OS, align 4
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %51 = load i32, i32* @TMC_ETR_AXI_ARCACHE, align 4
  %52 = call i64 @tmc_etr_has_cap(%struct.tmc_drvdata* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %1
  %55 = load i32, i32* @TMC_AXICTL_ARCACHE_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* @TMC_AXICTL_ARCACHE_OS, align 4
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %1
  %63 = load %struct.etr_buf*, %struct.etr_buf** %5, align 8
  %64 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ETR_MODE_ETR_SG, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i32, i32* @TMC_AXICTL_SCT_GAT_MODE, align 4
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %62
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %75 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TMC_AXICTL, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel_relaxed(i32 %73, i64 %78)
  %80 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %81 = load %struct.etr_buf*, %struct.etr_buf** %5, align 8
  %82 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @tmc_write_dba(%struct.tmc_drvdata* %80, i32 %83)
  %85 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %86 = load i32, i32* @TMC_ETR_SAVE_RESTORE, align 4
  %87 = call i64 @tmc_etr_has_cap(%struct.tmc_drvdata* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %116

89:                                               ; preds = %72
  %90 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %91 = load %struct.etr_buf*, %struct.etr_buf** %5, align 8
  %92 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @tmc_write_rrp(%struct.tmc_drvdata* %90, i32 %93)
  %95 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %96 = load %struct.etr_buf*, %struct.etr_buf** %5, align 8
  %97 = getelementptr inbounds %struct.etr_buf, %struct.etr_buf* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @tmc_write_rwp(%struct.tmc_drvdata* %95, i32 %98)
  %100 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %101 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @TMC_STS, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @readl_relaxed(i64 %104)
  %106 = load i32, i32* @TMC_STS_FULL, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %111 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TMC_STS, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @writel_relaxed(i32 %109, i64 %114)
  br label %116

116:                                              ; preds = %89, %72
  %117 = load i32, i32* @TMC_FFCR_EN_FMT, align 4
  %118 = load i32, i32* @TMC_FFCR_EN_TI, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @TMC_FFCR_FON_FLIN, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @TMC_FFCR_FON_TRIG_EVT, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @TMC_FFCR_TRIGON_TRIGIN, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %127 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @TMC_FFCR, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writel_relaxed(i32 %125, i64 %130)
  %132 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %133 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %136 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @TMC_TRG, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @writel_relaxed(i32 %134, i64 %139)
  %141 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %142 = call i32 @tmc_enable_hw(%struct.tmc_drvdata* %141)
  %143 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %2, align 8
  %144 = getelementptr inbounds %struct.tmc_drvdata, %struct.tmc_drvdata* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @CS_LOCK(i64 %145)
  ret void
}

declare dso_local i32 @CS_UNLOCK(i64) #1

declare dso_local i32 @tmc_wait_for_tmcready(%struct.tmc_drvdata*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @tmc_etr_has_cap(%struct.tmc_drvdata*, i32) #1

declare dso_local i32 @tmc_write_dba(%struct.tmc_drvdata*, i32) #1

declare dso_local i32 @tmc_write_rrp(%struct.tmc_drvdata*, i32) #1

declare dso_local i32 @tmc_write_rwp(%struct.tmc_drvdata*, i32) #1

declare dso_local i32 @tmc_enable_hw(%struct.tmc_drvdata*) #1

declare dso_local i32 @CS_LOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
