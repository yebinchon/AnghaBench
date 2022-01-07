; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic.c_blob_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic.c_blob_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property_blob = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_property_blob*, %struct.drm_property_blob*)* @blob_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blob_equal(%struct.drm_property_blob* %0, %struct.drm_property_blob* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_property_blob*, align 8
  %5 = alloca %struct.drm_property_blob*, align 8
  store %struct.drm_property_blob* %0, %struct.drm_property_blob** %4, align 8
  store %struct.drm_property_blob* %1, %struct.drm_property_blob** %5, align 8
  %6 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %7 = icmp ne %struct.drm_property_blob* %6, null
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %10 = icmp ne %struct.drm_property_blob* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %13 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %16 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %11
  %20 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %21 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %24 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %27 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @memcmp(i32 %22, i32 %25, i64 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %19, %11
  %33 = phi i1 [ false, %11 ], [ %31, %19 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %46

35:                                               ; preds = %8, %2
  %36 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %37 = icmp ne %struct.drm_property_blob* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %41 = icmp ne %struct.drm_property_blob* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = icmp eq i32 %39, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %35, %32
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
