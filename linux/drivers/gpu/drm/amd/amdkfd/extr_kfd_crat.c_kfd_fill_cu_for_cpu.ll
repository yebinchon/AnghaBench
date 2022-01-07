; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_fill_cu_for_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_crat.c_kfd_fill_cu_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crat_subtype_computeunit = type { i32, i32, i32, i32, i32, i32 }
%struct.cpumask = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CRAT_SUBTYPE_COMPUTEUNIT_AFFINITY = common dso_local global i32 0, align 4
@CRAT_SUBTYPE_FLAGS_ENABLED = common dso_local global i32 0, align 4
@CRAT_CU_FLAGS_CPU_PRESENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, %struct.crat_subtype_computeunit*)* @kfd_fill_cu_for_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kfd_fill_cu_for_cpu(i32 %0, i32* %1, i32 %2, %struct.crat_subtype_computeunit* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.crat_subtype_computeunit*, align 8
  %10 = alloca %struct.cpumask*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.crat_subtype_computeunit* %3, %struct.crat_subtype_computeunit** %9, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = sub i64 %13, 24
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %4
  %23 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %9, align 8
  %24 = call i32 @memset(%struct.crat_subtype_computeunit* %23, i32 0, i32 24)
  %25 = load i32, i32* @CRAT_SUBTYPE_COMPUTEUNIT_AFFINITY, align 4
  %26 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %9, align 8
  %27 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %9, align 8
  %29 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %28, i32 0, i32 0
  store i32 24, i32* %29, align 4
  %30 = load i32, i32* @CRAT_SUBTYPE_FLAGS_ENABLED, align 4
  %31 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %9, align 8
  %32 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.cpumask* @cpumask_of_node(i32 %33)
  store %struct.cpumask* %34, %struct.cpumask** %10, align 8
  %35 = load i32, i32* @CRAT_CU_FLAGS_CPU_PRESENT, align 4
  %36 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %9, align 8
  %37 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %9, align 8
  %42 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @kfd_numa_node_to_apic_id(i32 %43)
  %45 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %9, align 8
  %46 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %9, align 8
  %48 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %22
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %59

54:                                               ; preds = %22
  %55 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %56 = call i32 @cpumask_weight(%struct.cpumask* %55)
  %57 = load %struct.crat_subtype_computeunit*, %struct.crat_subtype_computeunit** %9, align 8
  %58 = getelementptr inbounds %struct.crat_subtype_computeunit, %struct.crat_subtype_computeunit* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %54, %51, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.crat_subtype_computeunit*, i32, i32) #1

declare dso_local %struct.cpumask* @cpumask_of_node(i32) #1

declare dso_local i32 @kfd_numa_node_to_apic_id(i32) #1

declare dso_local i32 @cpumask_weight(%struct.cpumask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
