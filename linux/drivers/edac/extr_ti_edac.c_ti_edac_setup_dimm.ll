; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ti_edac.c_ti_edac_setup_dimm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ti_edac.c_ti_edac_setup_dimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, i32, %struct.ti_edac* }
%struct.ti_edac = type { i32 }
%struct.dimm_info = type { i32, i32, i32, i64, i8* }

@EMIF_SDRAM_CONFIG = common dso_local global i32 0, align 4
@EMIF_TYPE_DRA7 = common dso_local global i64 0, align 8
@SDRAM_PAGESIZE_MASK = common dso_local global i64 0, align 8
@SDRAM_PAGESIZE_SHIFT = common dso_local global i64 0, align 8
@SDRAM_ROWSIZE_MASK = common dso_local global i64 0, align 8
@SDRAM_ROWSIZE_SHIFT = common dso_local global i64 0, align 8
@SDRAM_IBANK_MASK = common dso_local global i64 0, align 8
@SDRAM_IBANK_SHIFT = common dso_local global i64 0, align 8
@SDRAM_NARROW_MODE_MASK = common dso_local global i64 0, align 8
@DEV_X16 = common dso_local global i8* null, align 8
@DEV_X32 = common dso_local global i8* null, align 8
@SDRAM_K2_PAGESIZE_MASK = common dso_local global i64 0, align 8
@SDRAM_K2_PAGESIZE_SHIFT = common dso_local global i64 0, align 8
@SDRAM_K2_IBANK_MASK = common dso_local global i64 0, align 8
@SDRAM_K2_IBANK_SHIFT = common dso_local global i64 0, align 8
@SDRAM_K2_EBANK_MASK = common dso_local global i64 0, align 8
@SDRAM_K2_EBANK_SHIFT = common dso_local global i64 0, align 8
@SDRAM_K2_NARROW_MODE_MASK = common dso_local global i64 0, align 8
@SDRAM_K2_NARROW_MODE_SHIFT = common dso_local global i64 0, align 8
@DEV_X64 = common dso_local global i8* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SDRAM_TYPE_MASK = common dso_local global i64 0, align 8
@SDRAM_TYPE_DDR2 = common dso_local global i64 0, align 8
@MEM_DDR2 = common dso_local global i32 0, align 4
@MEM_DDR3 = common dso_local global i32 0, align 4
@EMIF_ECC_CTRL = common dso_local global i32 0, align 4
@ECC_ENABLED = common dso_local global i64 0, align 8
@EDAC_SECDED = common dso_local global i32 0, align 4
@EDAC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i64)* @ti_edac_setup_dimm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_edac_setup_dimm(%struct.mem_ctl_info* %0, i64 %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dimm_info*, align 8
  %6 = alloca %struct.ti_edac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 3
  %12 = load %struct.ti_edac*, %struct.ti_edac** %11, align 8
  store %struct.ti_edac* %12, %struct.ti_edac** %6, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %17 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %20 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.dimm_info* @EDAC_DIMM_PTR(i32 %15, i32 %18, i32 %21, i32 0, i32 0, i32 0)
  store %struct.dimm_info* %22, %struct.dimm_info** %5, align 8
  %23 = load %struct.ti_edac*, %struct.ti_edac** %6, align 8
  %24 = load i32, i32* @EMIF_SDRAM_CONFIG, align 4
  %25 = call i64 @ti_edac_readl(%struct.ti_edac* %23, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @EMIF_TYPE_DRA7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %2
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @SDRAM_PAGESIZE_MASK, align 8
  %32 = and i64 %30, %31
  %33 = load i64, i64* @SDRAM_PAGESIZE_SHIFT, align 8
  %34 = ashr i64 %32, %33
  %35 = add nsw i64 %34, 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @SDRAM_ROWSIZE_MASK, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* @SDRAM_ROWSIZE_SHIFT, align 8
  %41 = ashr i64 %39, %40
  %42 = add nsw i64 %41, 9
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @SDRAM_IBANK_MASK, align 8
  %49 = and i64 %47, %48
  %50 = load i64, i64* @SDRAM_IBANK_SHIFT, align 8
  %51 = ashr i64 %49, %50
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @SDRAM_NARROW_MODE_MASK, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %29
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  %63 = load i8*, i8** @DEV_X16, align 8
  %64 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %65 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  br label %72

66:                                               ; preds = %29
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %7, align 4
  %69 = load i8*, i8** @DEV_X32, align 8
  %70 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %71 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %66, %60
  br label %127

73:                                               ; preds = %2
  store i32 16, i32* %7, align 4
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* @SDRAM_K2_PAGESIZE_MASK, align 8
  %76 = and i64 %74, %75
  %77 = load i64, i64* @SDRAM_K2_PAGESIZE_SHIFT, align 8
  %78 = ashr i64 %76, %77
  %79 = add nsw i64 %78, 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %7, align 4
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @SDRAM_K2_IBANK_MASK, align 8
  %86 = and i64 %84, %85
  %87 = load i64, i64* @SDRAM_K2_IBANK_SHIFT, align 8
  %88 = ashr i64 %86, %87
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %7, align 4
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @SDRAM_K2_EBANK_MASK, align 8
  %95 = and i64 %93, %94
  %96 = load i64, i64* @SDRAM_K2_EBANK_SHIFT, align 8
  %97 = ashr i64 %95, %96
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %7, align 4
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @SDRAM_K2_NARROW_MODE_MASK, align 8
  %104 = and i64 %102, %103
  %105 = load i64, i64* @SDRAM_K2_NARROW_MODE_SHIFT, align 8
  %106 = ashr i64 %104, %105
  store i64 %106, i64* %8, align 8
  %107 = load i64, i64* %8, align 8
  switch i64 %107, label %126 [
    i64 0, label %108
    i64 1, label %114
    i64 2, label %120
  ]

108:                                              ; preds = %73
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 3
  store i32 %110, i32* %7, align 4
  %111 = load i8*, i8** @DEV_X64, align 8
  %112 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %113 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  br label %126

114:                                              ; preds = %73
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 2
  store i32 %116, i32* %7, align 4
  %117 = load i8*, i8** @DEV_X32, align 8
  %118 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %119 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %118, i32 0, i32 4
  store i8* %117, i8** %119, align 8
  br label %126

120:                                              ; preds = %73
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  %123 = load i8*, i8** @DEV_X16, align 8
  %124 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %125 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %73, %120, %114, %108
  br label %127

127:                                              ; preds = %126, %72
  %128 = load i32, i32* %7, align 4
  %129 = shl i32 1, %128
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %9, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* @PAGE_SHIFT, align 8
  %133 = ashr i64 %131, %132
  %134 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %135 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %134, i32 0, i32 3
  store i64 %133, i64* %135, align 8
  %136 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %137 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %136, i32 0, i32 0
  store i32 4, i32* %137, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* @SDRAM_TYPE_MASK, align 8
  %140 = and i64 %138, %139
  %141 = load i64, i64* @SDRAM_TYPE_DDR2, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %127
  %144 = load i32, i32* @MEM_DDR2, align 4
  %145 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %146 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  br label %151

147:                                              ; preds = %127
  %148 = load i32, i32* @MEM_DDR3, align 4
  %149 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %150 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %147, %143
  %152 = load %struct.ti_edac*, %struct.ti_edac** %6, align 8
  %153 = load i32, i32* @EMIF_ECC_CTRL, align 4
  %154 = call i64 @ti_edac_readl(%struct.ti_edac* %152, i32 %153)
  store i64 %154, i64* %8, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load i64, i64* @ECC_ENABLED, align 8
  %157 = and i64 %155, %156
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = load i32, i32* @EDAC_SECDED, align 4
  %161 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %162 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  br label %167

163:                                              ; preds = %151
  %164 = load i32, i32* @EDAC_NONE, align 4
  %165 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %166 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %163, %159
  ret void
}

declare dso_local %struct.dimm_info* @EDAC_DIMM_PTR(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ti_edac_readl(%struct.ti_edac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
