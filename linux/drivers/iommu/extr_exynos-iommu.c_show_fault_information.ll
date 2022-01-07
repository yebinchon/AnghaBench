; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c_show_fault_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_exynos-iommu.c_show_fault_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysmmu_drvdata = type { i32, i32, i32 }
%struct.sysmmu_fault_info = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s: %s FAULT occurred at %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Page table base: %pa\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\09Lv1 entry: %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09 Lv2 entry: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysmmu_drvdata*, %struct.sysmmu_fault_info*, i32)* @show_fault_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_fault_information(%struct.sysmmu_drvdata* %0, %struct.sysmmu_fault_info* %1, i32 %2) #0 {
  %4 = alloca %struct.sysmmu_drvdata*, align 8
  %5 = alloca %struct.sysmmu_fault_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  store %struct.sysmmu_drvdata* %0, %struct.sysmmu_drvdata** %4, align 8
  store %struct.sysmmu_fault_info* %1, %struct.sysmmu_fault_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %4, align 8
  %9 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %4, align 8
  %12 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_name(i32 %13)
  %15 = load %struct.sysmmu_fault_info*, %struct.sysmmu_fault_info** %5, align 8
  %16 = getelementptr inbounds %struct.sysmmu_fault_info, %struct.sysmmu_fault_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err(i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i32 %18)
  %20 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %4, align 8
  %21 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %4, align 8
  %24 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %23, i32 0, i32 1
  %25 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %24)
  %26 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %4, align 8
  %27 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @phys_to_virt(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32** @section_entry(i32 %29, i32 %30)
  store i32** %31, i32*** %7, align 8
  %32 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %4, align 8
  %33 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32**, i32*** %7, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %36)
  %38 = load i32**, i32*** %7, align 8
  %39 = call i64 @lv1ent_page(i32** %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %3
  %42 = load i32**, i32*** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32** @page_entry(i32** %42, i32 %43)
  store i32** %44, i32*** %7, align 8
  %45 = load %struct.sysmmu_drvdata*, %struct.sysmmu_drvdata** %4, align 8
  %46 = getelementptr inbounds %struct.sysmmu_drvdata, %struct.sysmmu_drvdata* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32**, i32*** %7, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %49)
  br label %51

51:                                               ; preds = %41, %3
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*) #1

declare dso_local i32** @section_entry(i32, i32) #1

declare dso_local i32 @phys_to_virt(i32) #1

declare dso_local i64 @lv1ent_page(i32**) #1

declare dso_local i32** @page_entry(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
