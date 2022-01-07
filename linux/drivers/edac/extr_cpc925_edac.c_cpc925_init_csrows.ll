; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_cpc925_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_cpc925_edac.c_cpc925_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.csrow_info**, %struct.cpc925_mc_pdata* }
%struct.csrow_info = type { i64, i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i64, i32, i32, i32, i32 }
%struct.cpc925_mc_pdata = type { i64 }

@REG_MBMR_OFFSET = common dso_local global i64 0, align 8
@REG_MBBAR_OFFSET = common dso_local global i64 0, align 8
@MBMR_BBA_MASK = common dso_local global i32 0, align 4
@MBMR_BBA_SHIFT = common dso_local global i32 0, align 4
@MBBAR_BBA_MASK = common dso_local global i32 0, align 4
@MBBAR_BBA_SHIFT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@MBMR_MODE_MASK = common dso_local global i32 0, align 4
@MBMR_MODE_SHIFT = common dso_local global i32 0, align 4
@DEV_X16 = common dso_local global i32 0, align 4
@DEV_X8 = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@MEM_RDDR = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @cpc925_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpc925_init_csrows(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.cpc925_mc_pdata*, align 8
  %4 = alloca %struct.csrow_info*, align 8
  %5 = alloca %struct.dimm_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %16 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %17 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %16, i32 0, i32 2
  %18 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %17, align 8
  store %struct.cpc925_mc_pdata* %18, %struct.cpc925_mc_pdata** %3, align 8
  store i64 0, i64* %15, align 8
  %19 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %20 = call i32 @get_total_mem(%struct.cpc925_mc_pdata* %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %151, %1
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %24 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %154

27:                                               ; preds = %21
  %28 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %29 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REG_MBMR_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 32, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = call i32 @__raw_readl(i64 %36)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %39 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REG_MBBAR_OFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = add nsw i64 %42, 32
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 @__raw_readl(i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @MBMR_BBA_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @MBMR_BBA_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = shl i32 %52, 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @MBBAR_BBA_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @MBBAR_BBA_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = or i32 %53, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %27
  br label %151

63:                                               ; preds = %27
  %64 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %65 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %64, i32 0, i32 1
  %66 = load %struct.csrow_info**, %struct.csrow_info*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %66, i64 %68
  %70 = load %struct.csrow_info*, %struct.csrow_info** %69, align 8
  store %struct.csrow_info* %70, %struct.csrow_info** %4, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 268435456
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %76 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* @PAGE_SHIFT, align 8
  %79 = lshr i64 %77, %78
  store i64 %79, i64* %14, align 8
  %80 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %81 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %14, align 8
  %84 = add i64 %82, %83
  %85 = sub i64 %84, 1
  %86 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %87 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %89 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %15, align 8
  %92 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %93 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %97 [
    i32 1, label %95
    i32 2, label %96
  ]

95:                                               ; preds = %63
  store i32 32, i32* %12, align 4
  br label %98

96:                                               ; preds = %63
  br label %97

97:                                               ; preds = %63, %96
  store i32 64, i32* %12, align 4
  br label %98

98:                                               ; preds = %97, %95
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @MBMR_MODE_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @MBMR_MODE_SHIFT, align 4
  %103 = ashr i32 %101, %102
  switch i32 %103, label %108 [
    i32 6, label %104
    i32 5, label %104
    i32 8, label %104
    i32 7, label %106
    i32 9, label %106
  ]

104:                                              ; preds = %98, %98, %98
  %105 = load i32, i32* @DEV_X16, align 4
  store i32 %105, i32* %6, align 4
  br label %110

106:                                              ; preds = %98, %98
  %107 = load i32, i32* @DEV_X8, align 4
  store i32 %107, i32* %6, align 4
  br label %110

108:                                              ; preds = %98
  %109 = load i32, i32* @DEV_UNKNOWN, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %108, %106, %104
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %147, %110
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %114 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %150

117:                                              ; preds = %111
  %118 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %119 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %118, i32 0, i32 3
  %120 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %120, i64 %122
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load %struct.dimm_info*, %struct.dimm_info** %125, align 8
  store %struct.dimm_info* %126, %struct.dimm_info** %5, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %129 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = udiv i64 %127, %131
  %133 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %134 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load i32, i32* @MEM_RDDR, align 4
  %136 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %137 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @EDAC_SECDED, align 4
  %139 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %140 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %143 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.dimm_info*, %struct.dimm_info** %5, align 8
  %146 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %117
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %111

150:                                              ; preds = %111
  br label %151

151:                                              ; preds = %150, %62
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %21

154:                                              ; preds = %21
  ret void
}

declare dso_local i32 @get_total_mem(%struct.cpc925_mc_pdata*) #1

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
