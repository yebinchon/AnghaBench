; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_guc_read_update_log_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_guc_read_update_log_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_log = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.guc_log_buffer_state = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"no sub-buffer to capture logs\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@GUC_ISR_LOG_BUFFER = common dso_local global i32 0, align 4
@GUC_MAX_LOG_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid log buffer state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_guc_log*)* @guc_read_update_log_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_read_update_log_buffer(%struct.intel_guc_log* %0) #0 {
  %2 = alloca %struct.intel_guc_log*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.guc_log_buffer_state*, align 8
  %9 = alloca %struct.guc_log_buffer_state*, align 8
  %10 = alloca %struct.guc_log_buffer_state, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.intel_guc_log* %0, %struct.intel_guc_log** %2, align 8
  %15 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %16 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %20 = call i32 @intel_guc_log_relay_enabled(%struct.intel_guc_log* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %168

27:                                               ; preds = %1
  %28 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %29 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %12, align 8
  %32 = bitcast i8* %31 to %struct.guc_log_buffer_state*
  store %struct.guc_log_buffer_state* %32, %struct.guc_log_buffer_state** %8, align 8
  %33 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %34 = call i8* @guc_get_write_buffer(%struct.intel_guc_log* %33)
  store i8* %34, i8** %13, align 8
  %35 = bitcast i8* %34 to %struct.guc_log_buffer_state*
  store %struct.guc_log_buffer_state* %35, %struct.guc_log_buffer_state** %9, align 8
  %36 = load %struct.guc_log_buffer_state*, %struct.guc_log_buffer_state** %9, align 8
  %37 = icmp ne %struct.guc_log_buffer_state* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %27
  %43 = call i32 @DRM_ERROR_RATELIMITED(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %45 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %168

49:                                               ; preds = %27
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = load i8*, i8** %12, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr i8, i8* %51, i64 %52
  store i8* %53, i8** %12, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr i8, i8* %55, i64 %56
  store i8* %57, i8** %13, align 8
  %58 = load i32, i32* @GUC_ISR_LOG_BUFFER, align 4
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %162, %49
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @GUC_MAX_LOG_BUFFER, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %165

63:                                               ; preds = %59
  %64 = load %struct.guc_log_buffer_state*, %struct.guc_log_buffer_state** %8, align 8
  %65 = call i32 @memcpy(%struct.guc_log_buffer_state* %10, %struct.guc_log_buffer_state* %64, i32 24)
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @guc_get_log_buffer_size(i32 %66)
  store i32 %67, i32* %3, align 4
  %68 = getelementptr inbounds %struct.guc_log_buffer_state, %struct.guc_log_buffer_state* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %4, align 4
  %70 = getelementptr inbounds %struct.guc_log_buffer_state, %struct.guc_log_buffer_state* %10, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %5, align 4
  %72 = getelementptr inbounds %struct.guc_log_buffer_state, %struct.guc_log_buffer_state* %10, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %7, align 4
  %74 = getelementptr inbounds %struct.guc_log_buffer_state, %struct.guc_log_buffer_state* %10, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %77 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %75
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  %87 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @guc_check_log_buf_overflow(%struct.intel_guc_log* %87, i32 %88, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.guc_log_buffer_state*, %struct.guc_log_buffer_state** %8, align 8
  %93 = getelementptr inbounds %struct.guc_log_buffer_state, %struct.guc_log_buffer_state* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.guc_log_buffer_state*, %struct.guc_log_buffer_state** %8, align 8
  %95 = getelementptr inbounds %struct.guc_log_buffer_state, %struct.guc_log_buffer_state* %94, i32 0, i32 4
  store i64 0, i64* %95, align 8
  %96 = load %struct.guc_log_buffer_state*, %struct.guc_log_buffer_state** %8, align 8
  %97 = getelementptr inbounds %struct.guc_log_buffer_state, %struct.guc_log_buffer_state* %96, i32 1
  store %struct.guc_log_buffer_state* %97, %struct.guc_log_buffer_state** %8, align 8
  %98 = load %struct.guc_log_buffer_state*, %struct.guc_log_buffer_state** %9, align 8
  %99 = call i32 @memcpy(%struct.guc_log_buffer_state* %98, %struct.guc_log_buffer_state* %10, i32 24)
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.guc_log_buffer_state*, %struct.guc_log_buffer_state** %9, align 8
  %102 = getelementptr inbounds %struct.guc_log_buffer_state, %struct.guc_log_buffer_state* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.guc_log_buffer_state*, %struct.guc_log_buffer_state** %9, align 8
  %104 = getelementptr inbounds %struct.guc_log_buffer_state, %struct.guc_log_buffer_state* %103, i32 1
  store %struct.guc_log_buffer_state* %104, %struct.guc_log_buffer_state** %9, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %63
  store i32 0, i32* %4, align 4
  %109 = load i32, i32* %3, align 4
  store i32 %109, i32* %5, align 4
  br label %127

110:                                              ; preds = %63
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %3, align 4
  %113 = icmp ugt i32 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %3, align 4
  %117 = icmp ugt i32 %115, %116
  br label %118

118:                                              ; preds = %114, %110
  %119 = phi i1 [ true, %110 ], [ %117, %114 ]
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %125 = load i32, i32* %3, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %123, %118
  br label %127

127:                                              ; preds = %126, %108
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp ugt i32 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load i8*, i8** %13, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @i915_memcpy_from_wc(i8* %132, i8* %133, i32 %134)
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* %4, align 4
  %138 = sub i32 %136, %137
  store i32 %138, i32* %6, align 4
  br label %143

139:                                              ; preds = %127
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %4, align 4
  %142 = sub i32 %140, %141
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %139, %131
  %144 = load i8*, i8** %13, align 8
  %145 = load i32, i32* %4, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr i8, i8* %144, i64 %146
  %148 = load i8*, i8** %12, align 8
  %149 = load i32, i32* %4, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr i8, i8* %148, i64 %150
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @i915_memcpy_from_wc(i8* %147, i8* %151, i32 %152)
  %154 = load i32, i32* %3, align 4
  %155 = load i8*, i8** %12, align 8
  %156 = zext i32 %154 to i64
  %157 = getelementptr i8, i8* %155, i64 %156
  store i8* %157, i8** %12, align 8
  %158 = load i32, i32* %3, align 4
  %159 = load i8*, i8** %13, align 8
  %160 = zext i32 %158 to i64
  %161 = getelementptr i8, i8* %159, i64 %160
  store i8* %161, i8** %13, align 8
  br label %162

162:                                              ; preds = %143
  %163 = load i32, i32* %11, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %11, align 4
  br label %59

165:                                              ; preds = %59
  %166 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %167 = call i32 @guc_move_to_next_buf(%struct.intel_guc_log* %166)
  br label %168

168:                                              ; preds = %165, %42, %26
  %169 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %170 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = call i32 @mutex_unlock(i32* %171)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_guc_log_relay_enabled(%struct.intel_guc_log*) #1

declare dso_local i8* @guc_get_write_buffer(%struct.intel_guc_log*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DRM_ERROR_RATELIMITED(i8*) #1

declare dso_local i32 @memcpy(%struct.guc_log_buffer_state*, %struct.guc_log_buffer_state*, i32) #1

declare dso_local i32 @guc_get_log_buffer_size(i32) #1

declare dso_local i32 @guc_check_log_buf_overflow(%struct.intel_guc_log*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @i915_memcpy_from_wc(i8*, i8*, i32) #1

declare dso_local i32 @guc_move_to_next_buf(%struct.intel_guc_log*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
