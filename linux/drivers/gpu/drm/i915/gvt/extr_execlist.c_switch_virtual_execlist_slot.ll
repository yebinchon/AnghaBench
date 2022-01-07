; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_execlist.c_switch_virtual_execlist_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_execlist.c_switch_virtual_execlist_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_execlist = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [53 x i8] c"[before] running slot %d/context %x pending slot %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"[after] running slot %d/context %x pending slot %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu_execlist*)* @switch_virtual_execlist_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_virtual_execlist_slot(%struct.intel_vgpu_execlist* %0) #0 {
  %2 = alloca %struct.intel_vgpu_execlist*, align 8
  store %struct.intel_vgpu_execlist* %0, %struct.intel_vgpu_execlist** %2, align 8
  %3 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %4 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i32 [ %12, %7 ], [ -1, %13 ]
  %16 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %22 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi i32 [ %25, %20 ], [ 0, %26 ]
  %29 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %30 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %35 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  br label %40

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %33
  %41 = phi i32 [ %38, %33 ], [ -1, %39 ]
  %42 = call i32 @gvt_dbg_el(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %28, i32 %41)
  %43 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %44 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %47 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %46, i32 0, i32 2
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %47, align 8
  %48 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %49 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %48, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %49, align 8
  %50 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %51 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %56 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 0
  br label %62

61:                                               ; preds = %40
  br label %62

62:                                               ; preds = %61, %54
  %63 = phi %struct.TYPE_3__* [ %60, %54 ], [ null, %61 ]
  %64 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %65 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %64, i32 0, i32 1
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %65, align 8
  %66 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %67 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = icmp ne %struct.TYPE_4__* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %72 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  br label %77

76:                                               ; preds = %62
  br label %77

77:                                               ; preds = %76, %70
  %78 = phi i32 [ %75, %70 ], [ -1, %76 ]
  %79 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %80 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = icmp ne %struct.TYPE_3__* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %85 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  br label %90

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %83
  %91 = phi i32 [ %88, %83 ], [ 0, %89 ]
  %92 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %93 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = icmp ne %struct.TYPE_4__* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %2, align 8
  %98 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  br label %103

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %96
  %104 = phi i32 [ %101, %96 ], [ -1, %102 ]
  %105 = call i32 @gvt_dbg_el(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %91, i32 %104)
  ret void
}

declare dso_local i32 @gvt_dbg_el(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
