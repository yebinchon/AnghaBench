; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_pasemi_edac.c_pasemi_edac_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_pasemi_edac.c_pasemi_edac_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.csrow_info** }
%struct.csrow_info = type { i32, i32, i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@MCDRAM_RANKCFG = common dso_local global i64 0, align 8
@MCDRAM_RANKCFG_EN = common dso_local global i32 0, align 4
@MCDRAM_RANKCFG_TYPE_SIZE_M = common dso_local global i32 0, align 4
@MCDRAM_RANKCFG_TYPE_SIZE_S = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unrecognized Rank Config. rankcfg=%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@last_page_in_mmc = common dso_local global i32 0, align 4
@PASEMI_EDAC_ERROR_GRAIN = common dso_local global i32 0, align 4
@MEM_DDR = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.pci_dev*, i32)* @pasemi_edac_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_edac_init_csrows(%struct.mem_ctl_info* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.csrow_info*, align 8
  %9 = alloca %struct.dimm_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %121, %3
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %15 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %124

18:                                               ; preds = %12
  %19 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %20 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %19, i32 0, i32 1
  %21 = load %struct.csrow_info**, %struct.csrow_info*** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %21, i64 %23
  %25 = load %struct.csrow_info*, %struct.csrow_info** %24, align 8
  store %struct.csrow_info* %25, %struct.csrow_info** %8, align 8
  %26 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %27 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.dimm_info*, %struct.dimm_info** %31, align 8
  store %struct.dimm_info* %32, %struct.dimm_info** %9, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %34 = load i64, i64* @MCDRAM_RANKCFG, align 8
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %35, 12
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @pci_read_config_dword(%struct.pci_dev* %33, i64 %38, i32* %10)
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @MCDRAM_RANKCFG_EN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %18
  br label %121

45:                                               ; preds = %18
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @MCDRAM_RANKCFG_TYPE_SIZE_M, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @MCDRAM_RANKCFG_TYPE_SIZE_S, align 4
  %50 = ashr i32 %48, %49
  switch i32 %50, label %81 [
    i32 0, label %51
    i32 1, label %57
    i32 2, label %63
    i32 3, label %63
    i32 4, label %69
    i32 5, label %75
  ]

51:                                               ; preds = %45
  %52 = load i32, i32* @PAGE_SHIFT, align 4
  %53 = sub nsw i32 20, %52
  %54 = shl i32 128, %53
  %55 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %56 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %88

57:                                               ; preds = %45
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = sub nsw i32 20, %58
  %60 = shl i32 256, %59
  %61 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %62 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %88

63:                                               ; preds = %45, %45
  %64 = load i32, i32* @PAGE_SHIFT, align 4
  %65 = sub nsw i32 20, %64
  %66 = shl i32 512, %65
  %67 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %68 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  br label %88

69:                                               ; preds = %45
  %70 = load i32, i32* @PAGE_SHIFT, align 4
  %71 = sub nsw i32 20, %70
  %72 = shl i32 1024, %71
  %73 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %74 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %88

75:                                               ; preds = %45
  %76 = load i32, i32* @PAGE_SHIFT, align 4
  %77 = sub nsw i32 20, %76
  %78 = shl i32 2048, %77
  %79 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %80 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %88

81:                                               ; preds = %45
  %82 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %83 = load i32, i32* @KERN_ERR, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @edac_mc_printk(%struct.mem_ctl_info* %82, i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %125

88:                                               ; preds = %75, %69, %63, %57, %51
  %89 = load i32, i32* @last_page_in_mmc, align 4
  %90 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %91 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %93 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %96 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %94, %97
  %99 = sub nsw i32 %98, 1
  %100 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %101 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %103 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @last_page_in_mmc, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* @last_page_in_mmc, align 4
  %107 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %108 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  %109 = load i32, i32* @PASEMI_EDAC_ERROR_GRAIN, align 4
  %110 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %111 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @MEM_DDR, align 4
  %113 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %114 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @DEV_UNKNOWN, align 4
  %116 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %117 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.dimm_info*, %struct.dimm_info** %9, align 8
  %120 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %88, %44
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %12

124:                                              ; preds = %12
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %81
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @edac_mc_printk(%struct.mem_ctl_info*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
