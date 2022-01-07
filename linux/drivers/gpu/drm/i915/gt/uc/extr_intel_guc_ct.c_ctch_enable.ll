; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_ctch_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_ctch_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32 }
%struct.intel_guc_ct_channel = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CTB_SEND = common dso_local global i32 0, align 4
@CTB_RECV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@INTEL_GUC_CT_BUFFER_TYPE_RECV = common dso_local global i32 0, align 4
@INTEL_GUC_CT_BUFFER_TYPE_SEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"CT: can't open channel %d; err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc*, %struct.intel_guc_ct_channel*)* @ctch_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctch_enable(%struct.intel_guc* %0, %struct.intel_guc_ct_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_guc*, align 8
  %5 = alloca %struct.intel_guc_ct_channel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %4, align 8
  store %struct.intel_guc_ct_channel* %1, %struct.intel_guc_ct_channel** %5, align 8
  %9 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %5, align 8
  %10 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @GEM_BUG_ON(i32 %14)
  %16 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %5, align 8
  %17 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @GEM_BUG_ON(i32 %18)
  %20 = load %struct.intel_guc*, %struct.intel_guc** %4, align 8
  %21 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %5, align 8
  %22 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @intel_guc_ggtt_offset(%struct.intel_guc* %20, i32 %23)
  store i64 %24, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %69, %2
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %5, align 8
  %28 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @CTB_SEND, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @CTB_RECV, align 4
  %39 = icmp ne i32 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @GEM_BUG_ON(i32 %42)
  %44 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %5, align 8
  %45 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = sdiv i32 %53, 4
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %52, %57
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = sdiv i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %58, %61
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = sdiv i32 %63, 4
  %65 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %5, align 8
  %66 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @guc_ct_buffer_desc_init(i32 %51, i64 %62, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %40
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %25

72:                                               ; preds = %25
  %73 = load %struct.intel_guc*, %struct.intel_guc** %4, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = sdiv i32 %75, 4
  %77 = load i32, i32* @CTB_RECV, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %74, %79
  %81 = load i32, i32* @INTEL_GUC_CT_BUFFER_TYPE_RECV, align 4
  %82 = call i32 @guc_action_register_ct_buffer(%struct.intel_guc* %73, i64 %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %72
  br label %112

87:                                               ; preds = %72
  %88 = load %struct.intel_guc*, %struct.intel_guc** %4, align 8
  %89 = load i64, i64* %6, align 8
  %90 = load i32, i32* @PAGE_SIZE, align 4
  %91 = sdiv i32 %90, 4
  %92 = load i32, i32* @CTB_SEND, align 4
  %93 = mul nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %89, %94
  %96 = load i32, i32* @INTEL_GUC_CT_BUFFER_TYPE_SEND, align 4
  %97 = call i32 @guc_action_register_ct_buffer(%struct.intel_guc* %88, i64 %95, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %87
  br label %105

102:                                              ; preds = %87
  %103 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %5, align 8
  %104 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  store i32 0, i32* %3, align 4
  br label %119

105:                                              ; preds = %101
  %106 = load %struct.intel_guc*, %struct.intel_guc** %4, align 8
  %107 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %5, align 8
  %108 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @INTEL_GUC_CT_BUFFER_TYPE_RECV, align 4
  %111 = call i32 @guc_action_deregister_ct_buffer(%struct.intel_guc* %106, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %86
  %113 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %5, align 8
  %114 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %112, %102
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @intel_guc_ggtt_offset(%struct.intel_guc*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @guc_ct_buffer_desc_init(i32, i64, i32, i32) #1

declare dso_local i32 @guc_action_register_ct_buffer(%struct.intel_guc*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @guc_action_deregister_ct_buffer(%struct.intel_guc*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
