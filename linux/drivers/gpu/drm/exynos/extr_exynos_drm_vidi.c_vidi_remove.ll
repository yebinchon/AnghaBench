; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_vidi.c_vidi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.vidi_context = type { %struct.edid* }
%struct.edid = type { i32 }

@fake_edid_info = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@vidi_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vidi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.vidi_context*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.vidi_context* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.vidi_context* %6, %struct.vidi_context** %4, align 8
  %7 = load %struct.vidi_context*, %struct.vidi_context** %4, align 8
  %8 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %7, i32 0, i32 0
  %9 = load %struct.edid*, %struct.edid** %8, align 8
  %10 = load i64, i64* @fake_edid_info, align 8
  %11 = inttoptr i64 %10 to %struct.edid*
  %12 = icmp ne %struct.edid* %9, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.vidi_context*, %struct.vidi_context** %4, align 8
  %15 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %14, i32 0, i32 0
  %16 = load %struct.edid*, %struct.edid** %15, align 8
  %17 = call i32 @kfree(%struct.edid* %16)
  %18 = load %struct.vidi_context*, %struct.vidi_context** %4, align 8
  %19 = getelementptr inbounds %struct.vidi_context, %struct.vidi_context* %18, i32 0, i32 0
  store %struct.edid* null, %struct.edid** %19, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @component_del(i32* %24, i32* @vidi_component_ops)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.vidi_context* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

declare dso_local i32 @component_del(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
