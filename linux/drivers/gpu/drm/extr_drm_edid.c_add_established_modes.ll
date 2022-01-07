; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_add_established_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_add_established_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.edid = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.detailed_mode_closure = type { i32, %struct.edid*, %struct.drm_connector* }
%struct.drm_display_mode = type { i32 }

@EDID_EST_TIMINGS = common dso_local global i32 0, align 4
@edid_est_modes = common dso_local global i32* null, align 8
@do_established_modes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.edid*)* @add_established_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_established_modes(%struct.drm_connector* %0, %struct.edid* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.edid*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.detailed_mode_closure, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.edid* %1, %struct.edid** %4, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.edid*, %struct.edid** %4, align 8
  %15 = getelementptr inbounds %struct.edid, %struct.edid* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.edid*, %struct.edid** %4, align 8
  %19 = getelementptr inbounds %struct.edid, %struct.edid* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 8
  %23 = or i32 %17, %22
  %24 = load %struct.edid*, %struct.edid** %4, align 8
  %25 = getelementptr inbounds %struct.edid, %struct.edid* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 128
  %29 = shl i32 %28, 9
  %30 = or i32 %23, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %32 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %9, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %9, i32 0, i32 1
  %34 = load %struct.edid*, %struct.edid** %4, align 8
  store %struct.edid* %34, %struct.edid** %33, align 8
  %35 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %9, i32 0, i32 2
  %36 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  store %struct.drm_connector* %36, %struct.drm_connector** %35, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %65, %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @EDID_EST_TIMINGS, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 1, %43
  %45 = sext i32 %44 to i64
  %46 = and i64 %42, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %41
  %49 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %50 = load i32*, i32** @edid_est_modes, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %49, i32* %53)
  store %struct.drm_display_mode* %54, %struct.drm_display_mode** %10, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %56 = icmp ne %struct.drm_display_mode* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %60 = call i32 @drm_mode_probed_add(%struct.drm_connector* %58, %struct.drm_display_mode* %59)
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %57, %48
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %37

68:                                               ; preds = %37
  %69 = load %struct.edid*, %struct.edid** %4, align 8
  %70 = call i64 @version_greater(%struct.edid* %69, i32 1, i32 0)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.edid*, %struct.edid** %4, align 8
  %74 = bitcast %struct.edid* %73 to i32*
  %75 = load i32, i32* @do_established_modes, align 4
  %76 = call i32 @drm_for_each_detailed_block(i32* %74, i32 %75, %struct.detailed_mode_closure* %9)
  br label %77

77:                                               ; preds = %72, %68
  %78 = load i32, i32* %8, align 4
  %79 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %9, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %78, %80
  ret i32 %81
}

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, i32*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i64 @version_greater(%struct.edid*, i32, i32) #1

declare dso_local i32 @drm_for_each_detailed_block(i32*, i32, %struct.detailed_mode_closure*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
