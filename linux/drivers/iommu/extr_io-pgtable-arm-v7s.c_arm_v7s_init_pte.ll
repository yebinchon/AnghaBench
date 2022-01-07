; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_init_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c_arm_v7s_init_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_v7s_io_pgtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.io_pgtable_cfg }
%struct.io_pgtable_cfg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@selftest_running = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_v7s_io_pgtable*, i64, i32, i32, i32, i32, i64*)* @arm_v7s_init_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_v7s_init_pte(%struct.arm_v7s_io_pgtable* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.arm_v7s_io_pgtable*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca %struct.io_pgtable_cfg*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  store %struct.arm_v7s_io_pgtable* %0, %struct.arm_v7s_io_pgtable** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  %21 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %9, align 8
  %22 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.io_pgtable_cfg* %23, %struct.io_pgtable_cfg** %16, align 8
  store i32 0, i32* %18, align 4
  br label %24

24:                                               ; preds = %86, %7
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %89

28:                                               ; preds = %24
  %29 = load i64*, i64** %15, align 8
  %30 = load i32, i32* %18, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i64 @ARM_V7S_PTE_IS_TABLE(i64 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %69

37:                                               ; preds = %28
  %38 = load i32, i32* %13, align 4
  %39 = call i64 @ARM_V7S_BLOCK_SIZE(i32 %38)
  store i64 %39, i64* %20, align 8
  %40 = load i64*, i64** %15, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i64* @ARM_V7S_LVL_IDX(i64 %41, i32 %42)
  %44 = ptrtoint i64* %40 to i64
  %45 = ptrtoint i64* %43 to i64
  %46 = sub i64 %44, %45
  %47 = sdiv exact i64 %46, 8
  %48 = inttoptr i64 %47 to i64*
  store i64* %48, i64** %19, align 8
  %49 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %20, align 8
  %54 = mul i64 %52, %53
  %55 = add i64 %50, %54
  %56 = load i64, i64* %20, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i64*, i64** %19, align 8
  %59 = call i64 @__arm_v7s_unmap(%struct.arm_v7s_io_pgtable* %49, i32* null, i64 %55, i64 %56, i32 %57, i64* %58)
  %60 = load i64, i64* %20, align 8
  %61 = icmp ne i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @WARN_ON(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %37
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %112

68:                                               ; preds = %37
  br label %85

69:                                               ; preds = %28
  %70 = load i64*, i64** %15, align 8
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load i32, i32* @selftest_running, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @WARN_ON(i32 %80)
  %82 = load i32, i32* @EEXIST, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %112

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %68
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %18, align 4
  br label %24

89:                                               ; preds = %24
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %16, align 8
  %93 = call i64 @arm_v7s_prot_to_pte(i32 %90, i32 %91, %struct.io_pgtable_cfg* %92)
  store i64 %93, i64* %17, align 8
  %94 = load i32, i32* %14, align 4
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i64, i64* %17, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i64 @arm_v7s_pte_to_cont(i64 %97, i32 %98)
  store i64 %99, i64* %17, align 8
  br label %100

100:                                              ; preds = %96, %89
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %16, align 8
  %104 = call i64 @paddr_to_iopte(i32 %101, i32 %102, %struct.io_pgtable_cfg* %103)
  %105 = load i64, i64* %17, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %17, align 8
  %107 = load i64*, i64** %15, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %16, align 8
  %111 = call i32 @__arm_v7s_set_pte(i64* %107, i64 %108, i32 %109, %struct.io_pgtable_cfg* %110)
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %100, %76, %65
  %113 = load i32, i32* %8, align 4
  ret i32 %113
}

declare dso_local i64 @ARM_V7S_PTE_IS_TABLE(i64, i32) #1

declare dso_local i64 @ARM_V7S_BLOCK_SIZE(i32) #1

declare dso_local i64* @ARM_V7S_LVL_IDX(i64, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @__arm_v7s_unmap(%struct.arm_v7s_io_pgtable*, i32*, i64, i64, i32, i64*) #1

declare dso_local i64 @arm_v7s_prot_to_pte(i32, i32, %struct.io_pgtable_cfg*) #1

declare dso_local i64 @arm_v7s_pte_to_cont(i64, i32) #1

declare dso_local i64 @paddr_to_iopte(i32, i32, %struct.io_pgtable_cfg*) #1

declare dso_local i32 @__arm_v7s_set_pte(i64*, i64, i32, %struct.io_pgtable_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
