; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_device.c_panfrost_regulator_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_device.c_panfrost_regulator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mali\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get regulator: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to enable regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panfrost_device*)* @panfrost_regulator_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panfrost_regulator_init(%struct.panfrost_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panfrost_device*, align 8
  %4 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %3, align 8
  %5 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %6 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @devm_regulator_get(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %10 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %12 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @IS_ERR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %18 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PTR_ERR(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %22 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %1
  %28 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %29 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regulator_enable(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %36 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %42

41:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %34, %16
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @devm_regulator_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
