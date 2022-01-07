; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devm_devfreq_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devm_devfreq_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq = type { i32 }
%struct.device = type { i32 }
%struct.devfreq_dev_profile = type { i32 }

@devm_devfreq_dev_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.devfreq* @devm_devfreq_add_device(%struct.device* %0, %struct.devfreq_dev_profile* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.devfreq*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.devfreq_dev_profile*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.devfreq**, align 8
  %11 = alloca %struct.devfreq*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.devfreq_dev_profile* %1, %struct.devfreq_dev_profile** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @devm_devfreq_dev_release, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.devfreq** @devres_alloc(i32 %12, i32 8, i32 %13)
  store %struct.devfreq** %14, %struct.devfreq*** %10, align 8
  %15 = load %struct.devfreq**, %struct.devfreq*** %10, align 8
  %16 = icmp ne %struct.devfreq** %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.devfreq* @ERR_PTR(i32 %19)
  store %struct.devfreq* %20, %struct.devfreq** %5, align 8
  br label %41

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load %struct.devfreq_dev_profile*, %struct.devfreq_dev_profile** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call %struct.devfreq* @devfreq_add_device(%struct.device* %22, %struct.devfreq_dev_profile* %23, i8* %24, i8* %25)
  store %struct.devfreq* %26, %struct.devfreq** %11, align 8
  %27 = load %struct.devfreq*, %struct.devfreq** %11, align 8
  %28 = call i64 @IS_ERR(%struct.devfreq* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load %struct.devfreq**, %struct.devfreq*** %10, align 8
  %32 = call i32 @devres_free(%struct.devfreq** %31)
  %33 = load %struct.devfreq*, %struct.devfreq** %11, align 8
  store %struct.devfreq* %33, %struct.devfreq** %5, align 8
  br label %41

34:                                               ; preds = %21
  %35 = load %struct.devfreq*, %struct.devfreq** %11, align 8
  %36 = load %struct.devfreq**, %struct.devfreq*** %10, align 8
  store %struct.devfreq* %35, %struct.devfreq** %36, align 8
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load %struct.devfreq**, %struct.devfreq*** %10, align 8
  %39 = call i32 @devres_add(%struct.device* %37, %struct.devfreq** %38)
  %40 = load %struct.devfreq*, %struct.devfreq** %11, align 8
  store %struct.devfreq* %40, %struct.devfreq** %5, align 8
  br label %41

41:                                               ; preds = %34, %30, %17
  %42 = load %struct.devfreq*, %struct.devfreq** %5, align 8
  ret %struct.devfreq* %42
}

declare dso_local %struct.devfreq** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.devfreq* @ERR_PTR(i32) #1

declare dso_local %struct.devfreq* @devfreq_add_device(%struct.device*, %struct.devfreq_dev_profile*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.devfreq*) #1

declare dso_local i32 @devres_free(%struct.devfreq**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.devfreq**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
