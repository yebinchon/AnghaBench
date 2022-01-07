; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_devres.c_devm_extcon_register_notifier_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_devres.c_devm_extcon_register_notifier_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.extcon_dev = type { i32 }
%struct.notifier_block = type { i32 }
%struct.extcon_dev_notifier_devres = type { %struct.notifier_block*, %struct.extcon_dev* }

@devm_extcon_dev_notifier_all_unreg = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_extcon_register_notifier_all(%struct.device* %0, %struct.extcon_dev* %1, %struct.notifier_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.extcon_dev*, align 8
  %7 = alloca %struct.notifier_block*, align 8
  %8 = alloca %struct.extcon_dev_notifier_devres*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.extcon_dev* %1, %struct.extcon_dev** %6, align 8
  store %struct.notifier_block* %2, %struct.notifier_block** %7, align 8
  %10 = load i32, i32* @devm_extcon_dev_notifier_all_unreg, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.extcon_dev_notifier_devres* @devres_alloc(i32 %10, i32 16, i32 %11)
  store %struct.extcon_dev_notifier_devres* %12, %struct.extcon_dev_notifier_devres** %8, align 8
  %13 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %8, align 8
  %14 = icmp ne %struct.extcon_dev_notifier_devres* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %20 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %21 = call i32 @extcon_register_notifier_all(%struct.extcon_dev* %19, %struct.notifier_block* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %8, align 8
  %26 = call i32 @devres_free(%struct.extcon_dev_notifier_devres* %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %38

28:                                               ; preds = %18
  %29 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %30 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %8, align 8
  %31 = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %30, i32 0, i32 1
  store %struct.extcon_dev* %29, %struct.extcon_dev** %31, align 8
  %32 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %33 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %8, align 8
  %34 = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %33, i32 0, i32 0
  store %struct.notifier_block* %32, %struct.notifier_block** %34, align 8
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %8, align 8
  %37 = call i32 @devres_add(%struct.device* %35, %struct.extcon_dev_notifier_devres* %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %28, %24, %15
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.extcon_dev_notifier_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @extcon_register_notifier_all(%struct.extcon_dev*, %struct.notifier_block*) #1

declare dso_local i32 @devres_free(%struct.extcon_dev_notifier_devres*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.extcon_dev_notifier_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
