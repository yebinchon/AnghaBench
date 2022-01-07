; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_drv.c_mcde_drm_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_drv.c_mcde_drm_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"can't bind component devices\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mcde_drm_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcde_drm_bind(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %6)
  store %struct.drm_device* %7, %struct.drm_device** %4, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = call i32 @drm_mode_config_init(%struct.drm_device* %8)
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = call i32 @component_bind_all(i32 %12, %struct.drm_device* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %23 = call i32 @mcde_modeset_init(%struct.drm_device* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %34

27:                                               ; preds = %21
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = call i32 @drm_dev_register(%struct.drm_device* %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %41

34:                                               ; preds = %32, %26
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %39 = call i32 @component_unbind_all(i32 %37, %struct.drm_device* %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %34, %33, %17
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @component_bind_all(i32, %struct.drm_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mcde_modeset_init(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @component_unbind_all(i32, %struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
