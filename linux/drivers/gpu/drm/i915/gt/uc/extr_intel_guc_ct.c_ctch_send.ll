; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_ctch_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_ctch_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_ct = type { i32, i32 }
%struct.intel_guc_ct_channel = type { i32, %struct.intel_guc_ct_buffer* }
%struct.intel_guc_ct_buffer = type { %struct.guc_ct_buffer_desc* }
%struct.guc_ct_buffer_desc = type { i32 }
%struct.ct_request = type { i32, i32, i32, i32*, i32 }

@CTB_SEND = common dso_local global i64 0, align 8
@GUC_CT_MSG_LEN_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc_ct*, %struct.intel_guc_ct_channel*, i32*, i32, i32*, i32, i32*)* @ctch_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctch_send(%struct.intel_guc_ct* %0, %struct.intel_guc_ct_channel* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.intel_guc_ct*, align 8
  %9 = alloca %struct.intel_guc_ct_channel*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.intel_guc_ct_buffer*, align 8
  %16 = alloca %struct.guc_ct_buffer_desc*, align 8
  %17 = alloca %struct.ct_request, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.intel_guc_ct* %0, %struct.intel_guc_ct** %8, align 8
  store %struct.intel_guc_ct_channel* %1, %struct.intel_guc_ct_channel** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %21 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %9, align 8
  %22 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %21, i32 0, i32 1
  %23 = load %struct.intel_guc_ct_buffer*, %struct.intel_guc_ct_buffer** %22, align 8
  %24 = load i64, i64* @CTB_SEND, align 8
  %25 = getelementptr inbounds %struct.intel_guc_ct_buffer, %struct.intel_guc_ct_buffer* %23, i64 %24
  store %struct.intel_guc_ct_buffer* %25, %struct.intel_guc_ct_buffer** %15, align 8
  %26 = load %struct.intel_guc_ct_buffer*, %struct.intel_guc_ct_buffer** %15, align 8
  %27 = getelementptr inbounds %struct.intel_guc_ct_buffer, %struct.intel_guc_ct_buffer* %26, i32 0, i32 0
  %28 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %27, align 8
  store %struct.guc_ct_buffer_desc* %28, %struct.guc_ct_buffer_desc** %16, align 8
  %29 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %9, align 8
  %30 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @GEM_BUG_ON(i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @GEM_BUG_ON(i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @GUC_CT_MSG_LEN_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @GEM_BUG_ON(i32 %44)
  %46 = load i32*, i32** %12, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %7
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %48, %7
  %52 = phi i1 [ false, %7 ], [ %50, %48 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @GEM_BUG_ON(i32 %53)
  %55 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %9, align 8
  %56 = call i32 @ctch_get_next_fence(%struct.intel_guc_ct_channel* %55)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = getelementptr inbounds %struct.ct_request, %struct.ct_request* %17, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.ct_request, %struct.ct_request* %17, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %13, align 4
  %61 = getelementptr inbounds %struct.ct_request, %struct.ct_request* %17, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds %struct.ct_request, %struct.ct_request* %17, i32 0, i32 3
  store i32* %62, i32** %63, align 8
  %64 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %8, align 8
  %65 = getelementptr inbounds %struct.intel_guc_ct, %struct.intel_guc_ct* %64, i32 0, i32 0
  %66 = load i64, i64* %18, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = getelementptr inbounds %struct.ct_request, %struct.ct_request* %17, i32 0, i32 4
  %69 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %8, align 8
  %70 = getelementptr inbounds %struct.intel_guc_ct, %struct.intel_guc_ct* %69, i32 0, i32 1
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  %72 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %8, align 8
  %73 = getelementptr inbounds %struct.intel_guc_ct, %struct.intel_guc_ct* %72, i32 0, i32 0
  %74 = load i64, i64* %18, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load %struct.intel_guc_ct_buffer*, %struct.intel_guc_ct_buffer** %15, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = icmp ne i32* %80, null
  %82 = xor i1 %81, true
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @ctb_write(%struct.intel_guc_ct_buffer* %76, i32* %77, i32 %78, i32 %79, i32 %84)
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %51
  br label %135

90:                                               ; preds = %51
  %91 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %8, align 8
  %92 = call i32 @ct_to_guc(%struct.intel_guc_ct* %91)
  %93 = call i32 @intel_guc_notify(i32 %92)
  %94 = load i32*, i32** %12, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32*, i32** %14, align 8
  %98 = call i32 @wait_for_ct_request_update(%struct.ct_request* %17, i32* %97)
  store i32 %98, i32* %20, align 4
  br label %104

99:                                               ; preds = %90
  %100 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %16, align 8
  %101 = load i32, i32* %19, align 4
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @wait_for_ctb_desc_update(%struct.guc_ct_buffer_desc* %100, i32 %101, i32* %102)
  store i32 %103, i32* %20, align 4
  br label %104

104:                                              ; preds = %99, %96
  %105 = load i32, i32* %20, align 4
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %135

109:                                              ; preds = %104
  %110 = load i32*, i32** %14, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @INTEL_GUC_MSG_IS_RESPONSE_SUCCESS(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %20, align 4
  br label %135

117:                                              ; preds = %109
  %118 = load i32*, i32** %12, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.ct_request, %struct.ct_request* %17, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @INTEL_GUC_MSG_TO_DATA(i32 %122)
  %124 = call i32 @WARN_ON(i32 %123)
  %125 = getelementptr inbounds %struct.ct_request, %struct.ct_request* %17, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %20, align 4
  br label %134

127:                                              ; preds = %117
  %128 = getelementptr inbounds %struct.ct_request, %struct.ct_request* %17, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @WARN_ON(i32 %129)
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @INTEL_GUC_MSG_TO_DATA(i32 %132)
  store i32 %133, i32* %20, align 4
  br label %134

134:                                              ; preds = %127, %120
  br label %135

135:                                              ; preds = %134, %114, %108, %89
  %136 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %8, align 8
  %137 = getelementptr inbounds %struct.intel_guc_ct, %struct.intel_guc_ct* %136, i32 0, i32 0
  %138 = load i64, i64* %18, align 8
  %139 = call i32 @spin_lock_irqsave(i32* %137, i64 %138)
  %140 = getelementptr inbounds %struct.ct_request, %struct.ct_request* %17, i32 0, i32 4
  %141 = call i32 @list_del(i32* %140)
  %142 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %8, align 8
  %143 = getelementptr inbounds %struct.intel_guc_ct, %struct.intel_guc_ct* %142, i32 0, i32 0
  %144 = load i64, i64* %18, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  %146 = load i32, i32* %20, align 4
  ret i32 %146
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @ctch_get_next_fence(%struct.intel_guc_ct_channel*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ctb_write(%struct.intel_guc_ct_buffer*, i32*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @intel_guc_notify(i32) #1

declare dso_local i32 @ct_to_guc(%struct.intel_guc_ct*) #1

declare dso_local i32 @wait_for_ct_request_update(%struct.ct_request*, i32*) #1

declare dso_local i32 @wait_for_ctb_desc_update(%struct.guc_ct_buffer_desc*, i32, i32*) #1

declare dso_local i32 @INTEL_GUC_MSG_IS_RESPONSE_SUCCESS(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @INTEL_GUC_MSG_TO_DATA(i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
