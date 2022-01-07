; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i82443bxgx_edac.c_i82443bxgx_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i82443bxgx_edac.c_i82443bxgx_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, %struct.csrow_info** }
%struct.csrow_info = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@I82443BXGX_DRAMC = common dso_local global i64 0, align 8
@I82443BXGX_DRB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"MC%d: Row=%d DRB = %#0x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"MC%d: Row=%d, Boundary Address=%#0x, Last = %#0x\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.pci_dev*, i32, i32)* @i82443bxgx_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i82443bxgx_init_csrows(%struct.mem_ctl_info* %0, %struct.pci_dev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.csrow_info*, align 8
  %10 = alloca %struct.dimm_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %18 = load i64, i64* @I82443BXGX_DRAMC, align 8
  %19 = call i32 @pci_read_config_byte(%struct.pci_dev* %17, i64 %18, i64* %13)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %110, %4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %23 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %113

26:                                               ; preds = %20
  %27 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %28 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %27, i32 0, i32 2
  %29 = load %struct.csrow_info**, %struct.csrow_info*** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %29, i64 %31
  %33 = load %struct.csrow_info*, %struct.csrow_info** %32, align 8
  store %struct.csrow_info* %33, %struct.csrow_info** %9, align 8
  %34 = load %struct.csrow_info*, %struct.csrow_info** %9, align 8
  %35 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.dimm_info*, %struct.dimm_info** %39, align 8
  store %struct.dimm_info* %40, %struct.dimm_info** %10, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %42 = load i64, i64* @I82443BXGX_DRB, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = call i32 @pci_read_config_byte(%struct.pci_dev* %41, i64 %45, i64* %12)
  %47 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %48 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i64, i64* %12, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i32, i8*, i32, i32, i32, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %52)
  %54 = load i64, i64* %12, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 %55, 23
  store i32 %56, i32* %15, align 4
  %57 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %58 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = call i32 (i32, i8*, i32, i32, i32, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %26
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i32 -2147483648, i32* %15, align 4
  br label %70

70:                                               ; preds = %69, %66, %26
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %110

75:                                               ; preds = %70
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @PAGE_SHIFT, align 4
  %79 = ashr i32 %77, %78
  %80 = load %struct.csrow_info*, %struct.csrow_info** %9, align 8
  %81 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @PAGE_SHIFT, align 4
  %84 = ashr i32 %82, %83
  %85 = sub nsw i32 %84, 1
  %86 = load %struct.csrow_info*, %struct.csrow_info** %9, align 8
  %87 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.csrow_info*, %struct.csrow_info** %9, align 8
  %89 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.csrow_info*, %struct.csrow_info** %9, align 8
  %92 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %90, %93
  %95 = add nsw i32 %94, 1
  %96 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %97 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %99 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %98, i32 0, i32 1
  store i32 4096, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %102 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @DEV_UNKNOWN, align 4
  %104 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %105 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.dimm_info*, %struct.dimm_info** %10, align 8
  %108 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %16, align 4
  br label %110

110:                                              ; preds = %75, %74
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %20

113:                                              ; preds = %20
  ret void
}

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i64, i64*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
