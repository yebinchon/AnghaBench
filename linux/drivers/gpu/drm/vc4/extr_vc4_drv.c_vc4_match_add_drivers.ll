; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_drv.c_vc4_match_add_drivers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_drv.c_vc4_match_add_drivers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.component_match = type { i32 }
%struct.platform_driver = type { %struct.device_driver }
%struct.device_driver = type { i32 }

@compare_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.component_match**, %struct.platform_driver**, i32)* @vc4_match_add_drivers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_match_add_drivers(%struct.device* %0, %struct.component_match** %1, %struct.platform_driver** %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.component_match**, align 8
  %7 = alloca %struct.platform_driver**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_driver*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.component_match** %1, %struct.component_match*** %6, align 8
  store %struct.platform_driver** %2, %struct.platform_driver*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %41, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load %struct.platform_driver**, %struct.platform_driver*** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.platform_driver*, %struct.platform_driver** %18, i64 %20
  %22 = load %struct.platform_driver*, %struct.platform_driver** %21, align 8
  %23 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %22, i32 0, i32 0
  store %struct.device_driver* %23, %struct.device_driver** %10, align 8
  store %struct.device* null, %struct.device** %11, align 8
  br label %24

24:                                               ; preds = %29, %17
  %25 = load %struct.device*, %struct.device** %11, align 8
  %26 = load %struct.device_driver*, %struct.device_driver** %10, align 8
  %27 = call %struct.device* @platform_find_device_by_driver(%struct.device* %25, %struct.device_driver* %26)
  store %struct.device* %27, %struct.device** %12, align 8
  %28 = icmp ne %struct.device* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.device*, %struct.device** %11, align 8
  %31 = call i32 @put_device(%struct.device* %30)
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.component_match**, %struct.component_match*** %6, align 8
  %34 = load i32, i32* @compare_dev, align 4
  %35 = load %struct.device*, %struct.device** %12, align 8
  %36 = call i32 @component_match_add(%struct.device* %32, %struct.component_match** %33, i32 %34, %struct.device* %35)
  %37 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %37, %struct.device** %11, align 8
  br label %24

38:                                               ; preds = %24
  %39 = load %struct.device*, %struct.device** %11, align 8
  %40 = call i32 @put_device(%struct.device* %39)
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %13

44:                                               ; preds = %13
  ret void
}

declare dso_local %struct.device* @platform_find_device_by_driver(%struct.device*, %struct.device_driver*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @component_match_add(%struct.device*, %struct.component_match**, i32, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
