; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_fsl_ddr_edac.c_fsl_ddr_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_fsl_ddr_edac.c_fsl_ddr_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.csrow_info**, %struct.fsl_mc_pdata* }
%struct.csrow_info = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i32, i32, i32, i32, i32 }
%struct.fsl_mc_pdata = type { i64 }

@FSL_MC_DDR_SDRAM_CFG = common dso_local global i64 0, align 8
@DSC_SDTYPE_MASK = common dso_local global i32 0, align 4
@DSC_RD_EN = common dso_local global i32 0, align 4
@MEM_RDDR = common dso_local global i32 0, align 4
@MEM_RDDR2 = common dso_local global i32 0, align 4
@MEM_RDDR3 = common dso_local global i32 0, align 4
@MEM_RDDR4 = common dso_local global i32 0, align 4
@MEM_UNKNOWN = common dso_local global i32 0, align 4
@MEM_DDR = common dso_local global i32 0, align 4
@MEM_DDR2 = common dso_local global i32 0, align 4
@MEM_DDR3 = common dso_local global i32 0, align 4
@MEM_DDR4 = common dso_local global i32 0, align 4
@FSL_MC_CS_BNDS_0 = common dso_local global i64 0, align 8
@FSL_MC_CS_BNDS_OFS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@DSC_X32_EN = common dso_local global i32 0, align 4
@DEV_X32 = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @fsl_ddr_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_ddr_init_csrows(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.fsl_mc_pdata*, align 8
  %4 = alloca %struct.csrow_info*, align 8
  %5 = alloca %struct.dimm_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 2
  %15 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %14, align 8
  store %struct.fsl_mc_pdata* %15, %struct.fsl_mc_pdata** %3, align 8
  %16 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %3, align 8
  %17 = getelementptr inbounds %struct.fsl_mc_pdata, %struct.fsl_mc_pdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FSL_MC_DDR_SDRAM_CFG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @ddr_in32(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DSC_SDTYPE_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DSC_RD_EN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %39 [
    i32 33554432, label %31
    i32 50331648, label %33
    i32 117440512, label %35
    i32 83886080, label %37
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* @MEM_RDDR, align 4
  store i32 %32, i32* %8, align 4
  br label %41

33:                                               ; preds = %29
  %34 = load i32, i32* @MEM_RDDR2, align 4
  store i32 %34, i32* %8, align 4
  br label %41

35:                                               ; preds = %29
  %36 = load i32, i32* @MEM_RDDR3, align 4
  store i32 %36, i32* %8, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @MEM_RDDR4, align 4
  store i32 %38, i32* %8, align 4
  br label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @MEM_UNKNOWN, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %39, %37, %35, %33, %31
  br label %55

42:                                               ; preds = %1
  %43 = load i32, i32* %7, align 4
  switch i32 %43, label %52 [
    i32 33554432, label %44
    i32 50331648, label %46
    i32 117440512, label %48
    i32 83886080, label %50
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* @MEM_DDR, align 4
  store i32 %45, i32* %8, align 4
  br label %54

46:                                               ; preds = %42
  %47 = load i32, i32* @MEM_DDR2, align 4
  store i32 %47, i32* %8, align 4
  br label %54

48:                                               ; preds = %42
  %49 = load i32, i32* @MEM_DDR3, align 4
  store i32 %49, i32* %8, align 4
  br label %54

50:                                               ; preds = %42
  %51 = load i32, i32* @MEM_DDR4, align 4
  store i32 %51, i32* %8, align 4
  br label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @MEM_UNKNOWN, align 4
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %50, %48, %46, %44
  br label %55

55:                                               ; preds = %54, %41
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %144, %55
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %59 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %147

62:                                               ; preds = %56
  %63 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %64 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %63, i32 0, i32 1
  %65 = load %struct.csrow_info**, %struct.csrow_info*** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %65, i64 %67
  %69 = load %struct.csrow_info*, %struct.csrow_info** %68, align 8
  store %struct.csrow_info* %69, %struct.csrow_info** %4, align 8
  %70 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %71 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %72, i64 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.dimm_info*, %struct.dimm_info** %75, align 8
  store %struct.dimm_info* %76, %struct.dimm_info** %5, align 8
  %77 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %3, align 8
  %78 = getelementptr inbounds %struct.fsl_mc_pdata, %struct.fsl_mc_pdata* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FSL_MC_CS_BNDS_0, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @FSL_MC_CS_BNDS_OFS, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %81, %85
  %87 = call i32 @ddr_in32(i64 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, -65536
  %90 = lshr i32 %89, 16
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, 65535
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %62
  br label %144

97:                                               ; preds = %62
  %98 = load i32, i32* @PAGE_SHIFT, align 4
  %99 = sub nsw i32 24, %98
  %100 = load i32, i32* %11, align 4
  %101 = shl i32 %100, %99
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* @PAGE_SHIFT, align 4
  %103 = sub nsw i32 24, %102
  %104 = load i32, i32* %12, align 4
  %105 = shl i32 %104, %103
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* @PAGE_SHIFT, align 4
  %107 = sub nsw i32 24, %106
  %108 = shl i32 1, %107
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %114 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %117 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %119, %120
  %122 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %123 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %125 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %124, i32 0, i32 1
  store i32 8, i32* %125, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %128 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @DEV_UNKNOWN, align 4
  %130 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %131 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @DSC_X32_EN, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %97
  %137 = load i32, i32* @DEV_X32, align 4
  %138 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %139 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %136, %97
  %141 = load i32, i32* @EDAC_SECDED, align 4
  %142 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %143 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %140, %96
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %56

147:                                              ; preds = %56
  ret void
}

declare dso_local i32 @ddr_in32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
