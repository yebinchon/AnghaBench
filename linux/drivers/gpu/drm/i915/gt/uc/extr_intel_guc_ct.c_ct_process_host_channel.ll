; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_ct_process_host_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_ct_process_host_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_ct = type { %struct.intel_guc_ct_channel }
%struct.intel_guc_ct_channel = type { i32, %struct.intel_guc_ct_buffer* }
%struct.intel_guc_ct_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CTB_RECV = common dso_local global i64 0, align 8
@GUC_CT_MSG_LEN_MASK = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"CT: corrupted message detected!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_guc_ct*)* @ct_process_host_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_process_host_channel(%struct.intel_guc_ct* %0) #0 {
  %2 = alloca %struct.intel_guc_ct*, align 8
  %3 = alloca %struct.intel_guc_ct_channel*, align 8
  %4 = alloca %struct.intel_guc_ct_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_guc_ct* %0, %struct.intel_guc_ct** %2, align 8
  %9 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %2, align 8
  %10 = getelementptr inbounds %struct.intel_guc_ct, %struct.intel_guc_ct* %9, i32 0, i32 0
  store %struct.intel_guc_ct_channel* %10, %struct.intel_guc_ct_channel** %3, align 8
  %11 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %3, align 8
  %12 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %11, i32 0, i32 1
  %13 = load %struct.intel_guc_ct_buffer*, %struct.intel_guc_ct_buffer** %12, align 8
  %14 = load i64, i64* @CTB_RECV, align 8
  %15 = getelementptr inbounds %struct.intel_guc_ct_buffer, %struct.intel_guc_ct_buffer* %13, i64 %14
  store %struct.intel_guc_ct_buffer* %15, %struct.intel_guc_ct_buffer** %4, align 8
  %16 = load i32, i32* @GUC_CT_MSG_LEN_MASK, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %21 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %3, align 8
  %22 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %64

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %45, %26
  %28 = load %struct.intel_guc_ct_buffer*, %struct.intel_guc_ct_buffer** %4, align 8
  %29 = call i32 @ctb_read(%struct.intel_guc_ct_buffer* %28, i32* %20)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %49

33:                                               ; preds = %27
  %34 = getelementptr inbounds i32, i32* %20, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = call i64 @ct_header_is_response(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %2, align 8
  %40 = call i32 @ct_handle_response(%struct.intel_guc_ct* %39, i32* %20)
  store i32 %40, i32* %7, align 4
  br label %44

41:                                               ; preds = %33
  %42 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %2, align 8
  %43 = call i32 @ct_handle_request(%struct.intel_guc_ct* %42, i32* %20)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %27, label %49

49:                                               ; preds = %45, %32
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @EPROTO, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @GEM_WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.intel_guc_ct_buffer*, %struct.intel_guc_ct_buffer** %4, align 8
  %60 = getelementptr inbounds %struct.intel_guc_ct_buffer, %struct.intel_guc_ct_buffer* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %49
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %25
  %65 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %8, align 4
  switch i32 %66, label %68 [
    i32 0, label %67
    i32 1, label %67
  ]

67:                                               ; preds = %64, %64
  ret void

68:                                               ; preds = %64
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ctb_read(%struct.intel_guc_ct_buffer*, i32*) #2

declare dso_local i64 @ct_header_is_response(i32) #2

declare dso_local i32 @ct_handle_response(%struct.intel_guc_ct*, i32*) #2

declare dso_local i32 @ct_handle_request(%struct.intel_guc_ct*, i32*) #2

declare dso_local i64 @GEM_WARN_ON(i32) #2

declare dso_local i32 @DRM_ERROR(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
