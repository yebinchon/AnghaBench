; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_intel_platform_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_intel_platform_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@platform_names = common dso_local global i8** null, align 8
@INTEL_MAX_PLATFORMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @intel_platform_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i8**, i8*** @platform_names, align 8
  %5 = call i32 @ARRAY_SIZE(i8** %4)
  %6 = sext i32 %5 to i64
  %7 = load i64, i64* @INTEL_MAX_PLATFORMS, align 8
  %8 = icmp ne i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUILD_BUG_ON(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i8**, i8*** @platform_names, align 8
  %13 = call i32 @ARRAY_SIZE(i8** %12)
  %14 = icmp uge i32 %11, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load i8**, i8*** @platform_names, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br label %22

22:                                               ; preds = %15, %1
  %23 = phi i1 [ true, %1 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON_ONCE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %34

28:                                               ; preds = %22
  %29 = load i8**, i8*** @platform_names, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %28, %27
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
