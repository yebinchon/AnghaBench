; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_underlay_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_underlay_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.resource_pool = type { i64, i32**, i32**, i32**, i32** }
%struct.dce110_timing_generator = type { i32 }
%struct.dce_transform = type { i32 }
%struct.dce_mem_input = type { i32 }
%struct.dce110_opp = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_context*, %struct.resource_pool*)* @underlay_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @underlay_create(%struct.dc_context* %0, %struct.resource_pool* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca %struct.resource_pool*, align 8
  %6 = alloca %struct.dce110_timing_generator*, align 8
  %7 = alloca %struct.dce_transform*, align 8
  %8 = alloca %struct.dce_mem_input*, align 8
  %9 = alloca %struct.dce110_opp*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dce_transform* @kzalloc(i32 4, i32 %10)
  %12 = bitcast %struct.dce_transform* %11 to %struct.dce110_timing_generator*
  store %struct.dce110_timing_generator* %12, %struct.dce110_timing_generator** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.dce_transform* @kzalloc(i32 4, i32 %13)
  store %struct.dce_transform* %14, %struct.dce_transform** %7, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.dce_transform* @kzalloc(i32 4, i32 %15)
  %17 = bitcast %struct.dce_transform* %16 to %struct.dce_mem_input*
  store %struct.dce_mem_input* %17, %struct.dce_mem_input** %8, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.dce_transform* @kzalloc(i32 4, i32 %18)
  %20 = bitcast %struct.dce_transform* %19 to %struct.dce110_opp*
  store %struct.dce110_opp* %20, %struct.dce110_opp** %9, align 8
  %21 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %6, align 8
  %22 = icmp ne %struct.dce110_timing_generator* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.dce_transform*, %struct.dce_transform** %7, align 8
  %25 = icmp ne %struct.dce_transform* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.dce_mem_input*, %struct.dce_mem_input** %8, align 8
  %28 = icmp ne %struct.dce_mem_input* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.dce110_opp*, %struct.dce110_opp** %9, align 8
  %31 = icmp ne %struct.dce110_opp* %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %29, %26, %23, %2
  %33 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %6, align 8
  %34 = bitcast %struct.dce110_timing_generator* %33 to %struct.dce_transform*
  %35 = call i32 @kfree(%struct.dce_transform* %34)
  %36 = load %struct.dce_transform*, %struct.dce_transform** %7, align 8
  %37 = call i32 @kfree(%struct.dce_transform* %36)
  %38 = load %struct.dce_mem_input*, %struct.dce_mem_input** %8, align 8
  %39 = bitcast %struct.dce_mem_input* %38 to %struct.dce_transform*
  %40 = call i32 @kfree(%struct.dce_transform* %39)
  %41 = load %struct.dce110_opp*, %struct.dce110_opp** %9, align 8
  %42 = bitcast %struct.dce110_opp* %41 to %struct.dce_transform*
  %43 = call i32 @kfree(%struct.dce_transform* %42)
  store i32 0, i32* %3, align 4
  br label %110

44:                                               ; preds = %29
  %45 = load %struct.dce110_opp*, %struct.dce110_opp** %9, align 8
  %46 = bitcast %struct.dce110_opp* %45 to %struct.dce_transform*
  %47 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %48 = call i32 @dce110_opp_v_construct(%struct.dce_transform* %46, %struct.dc_context* %47)
  %49 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %6, align 8
  %50 = bitcast %struct.dce110_timing_generator* %49 to %struct.dce_transform*
  %51 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %52 = call i32 @dce110_timing_generator_v_construct(%struct.dce_transform* %50, %struct.dc_context* %51)
  %53 = load %struct.dce_mem_input*, %struct.dce_mem_input** %8, align 8
  %54 = bitcast %struct.dce_mem_input* %53 to %struct.dce_transform*
  %55 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %56 = call i32 @dce110_mem_input_v_construct(%struct.dce_transform* %54, %struct.dc_context* %55)
  %57 = load %struct.dce_transform*, %struct.dce_transform** %7, align 8
  %58 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %59 = call i32 @dce110_transform_v_construct(%struct.dce_transform* %57, %struct.dc_context* %58)
  %60 = load %struct.dce110_opp*, %struct.dce110_opp** %9, align 8
  %61 = getelementptr inbounds %struct.dce110_opp, %struct.dce110_opp* %60, i32 0, i32 0
  %62 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %63 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %62, i32 0, i32 4
  %64 = load i32**, i32*** %63, align 8
  %65 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %66 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i32*, i32** %64, i64 %67
  store i32* %61, i32** %68, align 8
  %69 = load %struct.dce110_timing_generator*, %struct.dce110_timing_generator** %6, align 8
  %70 = getelementptr inbounds %struct.dce110_timing_generator, %struct.dce110_timing_generator* %69, i32 0, i32 0
  %71 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %72 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %71, i32 0, i32 3
  %73 = load i32**, i32*** %72, align 8
  %74 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %75 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32*, i32** %73, i64 %76
  store i32* %70, i32** %77, align 8
  %78 = load %struct.dce_mem_input*, %struct.dce_mem_input** %8, align 8
  %79 = getelementptr inbounds %struct.dce_mem_input, %struct.dce_mem_input* %78, i32 0, i32 0
  %80 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %81 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %80, i32 0, i32 2
  %82 = load i32**, i32*** %81, align 8
  %83 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %84 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32*, i32** %82, i64 %85
  store i32* %79, i32** %86, align 8
  %87 = load %struct.dce_transform*, %struct.dce_transform** %7, align 8
  %88 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %87, i32 0, i32 0
  %89 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %90 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %93 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32*, i32** %91, i64 %94
  store i32* %88, i32** %95, align 8
  %96 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %97 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %101 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 4
  %105 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %106 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  store i32 1, i32* %3, align 4
  br label %110

110:                                              ; preds = %44, %32
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.dce_transform* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.dce_transform*) #1

declare dso_local i32 @dce110_opp_v_construct(%struct.dce_transform*, %struct.dc_context*) #1

declare dso_local i32 @dce110_timing_generator_v_construct(%struct.dce_transform*, %struct.dc_context*) #1

declare dso_local i32 @dce110_mem_input_v_construct(%struct.dce_transform*, %struct.dc_context*) #1

declare dso_local i32 @dce110_transform_v_construct(%struct.dce_transform*, %struct.dc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
