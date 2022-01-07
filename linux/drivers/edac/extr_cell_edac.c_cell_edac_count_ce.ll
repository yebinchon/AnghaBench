; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_cell_edac.c_cell_edac_count_ce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_cell_edac.c_cell_edac_count_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.csrow_info**, %struct.cell_edac_priv* }
%struct.csrow_info = type { i64 }
%struct.cell_edac_priv = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"ECC CE err on node %d, channel %d, ar = 0x%016llx\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i32, i32)* @cell_edac_count_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cell_edac_count_ce(%struct.mem_ctl_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cell_edac_priv*, align 8
  %8 = alloca %struct.csrow_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 2
  %15 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %14, align 8
  store %struct.cell_edac_priv* %15, %struct.cell_edac_priv** %7, align 8
  %16 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %17 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %16, i32 0, i32 1
  %18 = load %struct.csrow_info**, %struct.csrow_info*** %17, align 8
  %19 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %18, i64 0
  %20 = load %struct.csrow_info*, %struct.csrow_info** %19, align 8
  store %struct.csrow_info* %20, %struct.csrow_info** %8, align 8
  %21 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %22 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %7, align 8
  %25 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = and i64 %31, -536870912
  %33 = lshr i64 %32, 29
  store i64 %33, i64* %9, align 8
  %34 = load %struct.cell_edac_priv*, %struct.cell_edac_priv** %7, align 8
  %35 = getelementptr inbounds %struct.cell_edac_priv, %struct.cell_edac_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %3
  %39 = load i64, i64* %9, align 8
  %40 = shl i64 %39, 1
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = or i64 %40, %42
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %38, %3
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @PAGE_SHIFT, align 8
  %47 = lshr i64 %45, %46
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @PAGE_MASK, align 8
  %50 = xor i64 %49, -1
  %51 = and i64 %48, %50
  store i64 %51, i64* %11, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = and i64 %53, 534773760
  %55 = lshr i64 %54, 21
  store i64 %55, i64* %12, align 8
  %56 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %57 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %58 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %59 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %60, %61
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @edac_mc_handle_error(i32 %56, %struct.mem_ctl_info* %57, i32 1, i64 %62, i64 %63, i64 %64, i32 0, i32 %65, i32 -1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i64, i64, i64, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
