; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_gen8_gtt_set_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_gen8_gtt_set_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt_gtt_entry = type { i64, i64 }

@GTT_TYPE_PPGTT_PTE_1G_ENTRY = common dso_local global i64 0, align 8
@ADDR_1G_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@GTT_TYPE_PPGTT_PTE_2M_ENTRY = common dso_local global i64 0, align 8
@ADDR_2M_MASK = common dso_local global i64 0, align 8
@GTT_TYPE_PPGTT_PTE_64K_ENTRY = common dso_local global i64 0, align 8
@ADDR_64K_MASK = common dso_local global i64 0, align 8
@ADDR_4K_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gvt_gtt_entry*, i64)* @gen8_gtt_set_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen8_gtt_set_pfn(%struct.intel_gvt_gtt_entry* %0, i64 %1) #0 {
  %3 = alloca %struct.intel_gvt_gtt_entry*, align 8
  %4 = alloca i64, align 8
  store %struct.intel_gvt_gtt_entry* %0, %struct.intel_gvt_gtt_entry** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %3, align 8
  %6 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @GTT_TYPE_PPGTT_PTE_1G_ENTRY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i64, i64* @ADDR_1G_MASK, align 8
  %12 = xor i64 %11, -1
  %13 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %3, align 8
  %14 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = and i64 %15, %12
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* @ADDR_1G_MASK, align 8
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = lshr i64 %17, %18
  %20 = load i64, i64* %4, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %4, align 8
  br label %72

22:                                               ; preds = %2
  %23 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %3, align 8
  %24 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GTT_TYPE_PPGTT_PTE_2M_ENTRY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load i64, i64* @ADDR_2M_MASK, align 8
  %30 = xor i64 %29, -1
  %31 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %3, align 8
  %32 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load i64, i64* @ADDR_2M_MASK, align 8
  %36 = load i64, i64* @PAGE_SHIFT, align 8
  %37 = lshr i64 %35, %36
  %38 = load i64, i64* %4, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %4, align 8
  br label %71

40:                                               ; preds = %22
  %41 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %3, align 8
  %42 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @GTT_TYPE_PPGTT_PTE_64K_ENTRY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load i64, i64* @ADDR_64K_MASK, align 8
  %48 = xor i64 %47, -1
  %49 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %3, align 8
  %50 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = and i64 %51, %48
  store i64 %52, i64* %50, align 8
  %53 = load i64, i64* @ADDR_64K_MASK, align 8
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = lshr i64 %53, %54
  %56 = load i64, i64* %4, align 8
  %57 = and i64 %56, %55
  store i64 %57, i64* %4, align 8
  br label %70

58:                                               ; preds = %40
  %59 = load i64, i64* @ADDR_4K_MASK, align 8
  %60 = xor i64 %59, -1
  %61 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %3, align 8
  %62 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = and i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load i64, i64* @ADDR_4K_MASK, align 8
  %66 = load i64, i64* @PAGE_SHIFT, align 8
  %67 = lshr i64 %65, %66
  %68 = load i64, i64* %4, align 8
  %69 = and i64 %68, %67
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %58, %46
  br label %71

71:                                               ; preds = %70, %28
  br label %72

72:                                               ; preds = %71, %10
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* @PAGE_SHIFT, align 8
  %75 = shl i64 %73, %74
  %76 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %3, align 8
  %77 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = or i64 %78, %75
  store i64 %79, i64* %77, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
