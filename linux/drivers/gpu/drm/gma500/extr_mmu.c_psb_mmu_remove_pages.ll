; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_remove_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mmu.c_psb_mmu_remove_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psb_mmu_pd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.psb_mmu_pt = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_mmu_remove_pages(%struct.psb_mmu_pd* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.psb_mmu_pd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.psb_mmu_pt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.psb_mmu_pd* %0, %struct.psb_mmu_pd** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 1, i32* %12, align 4
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* %12, align 4
  br label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %17, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @PAGE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %18, align 8
  %38 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  %39 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @down_read(i32* %41)
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %91, %29
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %94

47:                                               ; preds = %43
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %17, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %15, align 8
  br label %52

52:                                               ; preds = %82, %47
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i64 @psb_pd_addr_end(i64 %53, i64 %54)
  store i64 %55, i64* %16, align 8
  %56 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call %struct.psb_mmu_pt* @psb_mmu_pt_map_lock(%struct.psb_mmu_pd* %56, i64 %57)
  store %struct.psb_mmu_pt* %58, %struct.psb_mmu_pt** %11, align 8
  %59 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %11, align 8
  %60 = icmp ne %struct.psb_mmu_pt* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %82

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %71, %62
  %64 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %11, align 8
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @psb_mmu_invalidate_pte(%struct.psb_mmu_pt* %64, i64 %65)
  %67 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %11, align 8
  %68 = getelementptr inbounds %struct.psb_mmu_pt, %struct.psb_mmu_pt* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %14, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %14, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %16, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %63, label %79

79:                                               ; preds = %71
  %80 = load %struct.psb_mmu_pt*, %struct.psb_mmu_pt** %11, align 8
  %81 = call i32 @psb_mmu_pt_unmap_unlock(%struct.psb_mmu_pt* %80)
  br label %82

82:                                               ; preds = %79, %61
  %83 = load i64, i64* %16, align 8
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %15, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %52, label %87

87:                                               ; preds = %82
  %88 = load i64, i64* %18, align 8
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %7, align 8
  br label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %43

94:                                               ; preds = %43
  %95 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  %96 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, -1
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  %101 = load i64, i64* %19, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @psb_mmu_flush_ptes(%struct.psb_mmu_pd* %100, i64 %101, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %99, %94
  %107 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  %108 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = call i32 @up_read(i32* %110)
  %112 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  %113 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %121

116:                                              ; preds = %106
  %117 = load %struct.psb_mmu_pd*, %struct.psb_mmu_pd** %6, align 8
  %118 = getelementptr inbounds %struct.psb_mmu_pd, %struct.psb_mmu_pd* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = call i32 @psb_mmu_flush(%struct.TYPE_2__* %119)
  br label %121

121:                                              ; preds = %116, %106
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @psb_pd_addr_end(i64, i64) #1

declare dso_local %struct.psb_mmu_pt* @psb_mmu_pt_map_lock(%struct.psb_mmu_pd*, i64) #1

declare dso_local i32 @psb_mmu_invalidate_pte(%struct.psb_mmu_pt*, i64) #1

declare dso_local i32 @psb_mmu_pt_unmap_unlock(%struct.psb_mmu_pt*) #1

declare dso_local i32 @psb_mmu_flush_ptes(%struct.psb_mmu_pd*, i64, i32, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @psb_mmu_flush(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
