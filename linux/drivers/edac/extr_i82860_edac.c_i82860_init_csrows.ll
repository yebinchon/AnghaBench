; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i82860_edac.c_i82860_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i82860_edac.c_i82860_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.csrow_info** }
%struct.csrow_info = type { i64, i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i64, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@I82860_MCHCFG = common dso_local global i64 0, align 8
@I82860_GBA = common dso_local global i64 0, align 8
@I82860_GBA_MASK = common dso_local global i32 0, align 4
@I82860_GBA_SHIFT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"(%d) cumul_size 0x%x\0A\00", align 1
@MEM_RMBS = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@EDAC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.pci_dev*)* @i82860_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i82860_init_csrows(%struct.mem_ctl_info* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.csrow_info*, align 8
  %10 = alloca %struct.dimm_info*, align 8
  %11 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = load i64, i64* @I82860_MCHCFG, align 8
  %14 = call i32 @pci_read_config_word(%struct.pci_dev* %12, i64 %13, i32* %6)
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 384
  store i32 %16, i32* %6, align 4
  store i64 0, i64* %5, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %92, %2
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %20 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %95

23:                                               ; preds = %17
  %24 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %25 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %24, i32 0, i32 1
  %26 = load %struct.csrow_info**, %struct.csrow_info*** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %26, i64 %28
  %30 = load %struct.csrow_info*, %struct.csrow_info** %29, align 8
  store %struct.csrow_info* %30, %struct.csrow_info** %9, align 8
  %31 = load %struct.csrow_info*, %struct.csrow_info** %9, align 8
  %32 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.dimm_info*, %struct.dimm_info** %36, align 8
  store %struct.dimm_info* %37, %struct.dimm_info** %10, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load i64, i64* @I82860_GBA, align 8
  %40 = load i32, i32* %11, align 4
  %41 = mul nsw i32 %40, 2
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = call i32 @pci_read_config_word(%struct.pci_dev* %38, i64 %43, i32* %7)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @I82860_GBA_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @I82860_GBA_SHIFT, align 4
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = sub nsw i32 %48, %49
  %51 = shl i32 %47, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %53, i64 %54)
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %23
  br label %92

60:                                               ; preds = %23
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.csrow_info*, %struct.csrow_info** %9, align 8
  %63 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub i64 %64, 1
  %66 = load %struct.csrow_info*, %struct.csrow_info** %9, align 8
  %67 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %5, align 8
  %70 = sub i64 %68, %69
  %71 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %72 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* %5, align 8
  %74 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %75 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %74, i32 0, i32 1
  store i32 4096, i32* %75, align 8
  %76 = load i32, i32* @MEM_RMBS, align 4
  %77 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %78 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @DEV_UNKNOWN, align 4
  %80 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %81 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %60
  %85 = load i32, i32* @EDAC_SECDED, align 4
  br label %88

86:                                               ; preds = %60
  %87 = load i32, i32* @EDAC_NONE, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %91 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %59
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %17

95:                                               ; preds = %17
  ret void
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
