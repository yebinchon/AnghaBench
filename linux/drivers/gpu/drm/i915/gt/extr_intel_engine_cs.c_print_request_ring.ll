; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_print_request_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_print_request_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_printer = type { i32 }
%struct.i915_request = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"[head %04x, postfix %04x, tail %04x, batch 0x%08x_%08x]:\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_printer*, %struct.i915_request*)* @print_request_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_request_ring(%struct.drm_printer* %0, %struct.i915_request* %1) #0 {
  %3 = alloca %struct.drm_printer*, align 8
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_printer* %0, %struct.drm_printer** %3, align 8
  store %struct.i915_request* %1, %struct.i915_request** %4, align 8
  %10 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %11 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %12 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %15 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %18 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %21 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %20, i32 0, i32 3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %26 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %25, i32 0, i32 3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @upper_32_bits(i32 %30)
  br label %33

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %24
  %34 = phi i32 [ %31, %24 ], [ -1, %32 ]
  %35 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %36 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %35, i32 0, i32 3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %41 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @lower_32_bits(i32 %45)
  br label %48

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %39
  %49 = phi i32 [ %46, %39 ], [ -1, %47 ]
  %50 = call i32 @drm_printf(%struct.drm_printer* %10, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %34, i32 %49)
  %51 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %52 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %55 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %6, align 4
  %58 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %59 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %62 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %48
  %66 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %67 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %65, %48
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @GFP_ATOMIC, align 4
  %76 = call i8* @kmalloc(i32 %74, i32 %75)
  store i8* %76, i8** %5, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %127

79:                                               ; preds = %73
  %80 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %81 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %7, align 8
  %85 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %86 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %88 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %89 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %79
  %94 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %95 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %94, i32 0, i32 2
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sub i32 %98, %99
  store i32 %100, i32* %9, align 4
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr i8, i8* %102, i64 %104
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @memcpy(i8* %101, i8* %105, i32 %106)
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %93, %79
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* %9, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr i8, i8* %109, i64 %111
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr i8, i8* %113, i64 %115
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %9, align 4
  %119 = sub i32 %117, %118
  %120 = call i32 @memcpy(i8* %112, i8* %116, i32 %119)
  %121 = load %struct.drm_printer*, %struct.drm_printer** %3, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @hexdump(%struct.drm_printer* %121, i8* %122, i32 %123)
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @kfree(i8* %125)
  br label %127

127:                                              ; preds = %108, %73
  ret void
}

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @hexdump(%struct.drm_printer*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
