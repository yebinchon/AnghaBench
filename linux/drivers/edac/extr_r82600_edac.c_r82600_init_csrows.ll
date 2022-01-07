; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_r82600_edac.c_r82600_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_r82600_edac.c_r82600_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.csrow_info** }
%struct.csrow_info = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@R82600_DRBA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Row=%d DRBA = %#0x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Row=%d, Boundary Address=%#0x, Last = %#0x\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MEM_RDDR = common dso_local global i32 0, align 4
@MEM_DDR = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@EDAC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.pci_dev*, i32)* @r82600_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r82600_init_csrows(%struct.mem_ctl_info* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.csrow_info*, align 8
  %8 = alloca %struct.dimm_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ecc_enabled(i32 %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @BIT(i32 4)
  %20 = and i32 %18, %19
  store i32 %20, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %110, %3
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %24 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %113

27:                                               ; preds = %21
  %28 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %29 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %28, i32 0, i32 1
  %30 = load %struct.csrow_info**, %struct.csrow_info*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %30, i64 %32
  %34 = load %struct.csrow_info*, %struct.csrow_info** %33, align 8
  store %struct.csrow_info* %34, %struct.csrow_info** %7, align 8
  %35 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %36 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.dimm_info*, %struct.dimm_info** %40, align 8
  store %struct.dimm_info* %41, %struct.dimm_info** %8, align 8
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = load i64, i64* @R82600_DRBA, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 @pci_read_config_byte(%struct.pci_dev* %42, i64 %46, i32* %10)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 (i32, i8*, i32, i32, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = shl i32 %51, 24
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (i32, i8*, i32, i32, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %27
  br label %110

61:                                               ; preds = %27
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @PAGE_SHIFT, align 4
  %65 = ashr i32 %63, %64
  %66 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %67 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @PAGE_SHIFT, align 4
  %70 = ashr i32 %68, %69
  %71 = sub nsw i32 %70, 1
  %72 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %73 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %75 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %78 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %76, %79
  %81 = add nsw i32 %80, 1
  %82 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %83 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %85 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %84, i32 0, i32 1
  store i32 16384, i32* %85, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %61
  %89 = load i32, i32* @MEM_RDDR, align 4
  br label %92

90:                                               ; preds = %61
  %91 = load i32, i32* @MEM_DDR, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %95 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @DEV_UNKNOWN, align 4
  %97 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %98 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* @EDAC_SECDED, align 4
  br label %105

103:                                              ; preds = %92
  %104 = load i32, i32* @EDAC_NONE, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %108 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %105, %60
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %21

113:                                              ; preds = %21
  ret void
}

declare dso_local i32 @ecc_enabled(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
