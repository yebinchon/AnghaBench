; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_drv.c_komeda_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_drv.c_komeda_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.komeda_drv = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @komeda_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_bind(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.komeda_drv*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.komeda_drv* @devm_kzalloc(%struct.device* %6, i32 8, i32 %7)
  store %struct.komeda_drv* %8, %struct.komeda_drv** %4, align 8
  %9 = load %struct.komeda_drv*, %struct.komeda_drv** %4, align 8
  %10 = icmp ne %struct.komeda_drv* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %60

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @komeda_dev_create(%struct.device* %15)
  %17 = load %struct.komeda_drv*, %struct.komeda_drv** %4, align 8
  %18 = getelementptr inbounds %struct.komeda_drv, %struct.komeda_drv* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.komeda_drv*, %struct.komeda_drv** %4, align 8
  %20 = getelementptr inbounds %struct.komeda_drv, %struct.komeda_drv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IS_ERR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.komeda_drv*, %struct.komeda_drv** %4, align 8
  %26 = getelementptr inbounds %struct.komeda_drv, %struct.komeda_drv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PTR_ERR(i32 %27)
  store i32 %28, i32* %5, align 4
  br label %55

29:                                               ; preds = %14
  %30 = load %struct.komeda_drv*, %struct.komeda_drv** %4, align 8
  %31 = getelementptr inbounds %struct.komeda_drv, %struct.komeda_drv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @komeda_kms_attach(i32 %32)
  %34 = load %struct.komeda_drv*, %struct.komeda_drv** %4, align 8
  %35 = getelementptr inbounds %struct.komeda_drv, %struct.komeda_drv* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.komeda_drv*, %struct.komeda_drv** %4, align 8
  %37 = getelementptr inbounds %struct.komeda_drv, %struct.komeda_drv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %29
  %42 = load %struct.komeda_drv*, %struct.komeda_drv** %4, align 8
  %43 = getelementptr inbounds %struct.komeda_drv, %struct.komeda_drv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PTR_ERR(i32 %44)
  store i32 %45, i32* %5, align 4
  br label %50

46:                                               ; preds = %29
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = load %struct.komeda_drv*, %struct.komeda_drv** %4, align 8
  %49 = call i32 @dev_set_drvdata(%struct.device* %47, %struct.komeda_drv* %48)
  store i32 0, i32* %2, align 4
  br label %60

50:                                               ; preds = %41
  %51 = load %struct.komeda_drv*, %struct.komeda_drv** %4, align 8
  %52 = getelementptr inbounds %struct.komeda_drv, %struct.komeda_drv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @komeda_dev_destroy(i32 %53)
  br label %55

55:                                               ; preds = %50, %24
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = load %struct.komeda_drv*, %struct.komeda_drv** %4, align 8
  %58 = call i32 @devm_kfree(%struct.device* %56, %struct.komeda_drv* %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %46, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.komeda_drv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @komeda_dev_create(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @komeda_kms_attach(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.komeda_drv*) #1

declare dso_local i32 @komeda_dev_destroy(i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.komeda_drv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
