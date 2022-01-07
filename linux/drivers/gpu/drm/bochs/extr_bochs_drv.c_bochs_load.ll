; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_drv.c_bochs_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_drv.c_bochs_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.bochs_device* }
%struct.bochs_device = type { %struct.drm_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @bochs_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bochs_load(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.bochs_device*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.bochs_device* @kzalloc(i32 8, i32 %6)
  store %struct.bochs_device* %7, %struct.bochs_device** %4, align 8
  %8 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %9 = icmp eq %struct.bochs_device* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  store %struct.bochs_device* %14, %struct.bochs_device** %16, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %18 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %19 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %18, i32 0, i32 0
  store %struct.drm_device* %17, %struct.drm_device** %19, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = call i32 @bochs_hw_init(%struct.drm_device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %38

25:                                               ; preds = %13
  %26 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %27 = call i32 @bochs_mm_init(%struct.bochs_device* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %38

31:                                               ; preds = %25
  %32 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %33 = call i32 @bochs_kms_init(%struct.bochs_device* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %42

38:                                               ; preds = %36, %30, %24
  %39 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %40 = call i32 @bochs_unload(%struct.drm_device* %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %37, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.bochs_device* @kzalloc(i32, i32) #1

declare dso_local i32 @bochs_hw_init(%struct.drm_device*) #1

declare dso_local i32 @bochs_mm_init(%struct.bochs_device*) #1

declare dso_local i32 @bochs_kms_init(%struct.bochs_device*) #1

declare dso_local i32 @bochs_unload(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
