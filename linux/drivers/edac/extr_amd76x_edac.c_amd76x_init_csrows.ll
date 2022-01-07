; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd76x_edac.c_amd76x_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd76x_edac.c_amd76x_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.csrow_info** }
%struct.csrow_info = type { i32, i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@AMD76X_MEM_BASE_ADDR = common dso_local global i64 0, align 8
@AMD76X_DRAM_MODE_STATUS = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MEM_RDDR = common dso_local global i32 0, align 4
@DEV_X4 = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.pci_dev*, i32)* @amd76x_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd76x_init_csrows(%struct.mem_ctl_info* %0, %struct.pci_dev* %1, i32 %2) #0 {
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
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %113, %3
  %15 = load i32, i32* %13, align 4
  %16 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %17 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %116

20:                                               ; preds = %14
  %21 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %22 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %21, i32 0, i32 1
  %23 = load %struct.csrow_info**, %struct.csrow_info*** %22, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %23, i64 %25
  %27 = load %struct.csrow_info*, %struct.csrow_info** %26, align 8
  store %struct.csrow_info* %27, %struct.csrow_info** %7, align 8
  %28 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %29 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %30, i64 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.dimm_info*, %struct.dimm_info** %33, align 8
  store %struct.dimm_info* %34, %struct.dimm_info** %8, align 8
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = load i64, i64* @AMD76X_MEM_BASE_ADDR, align 8
  %37 = load i32, i32* %13, align 4
  %38 = mul nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = call i32 @pci_read_config_dword(%struct.pci_dev* %35, i64 %40, i32* %9)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @BIT(i32 0)
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %20
  br label %113

47:                                               ; preds = %20
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = and i64 %49, 4286578688
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 65408
  %54 = shl i32 %53, 16
  %55 = sext i32 %54 to i64
  %56 = or i64 %55, 8388607
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %59 = load i64, i64* @AMD76X_DRAM_MODE_STATUS, align 8
  %60 = call i32 @pci_read_config_dword(%struct.pci_dev* %58, i64 %59, i32* %12)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @PAGE_SHIFT, align 4
  %63 = ashr i32 %61, %62
  %64 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %65 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* @PAGE_SHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %71 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %73 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %76 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  %79 = sub nsw i32 %78, 1
  %80 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %81 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @PAGE_SHIFT, align 4
  %84 = ashr i32 %82, %83
  %85 = load %struct.csrow_info*, %struct.csrow_info** %7, align 8
  %86 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %88 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PAGE_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %93 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @MEM_RDDR, align 4
  %95 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %96 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %13, align 4
  %99 = ashr i32 %97, %98
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %47
  %103 = load i32, i32* @DEV_X4, align 4
  br label %106

104:                                              ; preds = %47
  %105 = load i32, i32* @DEV_UNKNOWN, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %109 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.dimm_info*, %struct.dimm_info** %8, align 8
  %112 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %106, %46
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %14

116:                                              ; preds = %14
  ret void
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
