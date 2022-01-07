; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devm_devfreq_register_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq.c_devm_devfreq_register_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.devfreq = type { i32 }
%struct.notifier_block = type { i32 }
%struct.devfreq_notifier_devres = type { i32, %struct.notifier_block*, %struct.devfreq* }

@devm_devfreq_notifier_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_devfreq_register_notifier(%struct.device* %0, %struct.devfreq* %1, %struct.notifier_block* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.devfreq*, align 8
  %8 = alloca %struct.notifier_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.devfreq_notifier_devres*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.devfreq* %1, %struct.devfreq** %7, align 8
  store %struct.notifier_block* %2, %struct.notifier_block** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @devm_devfreq_notifier_release, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.devfreq_notifier_devres* @devres_alloc(i32 %12, i32 24, i32 %13)
  store %struct.devfreq_notifier_devres* %14, %struct.devfreq_notifier_devres** %10, align 8
  %15 = load %struct.devfreq_notifier_devres*, %struct.devfreq_notifier_devres** %10, align 8
  %16 = icmp ne %struct.devfreq_notifier_devres* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %44

20:                                               ; preds = %4
  %21 = load %struct.devfreq*, %struct.devfreq** %7, align 8
  %22 = load %struct.notifier_block*, %struct.notifier_block** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @devfreq_register_notifier(%struct.devfreq* %21, %struct.notifier_block* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.devfreq_notifier_devres*, %struct.devfreq_notifier_devres** %10, align 8
  %29 = call i32 @devres_free(%struct.devfreq_notifier_devres* %28)
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %44

31:                                               ; preds = %20
  %32 = load %struct.devfreq*, %struct.devfreq** %7, align 8
  %33 = load %struct.devfreq_notifier_devres*, %struct.devfreq_notifier_devres** %10, align 8
  %34 = getelementptr inbounds %struct.devfreq_notifier_devres, %struct.devfreq_notifier_devres* %33, i32 0, i32 2
  store %struct.devfreq* %32, %struct.devfreq** %34, align 8
  %35 = load %struct.notifier_block*, %struct.notifier_block** %8, align 8
  %36 = load %struct.devfreq_notifier_devres*, %struct.devfreq_notifier_devres** %10, align 8
  %37 = getelementptr inbounds %struct.devfreq_notifier_devres, %struct.devfreq_notifier_devres* %36, i32 0, i32 1
  store %struct.notifier_block* %35, %struct.notifier_block** %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.devfreq_notifier_devres*, %struct.devfreq_notifier_devres** %10, align 8
  %40 = getelementptr inbounds %struct.devfreq_notifier_devres, %struct.devfreq_notifier_devres* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.devfreq_notifier_devres*, %struct.devfreq_notifier_devres** %10, align 8
  %43 = call i32 @devres_add(%struct.device* %41, %struct.devfreq_notifier_devres* %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %31, %27, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.devfreq_notifier_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @devfreq_register_notifier(%struct.devfreq*, %struct.notifier_block*, i32) #1

declare dso_local i32 @devres_free(%struct.devfreq_notifier_devres*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.devfreq_notifier_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
