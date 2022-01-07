; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_vgpu.c_intel_gvt_update_vgpu_types.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_vgpu.c_intel_gvt_update_vgpu_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@HOST_LOW_GM_SIZE = common dso_local global i32 0, align 4
@HOST_HIGH_GM_SIZE = common dso_local global i32 0, align 4
@HOST_FENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"update type[%d]: %s avail %u low %u high %u fence %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gvt*)* @intel_gvt_update_vgpu_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_gvt_update_vgpu_types(%struct.intel_gvt* %0) #0 {
  %2 = alloca %struct.intel_gvt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_gvt* %0, %struct.intel_gvt** %2, align 8
  %10 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %11 = call i32 @gvt_aperture_sz(%struct.intel_gvt* %10)
  %12 = load i32, i32* @HOST_LOW_GM_SIZE, align 4
  %13 = sub i32 %11, %12
  %14 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %15 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %13, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %20 = call i32 @gvt_hidden_sz(%struct.intel_gvt* %19)
  %21 = load i32, i32* @HOST_HIGH_GM_SIZE, align 4
  %22 = sub i32 %20, %21
  %23 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %24 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 %22, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %29 = call i32 @gvt_fence_sz(%struct.intel_gvt* %28)
  %30 = load i32, i32* @HOST_FENCE, align 4
  %31 = sub i32 %29, %30
  %32 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %33 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub i32 %31, %35
  store i32 %36, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %128, %1
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %40 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %131

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %46 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = udiv i32 %44, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %56 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = udiv i32 %54, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %66 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = udiv i32 %64, %72
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @min(i32 %74, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @min(i32 %76, i32 %77)
  %79 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %80 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  store i32 %78, i32* %85, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %88 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %96 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %104 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %112 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %120 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %94, i32 %102, i32 %110, i32 %118, i32 %126)
  br label %128

128:                                              ; preds = %43
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %3, align 4
  br label %37

131:                                              ; preds = %37
  ret void
}

declare dso_local i32 @gvt_aperture_sz(%struct.intel_gvt*) #1

declare dso_local i32 @gvt_hidden_sz(%struct.intel_gvt*) #1

declare dso_local i32 @gvt_fence_sz(%struct.intel_gvt*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @gvt_dbg_core(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
