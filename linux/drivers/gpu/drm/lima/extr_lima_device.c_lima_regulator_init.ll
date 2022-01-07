; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.c_lima_regulator_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_device.c_lima_regulator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_device = type { i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"mali\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get regulator: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to enable regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_device*)* @lima_regulator_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_regulator_init(%struct.lima_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_device*, align 8
  %4 = alloca i32, align 4
  store %struct.lima_device* %0, %struct.lima_device** %3, align 8
  %5 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %6 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32* @devm_regulator_get_optional(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %10 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %9, i32 0, i32 1
  store i32* %8, i32** %10, align 8
  %11 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %12 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @IS_ERR(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  %17 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %18 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @PTR_ERR(i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %22 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %56

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @EPROBE_DEFER, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %35 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %56

41:                                               ; preds = %1
  %42 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %43 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @regulator_enable(i32* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.lima_device*, %struct.lima_device** %3, align 8
  %50 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %48, %39, %27
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32* @devm_regulator_get_optional(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
