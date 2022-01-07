; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_measure_breadcrumb_dw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_measure_breadcrumb_dw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32 (%struct.TYPE_6__*, i32)*, i32, %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_8__*, %struct.intel_engine_cs*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.measure_breadcrumb = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_8__ }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*)* @measure_breadcrumb_dw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @measure_breadcrumb_dw(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.measure_breadcrumb*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %9 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %8, i32 0, i32 3
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @GEM_BUG_ON(i32 %15)
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.measure_breadcrumb* @kzalloc(i32 56, i32 %17)
  store %struct.measure_breadcrumb* %18, %struct.measure_breadcrumb** %4, align 8
  %19 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %20 = icmp ne %struct.measure_breadcrumb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %111

24:                                               ; preds = %1
  %25 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %26 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %25, i32 0, i32 1
  %27 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %28 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %27, i32 0, i32 3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %31 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @intel_timeline_init(i32* %26, %struct.TYPE_7__* %29, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %107

37:                                               ; preds = %24
  %38 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %39 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %42 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %45 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i32 4, i32* %46, align 4
  %47 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %48 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %52 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 8
  %54 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %55 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %54, i32 0, i32 3
  %56 = call i32 @intel_ring_update_space(%struct.TYPE_8__* %55)
  %57 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %58 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %61 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 8
  %63 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %64 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %65 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store %struct.intel_engine_cs* %63, %struct.intel_engine_cs** %66, align 8
  %67 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %68 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %67, i32 0, i32 3
  %69 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %70 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %71, align 8
  %72 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %73 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %72, i32 0, i32 1
  %74 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %75 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32* %73, i32** %76, align 8
  %77 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %78 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %77, i32 0, i32 1
  %79 = call i32 @intel_timeline_pin(i32* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %37
  br label %103

83:                                               ; preds = %37
  %84 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %85 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %85, align 8
  %87 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %88 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %87, i32 0, i32 2
  %89 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %90 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 %86(%struct.TYPE_6__* %88, i32 %91)
  %93 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %94 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %92, %95
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %97, 1
  %99 = call i32 @GEM_BUG_ON(i32 %98)
  %100 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %101 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %100, i32 0, i32 1
  %102 = call i32 @intel_timeline_unpin(i32* %101)
  br label %103

103:                                              ; preds = %83, %82
  %104 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %105 = getelementptr inbounds %struct.measure_breadcrumb, %struct.measure_breadcrumb* %104, i32 0, i32 1
  %106 = call i32 @intel_timeline_fini(i32* %105)
  br label %107

107:                                              ; preds = %103, %36
  %108 = load %struct.measure_breadcrumb*, %struct.measure_breadcrumb** %4, align 8
  %109 = call i32 @kfree(%struct.measure_breadcrumb* %108)
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %21
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local %struct.measure_breadcrumb* @kzalloc(i32, i32) #1

declare dso_local i64 @intel_timeline_init(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @intel_ring_update_space(%struct.TYPE_8__*) #1

declare dso_local i32 @intel_timeline_pin(i32*) #1

declare dso_local i32 @intel_timeline_unpin(i32*) #1

declare dso_local i32 @intel_timeline_fini(i32*) #1

declare dso_local i32 @kfree(%struct.measure_breadcrumb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
