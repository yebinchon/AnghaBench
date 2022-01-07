; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.anx78xx = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to get downstream info: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to read EDID\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to update EDID property: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @anx78xx_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.anx78xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.anx78xx* @connector_to_anx78xx(%struct.drm_connector* %7)
  store %struct.anx78xx* %8, %struct.anx78xx** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %10 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

18:                                               ; preds = %1
  %19 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %20 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %25 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %26 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @drm_add_edid_modes(%struct.drm_connector* %24, i64 %27)
  store i32 %28, i32* %2, align 4
  br label %76

29:                                               ; preds = %18
  %30 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %31 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %34 = call i32 @anx78xx_get_downstream_info(%struct.anx78xx* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %71

40:                                               ; preds = %29
  %41 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %42 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %43 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i64 @drm_get_edid(%struct.drm_connector* %41, i32* %44)
  %46 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %47 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %49 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %40
  %53 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %71

54:                                               ; preds = %40
  %55 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %56 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %57 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %55, i64 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %71

65:                                               ; preds = %54
  %66 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %67 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %68 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @drm_add_edid_modes(%struct.drm_connector* %66, i64 %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %65, %62, %52, %37
  %72 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %73 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %23, %17
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.anx78xx* @connector_to_anx78xx(%struct.drm_connector*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @anx78xx_get_downstream_info(%struct.anx78xx*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i64 @drm_get_edid(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
