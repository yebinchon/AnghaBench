; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_query.c_copy_query_item.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_query.c_copy_query_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_query_item = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32, %struct.drm_i915_query_item*)* @copy_query_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_query_item(i8* %0, i64 %1, i32 %2, %struct.drm_i915_query_item* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_i915_query_item*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.drm_i915_query_item* %3, %struct.drm_i915_query_item** %9, align 8
  %10 = load %struct.drm_i915_query_item*, %struct.drm_i915_query_item** %9, align 8
  %11 = getelementptr inbounds %struct.drm_i915_query_item, %struct.drm_i915_query_item* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %5, align 4
  br label %50

16:                                               ; preds = %4
  %17 = load %struct.drm_i915_query_item*, %struct.drm_i915_query_item** %9, align 8
  %18 = getelementptr inbounds %struct.drm_i915_query_item, %struct.drm_i915_query_item* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %50

26:                                               ; preds = %16
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.drm_i915_query_item*, %struct.drm_i915_query_item** %9, align 8
  %29 = getelementptr inbounds %struct.drm_i915_query_item, %struct.drm_i915_query_item* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @u64_to_user_ptr(i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @copy_from_user(i8* %27, i32 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %50

38:                                               ; preds = %26
  %39 = load %struct.drm_i915_query_item*, %struct.drm_i915_query_item** %9, align 8
  %40 = getelementptr inbounds %struct.drm_i915_query_item, %struct.drm_i915_query_item* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @u64_to_user_ptr(i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @access_ok(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @EFAULT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %46, %35, %23, %14
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @copy_from_user(i8*, i32, i64) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @access_ok(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
