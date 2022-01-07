; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_bluefield_edac.c_bluefield_edac_init_dimms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_bluefield_edac.c_bluefield_edac_init_dimms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, %struct.dimm_info**, %struct.bluefield_edac_priv* }
%struct.dimm_info = type { i32, i32, i32, i32, i32 }
%struct.bluefield_edac_priv = type { i32, i32* }

@MLNX_SIP_GET_DIMM_INFO = common dso_local global i32 0, align 4
@MLXBF_DIMM_INFO__SIZE_GB = common dso_local global i32 0, align 4
@MEM_EMPTY = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@MLXBF_DIMM_INFO__IS_NVDIMM = common dso_local global i32 0, align 4
@MEM_NVDIMM = common dso_local global i32 0, align 4
@MLXBF_DIMM_INFO__IS_LRDIMM = common dso_local global i32 0, align 4
@MEM_LRDDR4 = common dso_local global i32 0, align 4
@MLXBF_DIMM_INFO__IS_RDIMM = common dso_local global i32 0, align 4
@MEM_RDDR4 = common dso_local global i32 0, align 4
@MEM_DDR4 = common dso_local global i32 0, align 4
@SZ_1G = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MLXBF_EDAC_ERROR_GRAIN = common dso_local global i32 0, align 4
@MLXBF_DIMM_INFO__PACKAGE_X = common dso_local global i32 0, align 4
@DEV_X4 = common dso_local global i32 0, align 4
@DEV_X8 = common dso_local global i32 0, align 4
@DEV_X16 = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@MLXBF_DIMM_INFO__RANKS = common dso_local global i32 0, align 4
@EDAC_FLAG_NONE = common dso_local global i32 0, align 4
@EDAC_FLAG_SECDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @bluefield_edac_init_dimms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bluefield_edac_init_dimms(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.bluefield_edac_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dimm_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 3
  %12 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %11, align 8
  store %struct.bluefield_edac_priv* %12, %struct.bluefield_edac_priv** %3, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %123, %1
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %3, align 8
  %19 = getelementptr inbounds %struct.bluefield_edac_priv, %struct.bluefield_edac_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %126

22:                                               ; preds = %16
  %23 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %24 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %23, i32 0, i32 2
  %25 = load %struct.dimm_info**, %struct.dimm_info*** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dimm_info*, %struct.dimm_info** %25, i64 %27
  %29 = load %struct.dimm_info*, %struct.dimm_info** %28, align 8
  store %struct.dimm_info* %29, %struct.dimm_info** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = shl i32 %30, 16
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @MLNX_SIP_GET_DIMM_INFO, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @smc_call1(i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @MLXBF_DIMM_INFO__SIZE_GB, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @FIELD_GET(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %22
  %42 = load i32, i32* @MEM_EMPTY, align 4
  %43 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %44 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %123

45:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %46 = load i32, i32* @EDAC_SECDED, align 4
  %47 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %48 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @MLXBF_DIMM_INFO__IS_NVDIMM, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @FIELD_GET(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @MEM_NVDIMM, align 4
  %55 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %56 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  br label %81

57:                                               ; preds = %45
  %58 = load i32, i32* @MLXBF_DIMM_INFO__IS_LRDIMM, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @FIELD_GET(i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @MEM_LRDDR4, align 4
  %64 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %65 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %80

66:                                               ; preds = %57
  %67 = load i32, i32* @MLXBF_DIMM_INFO__IS_RDIMM, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @FIELD_GET(i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @MEM_RDDR4, align 4
  %73 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %74 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  br label %79

75:                                               ; preds = %66
  %76 = load i32, i32* @MEM_DDR4, align 4
  %77 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %78 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %62
  br label %81

81:                                               ; preds = %80, %53
  %82 = load i32, i32* @MLXBF_DIMM_INFO__SIZE_GB, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @FIELD_GET(i32 %82, i32 %83)
  %85 = load i32, i32* @SZ_1G, align 4
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = sdiv i32 %85, %86
  %88 = mul nsw i32 %84, %87
  %89 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %90 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @MLXBF_EDAC_ERROR_GRAIN, align 4
  %92 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %93 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @MLXBF_DIMM_INFO__PACKAGE_X, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @FIELD_GET(i32 %94, i32 %95)
  switch i32 %96, label %109 [
    i32 4, label %97
    i32 8, label %101
    i32 16, label %105
  ]

97:                                               ; preds = %81
  %98 = load i32, i32* @DEV_X4, align 4
  %99 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %100 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %113

101:                                              ; preds = %81
  %102 = load i32, i32* @DEV_X8, align 4
  %103 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %104 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %113

105:                                              ; preds = %81
  %106 = load i32, i32* @DEV_X16, align 4
  %107 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %108 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %113

109:                                              ; preds = %81
  %110 = load i32, i32* @DEV_UNKNOWN, align 4
  %111 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %112 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %105, %101, %97
  %114 = load i32, i32* @MLXBF_DIMM_INFO__RANKS, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @FIELD_GET(i32 %114, i32 %115)
  %117 = load %struct.bluefield_edac_priv*, %struct.bluefield_edac_priv** %3, align 8
  %118 = getelementptr inbounds %struct.bluefield_edac_priv, %struct.bluefield_edac_priv* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  br label %123

123:                                              ; preds = %113, %41
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %16

126:                                              ; preds = %16
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* @EDAC_FLAG_NONE, align 4
  %131 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %132 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  br label %137

133:                                              ; preds = %126
  %134 = load i32, i32* @EDAC_FLAG_SECDED, align 4
  %135 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %136 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %129
  ret void
}

declare dso_local i32 @smc_call1(i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
