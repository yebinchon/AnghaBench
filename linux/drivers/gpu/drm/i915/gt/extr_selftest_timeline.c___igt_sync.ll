; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_timeline.c___igt_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_timeline.c___igt_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_timeline = type { i32 }
%struct.__igt_sync = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [58 x i8] c"%s: %s(ctx=%llu, seqno=%u) expected passed %s but failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_timeline*, i32, %struct.__igt_sync*, i8*)* @__igt_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__igt_sync(%struct.intel_timeline* %0, i32 %1, %struct.__igt_sync* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_timeline*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.__igt_sync*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_timeline* %0, %struct.intel_timeline** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.__igt_sync* %2, %struct.__igt_sync** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.__igt_sync*, %struct.__igt_sync** %8, align 8
  %14 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @__intel_timeline_sync_is_later(%struct.intel_timeline* %11, i32 %12, i32 %15)
  %17 = load %struct.__igt_sync*, %struct.__igt_sync** %8, align 8
  %18 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %4
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.__igt_sync*, %struct.__igt_sync** %8, align 8
  %24 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.__igt_sync*, %struct.__igt_sync** %8, align 8
  %28 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.__igt_sync*, %struct.__igt_sync** %8, align 8
  %31 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @yesno(i64 %32)
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %25, i32 %26, i32 %29, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %55

37:                                               ; preds = %4
  %38 = load %struct.__igt_sync*, %struct.__igt_sync** %8, align 8
  %39 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %37
  %43 = load %struct.intel_timeline*, %struct.intel_timeline** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.__igt_sync*, %struct.__igt_sync** %8, align 8
  %46 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @__intel_timeline_sync_set(%struct.intel_timeline* %43, i32 %44, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %55

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %37
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %51, %21
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @__intel_timeline_sync_is_later(%struct.intel_timeline*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @yesno(i64) #1

declare dso_local i32 @__intel_timeline_sync_set(%struct.intel_timeline*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
