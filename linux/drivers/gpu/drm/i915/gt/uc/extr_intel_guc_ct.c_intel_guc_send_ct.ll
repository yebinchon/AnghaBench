; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_intel_guc_send_ct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_intel_guc_send_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32, %struct.intel_guc_ct }
%struct.intel_guc_ct = type { %struct.intel_guc_ct_channel }
%struct.intel_guc_ct_channel = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"CT: send action %#X failed; err=%d status=%#X\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"CT: send action %#x returned %d (%#x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_guc_send_ct(%struct.intel_guc* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.intel_guc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_guc_ct*, align 8
  %12 = alloca %struct.intel_guc_ct_channel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %16 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %15, i32 0, i32 1
  store %struct.intel_guc_ct* %16, %struct.intel_guc_ct** %11, align 8
  %17 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %11, align 8
  %18 = getelementptr inbounds %struct.intel_guc_ct, %struct.intel_guc_ct* %17, i32 0, i32 0
  store %struct.intel_guc_ct_channel* %18, %struct.intel_guc_ct_channel** %12, align 8
  store i32 -1, i32* %13, align 4
  %19 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %20 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %11, align 8
  %23 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %12, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @ctch_send(%struct.intel_guc_ct* %22, %struct.intel_guc_ct_channel* %23, i32* %24, i32 %25, i32* %26, i32 %27, i32* %13)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  br label %53

41:                                               ; preds = %5
  %42 = load i32, i32* %14, align 4
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @CT_DEBUG_DRIVER(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %41
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.intel_guc*, %struct.intel_guc** %6, align 8
  %55 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %14, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ctch_send(%struct.intel_guc_ct*, %struct.intel_guc_ct_channel*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, i32) #1

declare dso_local i32 @CT_DEBUG_DRIVER(i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
