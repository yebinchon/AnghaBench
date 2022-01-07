; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_synopsys_edac.c_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_synopsys_edac.c_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i64, %struct.csrow_info**, %struct.synps_edac_priv* }
%struct.csrow_info = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i64, i32, i32, i32, i32 }
%struct.synps_edac_priv = type { i32, %struct.synps_platform_data* }
%struct.synps_platform_data = type { i32 (i32)*, i32 (i32)* }

@EDAC_FLAG_SECDED = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SYNPS_EDAC_ERR_GRAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_csrows(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.synps_edac_priv*, align 8
  %4 = alloca %struct.synps_platform_data*, align 8
  %5 = alloca %struct.csrow_info*, align 8
  %6 = alloca %struct.dimm_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 2
  %12 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %11, align 8
  store %struct.synps_edac_priv* %12, %struct.synps_edac_priv** %3, align 8
  %13 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %3, align 8
  %14 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %13, i32 0, i32 1
  %15 = load %struct.synps_platform_data*, %struct.synps_platform_data** %14, align 8
  store %struct.synps_platform_data* %15, %struct.synps_platform_data** %4, align 8
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %84, %1
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %19 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %87

22:                                               ; preds = %16
  %23 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %24 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %23, i32 0, i32 1
  %25 = load %struct.csrow_info**, %struct.csrow_info*** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %25, i64 %26
  %28 = load %struct.csrow_info*, %struct.csrow_info** %27, align 8
  store %struct.csrow_info* %28, %struct.csrow_info** %5, align 8
  %29 = call i64 (...) @get_memsize()
  store i64 %29, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %80, %22
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %33 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %30
  %37 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %38 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 %41
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.dimm_info*, %struct.dimm_info** %44, align 8
  store %struct.dimm_info* %45, %struct.dimm_info** %6, align 8
  %46 = load i32, i32* @EDAC_FLAG_SECDED, align 4
  %47 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %48 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.synps_platform_data*, %struct.synps_platform_data** %4, align 8
  %50 = getelementptr inbounds %struct.synps_platform_data, %struct.synps_platform_data* %49, i32 0, i32 1
  %51 = load i32 (i32)*, i32 (i32)** %50, align 8
  %52 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %3, align 8
  %53 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %51(i32 %54)
  %56 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %57 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @PAGE_SHIFT, align 8
  %60 = lshr i64 %58, %59
  %61 = load %struct.csrow_info*, %struct.csrow_info** %5, align 8
  %62 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = udiv i64 %60, %64
  %66 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %67 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* @SYNPS_EDAC_ERR_GRAIN, align 4
  %69 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %70 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.synps_platform_data*, %struct.synps_platform_data** %4, align 8
  %72 = getelementptr inbounds %struct.synps_platform_data, %struct.synps_platform_data* %71, i32 0, i32 0
  %73 = load i32 (i32)*, i32 (i32)** %72, align 8
  %74 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %3, align 8
  %75 = getelementptr inbounds %struct.synps_edac_priv, %struct.synps_edac_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %73(i32 %76)
  %78 = load %struct.dimm_info*, %struct.dimm_info** %6, align 8
  %79 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %36
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %30

83:                                               ; preds = %30
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %8, align 8
  br label %16

87:                                               ; preds = %16
  ret void
}

declare dso_local i64 @get_memsize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
