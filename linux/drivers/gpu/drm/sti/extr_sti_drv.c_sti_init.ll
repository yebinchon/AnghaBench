; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_drv.c_sti_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_drv.c_sti_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i8* }
%struct.sti_private = type { %struct.drm_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @sti_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.sti_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.sti_private* @kzalloc(i32 8, i32 %5)
  store %struct.sti_private* %6, %struct.sti_private** %4, align 8
  %7 = load %struct.sti_private*, %struct.sti_private** %4, align 8
  %8 = icmp ne %struct.sti_private* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.sti_private*, %struct.sti_private** %4, align 8
  %14 = bitcast %struct.sti_private* %13 to i8*
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = call i32 @dev_set_drvdata(i32 %19, %struct.drm_device* %20)
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = load %struct.sti_private*, %struct.sti_private** %4, align 8
  %24 = getelementptr inbounds %struct.sti_private, %struct.sti_private* %23, i32 0, i32 0
  store %struct.drm_device* %22, %struct.drm_device** %24, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = call i32 @drm_mode_config_init(%struct.drm_device* %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = call i32 @sti_mode_config_init(%struct.drm_device* %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %12, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.sti_private* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32, %struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @sti_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
