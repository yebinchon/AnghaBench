; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq-event.c_devm_devfreq_event_add_edev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_devfreq-event.c_devm_devfreq_event_add_edev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { i32 }
%struct.device = type { i32 }
%struct.devfreq_event_desc = type { i32 }

@devm_devfreq_event_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.devfreq_event_dev* @devm_devfreq_event_add_edev(%struct.device* %0, %struct.devfreq_event_desc* %1) #0 {
  %3 = alloca %struct.devfreq_event_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.devfreq_event_desc*, align 8
  %6 = alloca %struct.devfreq_event_dev**, align 8
  %7 = alloca %struct.devfreq_event_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.devfreq_event_desc* %1, %struct.devfreq_event_desc** %5, align 8
  %8 = load i32, i32* @devm_devfreq_event_release, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.devfreq_event_dev** @devres_alloc(i32 %8, i32 8, i32 %9)
  store %struct.devfreq_event_dev** %10, %struct.devfreq_event_dev*** %6, align 8
  %11 = load %struct.devfreq_event_dev**, %struct.devfreq_event_dev*** %6, align 8
  %12 = icmp ne %struct.devfreq_event_dev** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.devfreq_event_dev* @ERR_PTR(i32 %15)
  store %struct.devfreq_event_dev* %16, %struct.devfreq_event_dev** %3, align 8
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.devfreq_event_desc*, %struct.devfreq_event_desc** %5, align 8
  %20 = call %struct.devfreq_event_dev* @devfreq_event_add_edev(%struct.device* %18, %struct.devfreq_event_desc* %19)
  store %struct.devfreq_event_dev* %20, %struct.devfreq_event_dev** %7, align 8
  %21 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %7, align 8
  %22 = call i64 @IS_ERR(%struct.devfreq_event_dev* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.devfreq_event_dev**, %struct.devfreq_event_dev*** %6, align 8
  %26 = call i32 @devres_free(%struct.devfreq_event_dev** %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.devfreq_event_dev* @ERR_PTR(i32 %28)
  store %struct.devfreq_event_dev* %29, %struct.devfreq_event_dev** %3, align 8
  br label %37

30:                                               ; preds = %17
  %31 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %7, align 8
  %32 = load %struct.devfreq_event_dev**, %struct.devfreq_event_dev*** %6, align 8
  store %struct.devfreq_event_dev* %31, %struct.devfreq_event_dev** %32, align 8
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.devfreq_event_dev**, %struct.devfreq_event_dev*** %6, align 8
  %35 = call i32 @devres_add(%struct.device* %33, %struct.devfreq_event_dev** %34)
  %36 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %7, align 8
  store %struct.devfreq_event_dev* %36, %struct.devfreq_event_dev** %3, align 8
  br label %37

37:                                               ; preds = %30, %24, %13
  %38 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  ret %struct.devfreq_event_dev* %38
}

declare dso_local %struct.devfreq_event_dev** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.devfreq_event_dev* @ERR_PTR(i32) #1

declare dso_local %struct.devfreq_event_dev* @devfreq_event_add_edev(%struct.device*, %struct.devfreq_event_desc*) #1

declare dso_local i64 @IS_ERR(%struct.devfreq_event_dev*) #1

declare dso_local i32 @devres_free(%struct.devfreq_event_dev**) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.devfreq_event_dev**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
