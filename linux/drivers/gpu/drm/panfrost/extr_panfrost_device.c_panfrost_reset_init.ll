; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_device.c_panfrost_reset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_device.c_panfrost_reset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"get reset failed %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panfrost_device*)* @panfrost_reset_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_reset_init(%struct.panfrost_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panfrost_device*, align 8
  %4 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %3, align 8
  %5 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %6 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @devm_reset_control_array_get(i32 %7, i32 0, i32 1)
  %9 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %10 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %12 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @IS_ERR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %18 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %21 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PTR_ERR(i32 %22)
  %24 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %26 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PTR_ERR(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %39

29:                                               ; preds = %1
  %30 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %31 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @reset_control_deassert(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %36, %16
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @devm_reset_control_array_get(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
