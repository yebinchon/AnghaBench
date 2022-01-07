; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, %struct.csrow_info**, %struct.ppc4xx_edac_pdata* }
%struct.csrow_info = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i32, i32, i32, i32, i32 }
%struct.ppc4xx_edac_pdata = type { i32 }

@EDAC_FLAG_SECDED = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@EDAC_FLAG_EC = common dso_local global i32 0, align 4
@EDAC_EC = common dso_local global i32 0, align 4
@EDAC_NONE = common dso_local global i32 0, align 4
@SDRAM_MBCF_BE_MASK = common dso_local global i32 0, align 4
@SDRAM_MBCF_BE_ENABLE = common dso_local global i32 0, align 4
@SDRAM_MBCF_SZ_MASK = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unrecognized memory bank %d size 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i32)* @ppc4xx_edac_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc4xx_edac_init_csrows(%struct.mem_ctl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ppc4xx_edac_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.csrow_info*, align 8
  %16 = alloca %struct.dimm_info*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %18 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %17, i32 0, i32 3
  %19 = load %struct.ppc4xx_edac_pdata*, %struct.ppc4xx_edac_pdata** %18, align 8
  store %struct.ppc4xx_edac_pdata* %19, %struct.ppc4xx_edac_pdata** %5, align 8
  store i32 0, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ppc4xx_edac_get_mtype(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ppc4xx_edac_get_dtype(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %25 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @EDAC_FLAG_SECDED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @EDAC_SECDED, align 4
  store i32 %31, i32* %9, align 4
  br label %44

32:                                               ; preds = %2
  %33 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %34 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @EDAC_FLAG_EC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @EDAC_EC, align 4
  store i32 %40, i32* %9, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @EDAC_NONE, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %30
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %126, %44
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %48 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %129

51:                                               ; preds = %45
  %52 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %53 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %52, i32 0, i32 2
  %54 = load %struct.csrow_info**, %struct.csrow_info*** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %54, i64 %56
  %58 = load %struct.csrow_info*, %struct.csrow_info** %57, align 8
  store %struct.csrow_info* %58, %struct.csrow_info** %15, align 8
  %59 = load %struct.ppc4xx_edac_pdata*, %struct.ppc4xx_edac_pdata** %5, align 8
  %60 = getelementptr inbounds %struct.ppc4xx_edac_pdata, %struct.ppc4xx_edac_pdata* %59, i32 0, i32 0
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @SDRAM_MBXCF(i32 %61)
  %63 = call i32 @mfsdram(i32* %60, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @SDRAM_MBCF_BE_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @SDRAM_MBCF_BE_ENABLE, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  br label %126

70:                                               ; preds = %51
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @SDRAM_MBCF_SZ_MASK, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  switch i32 %74, label %78 [
    i32 132, label %75
    i32 128, label %75
    i32 138, label %75
    i32 134, label %75
    i32 130, label %75
    i32 139, label %75
    i32 136, label %75
    i32 131, label %75
    i32 137, label %75
    i32 135, label %75
    i32 133, label %75
    i32 129, label %75
  ]

75:                                               ; preds = %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70, %70
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @SDRAM_MBCF_SZ_TO_PAGES(i32 %76)
  store i32 %77, i32* %14, align 4
  br label %87

78:                                               ; preds = %70
  %79 = load i32, i32* @KERN_ERR, align 4
  %80 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @SDRAM_MBCF_SZ_DECODE(i32 %82)
  %84 = call i32 @ppc4xx_edac_mc_printk(i32 %79, %struct.mem_ctl_info* %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %130

87:                                               ; preds = %75
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %122, %87
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.csrow_info*, %struct.csrow_info** %15, align 8
  %91 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %125

94:                                               ; preds = %88
  %95 = load %struct.csrow_info*, %struct.csrow_info** %15, align 8
  %96 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %97, i64 %99
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load %struct.dimm_info*, %struct.dimm_info** %102, align 8
  store %struct.dimm_info* %103, %struct.dimm_info** %16, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.csrow_info*, %struct.csrow_info** %15, align 8
  %106 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sdiv i32 %104, %107
  %109 = load %struct.dimm_info*, %struct.dimm_info** %16, align 8
  %110 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.dimm_info*, %struct.dimm_info** %16, align 8
  %112 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.dimm_info*, %struct.dimm_info** %16, align 8
  %115 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.dimm_info*, %struct.dimm_info** %16, align 8
  %118 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.dimm_info*, %struct.dimm_info** %16, align 8
  %121 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %94
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %88

125:                                              ; preds = %88
  br label %126

126:                                              ; preds = %125, %69
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %45

129:                                              ; preds = %45
  br label %130

130:                                              ; preds = %129, %78
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @ppc4xx_edac_get_mtype(i32) #1

declare dso_local i32 @ppc4xx_edac_get_dtype(i32) #1

declare dso_local i32 @mfsdram(i32*, i32) #1

declare dso_local i32 @SDRAM_MBXCF(i32) #1

declare dso_local i32 @SDRAM_MBCF_SZ_TO_PAGES(i32) #1

declare dso_local i32 @ppc4xx_edac_mc_printk(i32, %struct.mem_ctl_info*, i8*, i32, i32) #1

declare dso_local i32 @SDRAM_MBCF_SZ_DECODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
