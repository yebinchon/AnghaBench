; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_atomic.c_msm_atomic_commit_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_atomic.c_msm_atomic_commit_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { %struct.drm_device* }
%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_kms* }
%struct.msm_kms = type { i32, %struct.TYPE_2__*, i32, %struct.msm_pending_timer* }
%struct.TYPE_2__ = type { i32 (%struct.msm_kms*)*, i32 (%struct.msm_kms*, i32)*, i32 (%struct.msm_kms*, i32)*, i32 (%struct.msm_kms*, i32)*, i32 (%struct.msm_kms*, %struct.drm_crtc*)*, i32 (%struct.msm_kms*, %struct.drm_atomic_state*)*, i32 (%struct.msm_kms*)* }
%struct.drm_crtc = type { i32 }
%struct.msm_pending_timer = type { i32 }

@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_atomic_commit_tail(%struct.drm_atomic_state* %0) #0 {
  %2 = alloca %struct.drm_atomic_state*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  %5 = alloca %struct.msm_kms*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.msm_pending_timer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %2, align 8
  %12 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %13 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %3, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.msm_drm_private*, %struct.msm_drm_private** %16, align 8
  store %struct.msm_drm_private* %17, %struct.msm_drm_private** %4, align 8
  %18 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %19 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %18, i32 0, i32 0
  %20 = load %struct.msm_kms*, %struct.msm_kms** %19, align 8
  store %struct.msm_kms* %20, %struct.msm_kms** %5, align 8
  store %struct.drm_crtc* null, %struct.drm_crtc** %6, align 8
  %21 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %22 = call i32 @get_crtc_mask(%struct.drm_atomic_state* %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %24 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i32 (%struct.msm_kms*, %struct.drm_crtc*)*, i32 (%struct.msm_kms*, %struct.drm_crtc*)** %26, align 8
  %28 = icmp ne i32 (%struct.msm_kms*, %struct.drm_crtc*)* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %31 = call i64 @can_do_async(%struct.drm_atomic_state* %30, %struct.drm_crtc** %6)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %29, %1
  %34 = phi i1 [ false, %1 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @trace_msm_atomic_commit_tail_start(i32 %36, i32 %37)
  %39 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %40 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 6
  %43 = load i32 (%struct.msm_kms*)*, i32 (%struct.msm_kms*)** %42, align 8
  %44 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %45 = call i32 %43(%struct.msm_kms* %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @trace_msm_atomic_wait_flush_start(i32 %46)
  %48 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %49 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32 (%struct.msm_kms*, i32)*, i32 (%struct.msm_kms*, i32)** %51, align 8
  %53 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 %52(%struct.msm_kms* %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @trace_msm_atomic_wait_flush_finish(i32 %56)
  %58 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %59 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %58, i32 0, i32 2
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %62 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  %65 = load i32 (%struct.msm_kms*, %struct.drm_atomic_state*)*, i32 (%struct.msm_kms*, %struct.drm_atomic_state*)** %64, align 8
  %66 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %67 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %68 = call i32 %65(%struct.msm_kms* %66, %struct.drm_atomic_state* %67)
  %69 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %70 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %71 = call i32 @drm_atomic_helper_commit_modeset_disables(%struct.drm_device* %69, %struct.drm_atomic_state* %70)
  %72 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %73 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %74 = call i32 @drm_atomic_helper_commit_planes(%struct.drm_device* %72, %struct.drm_atomic_state* %73, i32 0)
  %75 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %76 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %77 = call i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device* %75, %struct.drm_atomic_state* %76)
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %140

80:                                               ; preds = %33
  %81 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %82 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %81, i32 0, i32 3
  %83 = load %struct.msm_pending_timer*, %struct.msm_pending_timer** %82, align 8
  %84 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %85 = call i64 @drm_crtc_index(%struct.drm_crtc* %84)
  %86 = getelementptr inbounds %struct.msm_pending_timer, %struct.msm_pending_timer* %83, i64 %85
  store %struct.msm_pending_timer* %86, %struct.msm_pending_timer** %9, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %89 = call i32 @drm_crtc_mask(%struct.drm_crtc* %88)
  %90 = icmp ne i32 %87, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @WARN_ON(i32 %91)
  %93 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %94 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %121, label %99

99:                                               ; preds = %80
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %102 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %106 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  %109 = load i32 (%struct.msm_kms*, %struct.drm_crtc*)*, i32 (%struct.msm_kms*, %struct.drm_crtc*)** %108, align 8
  %110 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %111 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %112 = call i32 %109(%struct.msm_kms* %110, %struct.drm_crtc* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @ms_to_ktime(i32 1)
  %115 = call i32 @ktime_sub(i32 %113, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load %struct.msm_pending_timer*, %struct.msm_pending_timer** %9, align 8
  %117 = getelementptr inbounds %struct.msm_pending_timer, %struct.msm_pending_timer* %116, i32 0, i32 0
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %120 = call i32 @hrtimer_start(i32* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %99, %80
  %122 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %123 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %122, i32 0, i32 1
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32 (%struct.msm_kms*)*, i32 (%struct.msm_kms*)** %125, align 8
  %127 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %128 = call i32 %126(%struct.msm_kms* %127)
  %129 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %130 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %129, i32 0, i32 2
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %133 = call i32 @drm_atomic_helper_commit_hw_done(%struct.drm_atomic_state* %132)
  %134 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %135 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %136 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %134, %struct.drm_atomic_state* %135)
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @trace_msm_atomic_commit_tail_finish(i32 %137, i32 %138)
  br label %201

140:                                              ; preds = %33
  %141 = load i32, i32* %7, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %144 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @trace_msm_atomic_flush_commit(i32 %147)
  %149 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %150 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %149, i32 0, i32 1
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 3
  %153 = load i32 (%struct.msm_kms*, i32)*, i32 (%struct.msm_kms*, i32)** %152, align 8
  %154 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i32 %153(%struct.msm_kms* %154, i32 %155)
  %157 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %158 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %157, i32 0, i32 2
  %159 = call i32 @mutex_unlock(i32* %158)
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @trace_msm_atomic_wait_flush_start(i32 %160)
  %162 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %163 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %162, i32 0, i32 1
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  %166 = load i32 (%struct.msm_kms*, i32)*, i32 (%struct.msm_kms*, i32)** %165, align 8
  %167 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %168 = load i32, i32* %7, align 4
  %169 = call i32 %166(%struct.msm_kms* %167, i32 %168)
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @trace_msm_atomic_wait_flush_finish(i32 %170)
  %172 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %173 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %172, i32 0, i32 2
  %174 = call i32 @mutex_lock(i32* %173)
  %175 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %176 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %175, i32 0, i32 1
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  %179 = load i32 (%struct.msm_kms*, i32)*, i32 (%struct.msm_kms*, i32)** %178, align 8
  %180 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %181 = load i32, i32* %7, align 4
  %182 = call i32 %179(%struct.msm_kms* %180, i32 %181)
  %183 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %184 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %183, i32 0, i32 2
  %185 = call i32 @mutex_unlock(i32* %184)
  %186 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %187 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %186, i32 0, i32 1
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32 (%struct.msm_kms*)*, i32 (%struct.msm_kms*)** %189, align 8
  %191 = load %struct.msm_kms*, %struct.msm_kms** %5, align 8
  %192 = call i32 %190(%struct.msm_kms* %191)
  %193 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %194 = call i32 @drm_atomic_helper_commit_hw_done(%struct.drm_atomic_state* %193)
  %195 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %196 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %197 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %195, %struct.drm_atomic_state* %196)
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @trace_msm_atomic_commit_tail_finish(i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %140, %121
  ret void
}

declare dso_local i32 @get_crtc_mask(%struct.drm_atomic_state*) #1

declare dso_local i64 @can_do_async(%struct.drm_atomic_state*, %struct.drm_crtc**) #1

declare dso_local i32 @trace_msm_atomic_commit_tail_start(i32, i32) #1

declare dso_local i32 @trace_msm_atomic_wait_flush_start(i32) #1

declare dso_local i32 @trace_msm_atomic_wait_flush_finish(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_atomic_helper_commit_modeset_disables(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_planes(%struct.drm_device*, %struct.drm_atomic_state*, i32) #1

declare dso_local i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i64 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_crtc_mask(%struct.drm_crtc*) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ms_to_ktime(i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_atomic_helper_commit_hw_done(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @trace_msm_atomic_commit_tail_finish(i32, i32) #1

declare dso_local i32 @trace_msm_atomic_flush_commit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
