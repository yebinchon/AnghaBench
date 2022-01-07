; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_hangcheck.c_hws_seqno.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_hangcheck.c_hws_seqno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hang = type { i32* }
%struct.i915_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hang*, %struct.i915_request*)* @hws_seqno to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hws_seqno(%struct.hang* %0, %struct.i915_request* %1) #0 {
  %3 = alloca %struct.hang*, align 8
  %4 = alloca %struct.i915_request*, align 8
  store %struct.hang* %0, %struct.hang** %3, align 8
  store %struct.i915_request* %1, %struct.i915_request** %4, align 8
  %5 = load %struct.hang*, %struct.hang** %3, align 8
  %6 = getelementptr inbounds %struct.hang, %struct.hang* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %9 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 4
  %16 = urem i64 %12, %15
  %17 = getelementptr inbounds i32, i32* %7, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @READ_ONCE(i32 %18)
  ret i32 %19
}

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
