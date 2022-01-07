; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_mv64x60_edac.c_mv64x60_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_mv64x60_edac.c_mv64x60_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.csrow_info** }
%struct.csrow_info = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i32, i32, i32, i32, i32 }
%struct.mv64x60_mc_pdata = type { i32, i64 }

@MV64X60_SDRAM_CONFIG = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MV64X60_SDRAM_REGISTERED = common dso_local global i32 0, align 4
@MEM_RDDR = common dso_local global i32 0, align 4
@MEM_DDR = common dso_local global i32 0, align 4
@DEV_X32 = common dso_local global i32 0, align 4
@DEV_X16 = common dso_local global i32 0, align 4
@DEV_X4 = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.mv64x60_mc_pdata*)* @mv64x60_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv64x60_init_csrows(%struct.mem_ctl_info* %0, %struct.mv64x60_mc_pdata* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.mv64x60_mc_pdata*, align 8
  %5 = alloca %struct.csrow_info*, align 8
  %6 = alloca %struct.dimm_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.mv64x60_mc_pdata* %1, %struct.mv64x60_mc_pdata** %4, align 8
  %9 = load %struct.mv64x60_mc_pdata*, %struct.mv64x60_mc_pdata** %4, align 8
  %10 = call i32 @get_total_mem(%struct.mv64x60_mc_pdata* %9)
  %11 = load %struct.mv64x60_mc_pdata*, %struct.mv64x60_mc_pdata** %4, align 8
  %12 = getelementptr inbounds %struct.mv64x60_mc_pdata, %struct.mv64x60_mc_pdata* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MV64X60_SDRAM_CONFIG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %18 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %17, i32 0, i32 0
  %19 = load %struct.csrow_info**, %struct.csrow_info*** %18, align 8
  %20 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %19, i64 0
  %21 = load %struct.csrow_info*, %struct.csrow_info** %20, align 8
  store %struct.csrow_info* %21, %struct.csrow_info** %5, align 8
  %22 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %23 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.dimm_info*, %struct.dimm_info** %27, align 8
  store %struct.dimm_info* %28, %struct.dimm_info** %6, align 8
  %29 = load %struct.mv64x60_mc_pdata*, %struct.mv64x60_mc_pdata** %4, align 8
  %30 = getelementptr inbounds %struct.mv64x60_mc_pdata, %struct.mv64x60_mc_pdata* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %35 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %37 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %36, i32 0, i32 1
  store i32 8, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @MV64X60_SDRAM_REGISTERED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* @MEM_RDDR, align 4
  br label %46

44:                                               ; preds = %2
  %45 = load i32, i32* @MEM_DDR, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %49 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 20
  %52 = and i32 %51, 3
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  switch i32 %53, label %66 [
    i32 0, label %54
    i32 2, label %58
    i32 3, label %62
  ]

54:                                               ; preds = %46
  %55 = load i32, i32* @DEV_X32, align 4
  %56 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %57 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  br label %70

58:                                               ; preds = %46
  %59 = load i32, i32* @DEV_X16, align 4
  %60 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %61 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %70

62:                                               ; preds = %46
  %63 = load i32, i32* @DEV_X4, align 4
  %64 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %65 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %70

66:                                               ; preds = %46
  %67 = load i32, i32* @DEV_UNKNOWN, align 4
  %68 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %69 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %62, %58, %54
  %71 = load i32, i32* @EDAC_SECDED, align 4
  %72 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %73 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  ret void
}

declare dso_local i32 @get_total_mem(%struct.mv64x60_mc_pdata*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
