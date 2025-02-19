; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_hbuf_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_hbuf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }

@SDVO_CMD_GET_HBUF_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, i64*)* @intel_sdvo_get_hbuf_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_get_hbuf_size(%struct.intel_sdvo* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sdvo*, align 8
  %5 = alloca i64*, align 8
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %7 = load i32, i32* @SDVO_CMD_GET_HBUF_INFO, align 4
  %8 = load i64*, i64** %5, align 8
  %9 = call i32 @intel_sdvo_get_value(%struct.intel_sdvo* %6, i32 %7, i64* %8, i32 1)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

12:                                               ; preds = %2
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  br label %20

20:                                               ; preds = %16, %12
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %11
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @intel_sdvo_get_value(%struct.intel_sdvo*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
