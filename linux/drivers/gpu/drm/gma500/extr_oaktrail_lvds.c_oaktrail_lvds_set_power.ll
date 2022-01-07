; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_lvds.c_oaktrail_lvds_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_lvds.c_oaktrail_lvds_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__*, %struct.drm_psb_private* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_psb_private = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.drm_device*, i32)* }
%struct.gma_encoder = type { i32 }

@PP_CONTROL = common dso_local global i32 0, align 4
@POWER_TARGET_ON = common dso_local global i32 0, align 4
@PP_STATUS = common dso_local global i32 0, align 4
@PP_ON = common dso_local global i32 0, align 4
@PP_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.gma_encoder*, i32)* @oaktrail_lvds_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oaktrail_lvds_set_power(%struct.drm_device* %0, %struct.gma_encoder* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.gma_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_psb_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.gma_encoder* %1, %struct.gma_encoder** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.drm_psb_private*, %struct.drm_psb_private** %10, align 8
  store %struct.drm_psb_private* %11, %struct.drm_psb_private** %8, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = call i32 @gma_power_begin(%struct.drm_device* %12, i32 1)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %97

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  %20 = load i32, i32* @PP_CONTROL, align 4
  %21 = load i32, i32* @PP_CONTROL, align 4
  %22 = call i32 @REG_READ(i32 %21)
  %23 = load i32, i32* @POWER_TARGET_ON, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @REG_WRITE(i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %29, %19
  %27 = load i32, i32* @PP_STATUS, align 4
  %28 = call i32 @REG_READ(i32 %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PP_ON, align 4
  %32 = load i32, i32* @PP_READY, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = load i32, i32* @PP_READY, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %26, label %37

37:                                               ; preds = %29
  %38 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %39 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %41 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %43, align 8
  %45 = icmp ne i32 (%struct.drm_device*, i32)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %48 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %50, align 8
  %52 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %53 = call i32 %51(%struct.drm_device* %52, i32 1)
  br label %54

54:                                               ; preds = %46, %37
  br label %94

55:                                               ; preds = %16
  %56 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %57 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %59, align 8
  %61 = icmp ne i32 (%struct.drm_device*, i32)* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %64 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32 (%struct.drm_device*, i32)*, i32 (%struct.drm_device*, i32)** %66, align 8
  %68 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %69 = call i32 %67(%struct.drm_device* %68, i32 0)
  br label %70

70:                                               ; preds = %62, %55
  %71 = load i32, i32* @PP_CONTROL, align 4
  %72 = load i32, i32* @PP_CONTROL, align 4
  %73 = call i32 @REG_READ(i32 %72)
  %74 = load i32, i32* @POWER_TARGET_ON, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = call i32 @REG_WRITE(i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %81, %70
  %79 = load i32, i32* @PP_STATUS, align 4
  %80 = call i32 @REG_READ(i32 %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @PP_ON, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %78, label %86

86:                                               ; preds = %81
  %87 = load %struct.drm_psb_private*, %struct.drm_psb_private** %8, align 8
  %88 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %90 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @pm_request_idle(i32* %92)
  br label %94

94:                                               ; preds = %86, %54
  %95 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %96 = call i32 @gma_power_end(%struct.drm_device* %95)
  br label %97

97:                                               ; preds = %94, %15
  ret void
}

declare dso_local i32 @gma_power_begin(%struct.drm_device*, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @pm_request_idle(i32*) #1

declare dso_local i32 @gma_power_end(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
