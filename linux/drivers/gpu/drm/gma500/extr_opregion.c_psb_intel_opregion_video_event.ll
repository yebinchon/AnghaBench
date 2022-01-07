; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_opregion.c_psb_intel_opregion_video_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_opregion.c_psb_intel_opregion_video_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.opregion_acpi* }
%struct.opregion_acpi = type { i64 }
%struct.notifier_block = type { i32 }

@system_opregion = common dso_local global %struct.TYPE_2__* null, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @psb_intel_opregion_video_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_opregion_video_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.opregion_acpi*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @system_opregion, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %12, i32* %4, align 4
  br label %20

13:                                               ; preds = %3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @system_opregion, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.opregion_acpi*, %struct.opregion_acpi** %15, align 8
  store %struct.opregion_acpi* %16, %struct.opregion_acpi** %8, align 8
  %17 = load %struct.opregion_acpi*, %struct.opregion_acpi** %8, align 8
  %18 = getelementptr inbounds %struct.opregion_acpi, %struct.opregion_acpi* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %13, %11
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
