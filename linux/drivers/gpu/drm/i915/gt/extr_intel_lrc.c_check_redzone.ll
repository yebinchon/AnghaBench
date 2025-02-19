; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_check_redzone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_check_redzone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CONFIG_DRM_I915_DEBUG_GEM = common dso_local global i32 0, align 4
@LRC_HEADER_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@POISON_INUSE = common dso_local global i32 0, align 4
@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s context redzone overwritten!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.intel_engine_cs*)* @check_redzone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_redzone(i8* %0, %struct.intel_engine_cs* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.intel_engine_cs*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.intel_engine_cs* %1, %struct.intel_engine_cs** %4, align 8
  %5 = load i32, i32* @CONFIG_DRM_I915_DEBUG_GEM, align 4
  %6 = call i32 @IS_ENABLED(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %38

9:                                                ; preds = %2
  %10 = load i32, i32* @LRC_HEADER_PAGES, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = mul nsw i32 %10, %11
  %13 = load i8*, i8** %3, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr i8, i8* %13, i64 %14
  store i8* %15, i8** %3, align 8
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %17 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr i8, i8* %19, i64 %20
  store i8* %21, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @POISON_INUSE, align 4
  %24 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %25 = call i64 @memchr_inv(i8* %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %9
  %28 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %29 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %35 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err_once(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %8, %27, %9
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @memchr_inv(i8*, i32, i32) #1

declare dso_local i32 @dev_err_once(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
