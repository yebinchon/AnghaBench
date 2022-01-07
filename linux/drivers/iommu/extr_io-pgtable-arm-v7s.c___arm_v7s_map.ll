; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c___arm_v7s_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm-v7s.c___arm_v7s_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_v7s_io_pgtable = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.io_pgtable_cfg }
%struct.io_pgtable_cfg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@selftest_running = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arm_v7s_io_pgtable*, i64, i32, i64, i32, i32, i64*)* @__arm_v7s_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__arm_v7s_map(%struct.arm_v7s_io_pgtable* %0, i64 %1, i32 %2, i64 %3, i32 %4, i32 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.arm_v7s_io_pgtable*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca %struct.io_pgtable_cfg*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  store %struct.arm_v7s_io_pgtable* %0, %struct.arm_v7s_io_pgtable** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  %20 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %9, align 8
  %21 = getelementptr inbounds %struct.arm_v7s_io_pgtable, %struct.arm_v7s_io_pgtable* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.io_pgtable_cfg* %22, %struct.io_pgtable_cfg** %16, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i32, i32* %14, align 4
  %25 = call i64 @ARM_V7S_LVL_SHIFT(i32 %24)
  %26 = lshr i64 %23, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %19, align 4
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @ARM_V7S_LVL_IDX(i64 %28, i32 %29)
  %31 = load i64*, i64** %15, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64* %33, i64** %15, align 8
  %34 = load i32, i32* %19, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %7
  %37 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %19, align 4
  %43 = load i64*, i64** %15, align 8
  %44 = call i32 @arm_v7s_init_pte(%struct.arm_v7s_io_pgtable* %37, i64 %38, i32 %39, i32 %40, i32 %41, i32 %42, i64* %43)
  store i32 %44, i32* %8, align 4
  br label %121

45:                                               ; preds = %7
  %46 = load i32, i32* %14, align 4
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i32
  %49 = call i64 @WARN_ON(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %121

54:                                               ; preds = %45
  %55 = load i64*, i64** %15, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @READ_ONCE(i64 %56)
  store i64 %57, i64* %17, align 8
  %58 = load i64, i64* %17, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %85, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %9, align 8
  %65 = call i64* @__arm_v7s_alloc_table(i32 %62, i32 %63, %struct.arm_v7s_io_pgtable* %64)
  store i64* %65, i64** %18, align 8
  %66 = load i64*, i64** %18, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %121

71:                                               ; preds = %60
  %72 = load i64*, i64** %18, align 8
  %73 = load i64*, i64** %15, align 8
  %74 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %16, align 8
  %75 = call i64 @arm_v7s_install_table(i64* %72, i64* %73, i32 0, %struct.io_pgtable_cfg* %74)
  store i64 %75, i64* %17, align 8
  %76 = load i64, i64* %17, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i64*, i64** %18, align 8
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  %82 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %9, align 8
  %83 = call i32 @__arm_v7s_free_table(i64* %79, i32 %81, %struct.arm_v7s_io_pgtable* %82)
  br label %84

84:                                               ; preds = %78, %71
  br label %89

85:                                               ; preds = %54
  %86 = load i64*, i64** %15, align 8
  %87 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %16, align 8
  %88 = call i32 @__arm_v7s_pte_sync(i64* %86, i32 1, %struct.io_pgtable_cfg* %87)
  br label %89

89:                                               ; preds = %85, %84
  %90 = load i64, i64* %17, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i64 @ARM_V7S_PTE_IS_TABLE(i64 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i64, i64* %17, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %9, align 8
  %98 = call i64* @iopte_deref(i64 %95, i32 %96, %struct.arm_v7s_io_pgtable* %97)
  store i64* %98, i64** %18, align 8
  br label %111

99:                                               ; preds = %89
  %100 = load i64, i64* %17, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i32, i32* @selftest_running, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i64 @WARN_ON(i32 %106)
  %108 = load i32, i32* @EEXIST, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %8, align 4
  br label %121

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %94
  %112 = load %struct.arm_v7s_io_pgtable*, %struct.arm_v7s_io_pgtable** %9, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i64, i64* %12, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i64*, i64** %18, align 8
  %120 = call i32 @__arm_v7s_map(%struct.arm_v7s_io_pgtable* %112, i64 %113, i32 %114, i64 %115, i32 %116, i32 %118, i64* %119)
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %111, %102, %68, %51, %36
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

declare dso_local i64 @ARM_V7S_LVL_SHIFT(i32) #1

declare dso_local i32 @ARM_V7S_LVL_IDX(i64, i32) #1

declare dso_local i32 @arm_v7s_init_pte(%struct.arm_v7s_io_pgtable*, i64, i32, i32, i32, i32, i64*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i64* @__arm_v7s_alloc_table(i32, i32, %struct.arm_v7s_io_pgtable*) #1

declare dso_local i64 @arm_v7s_install_table(i64*, i64*, i32, %struct.io_pgtable_cfg*) #1

declare dso_local i32 @__arm_v7s_free_table(i64*, i32, %struct.arm_v7s_io_pgtable*) #1

declare dso_local i32 @__arm_v7s_pte_sync(i64*, i32, %struct.io_pgtable_cfg*) #1

declare dso_local i64 @ARM_V7S_PTE_IS_TABLE(i64, i32) #1

declare dso_local i64* @iopte_deref(i64, i32, %struct.arm_v7s_io_pgtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
