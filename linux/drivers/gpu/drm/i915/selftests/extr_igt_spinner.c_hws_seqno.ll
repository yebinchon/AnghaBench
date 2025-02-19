; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_igt_spinner.c_hws_seqno.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_igt_spinner.c_hws_seqno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igt_spinner = type { i32* }
%struct.i915_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igt_spinner*, %struct.i915_request*)* @hws_seqno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hws_seqno(%struct.igt_spinner* %0, %struct.i915_request* %1) #0 {
  %3 = alloca %struct.igt_spinner*, align 8
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca i32*, align 8
  store %struct.igt_spinner* %0, %struct.igt_spinner** %3, align 8
  store %struct.i915_request* %1, %struct.i915_request** %4, align 8
  %6 = load %struct.igt_spinner*, %struct.igt_spinner** %3, align 8
  %7 = getelementptr inbounds %struct.igt_spinner, %struct.igt_spinner* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %10 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @seqno_offset(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %8, i64 %14
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @READ_ONCE(i32 %17)
  ret i32 %18
}

declare dso_local i32 @seqno_offset(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
