; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_wait_for_ctb_desc_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_wait_for_ctb_desc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guc_ct_buffer_desc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"CT: fence %u failed; reported fence=%u\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.guc_ct_buffer_desc*, i32, i32*)* @wait_for_ctb_desc_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_ctb_desc_update(%struct.guc_ct_buffer_desc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.guc_ct_buffer_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.guc_ct_buffer_desc* %0, %struct.guc_ct_buffer_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %4, align 8
  %9 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @READ_ONCE to i32 (i32, ...)*)(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @wait_for_us(i32 %14, i32 10)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %4, align 8
  %20 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, ...) bitcast (i32 (...)* @READ_ONCE to i32 (i32, ...)*)(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @wait_for(i32 %25, i32 10)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %18, %3
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %4, align 8
  %34 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %4, align 8
  %38 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %4, align 8
  %44 = call i32 @guc_ct_buffer_desc_reset(%struct.guc_ct_buffer_desc* %43)
  %45 = load i32, i32* @EPROTO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %42, %31
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %4, align 8
  %50 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @wait_for_us(i32, i32) #1

declare dso_local i32 @READ_ONCE(...) #1

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @guc_ct_buffer_desc_reset(%struct.guc_ct_buffer_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
