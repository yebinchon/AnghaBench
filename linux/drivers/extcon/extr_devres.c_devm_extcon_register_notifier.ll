; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_devres.c_devm_extcon_register_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_devres.c_devm_extcon_register_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.extcon_dev = type { i32 }
%struct.notifier_block = type { i32 }
%struct.extcon_dev_notifier_devres = type { i32, %struct.notifier_block*, %struct.extcon_dev* }

@devm_extcon_dev_notifier_unreg = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_extcon_register_notifier(%struct.device* %0, %struct.extcon_dev* %1, i32 %2, %struct.notifier_block* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.extcon_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.notifier_block*, align 8
  %10 = alloca %struct.extcon_dev_notifier_devres*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.extcon_dev* %1, %struct.extcon_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.notifier_block* %3, %struct.notifier_block** %9, align 8
  %12 = load i32, i32* @devm_extcon_dev_notifier_unreg, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.extcon_dev_notifier_devres* @devres_alloc(i32 %12, i32 24, i32 %13)
  store %struct.extcon_dev_notifier_devres* %14, %struct.extcon_dev_notifier_devres** %10, align 8
  %15 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %10, align 8
  %16 = icmp ne %struct.extcon_dev_notifier_devres* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %44

20:                                               ; preds = %4
  %21 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.notifier_block*, %struct.notifier_block** %9, align 8
  %24 = call i32 @extcon_register_notifier(%struct.extcon_dev* %21, i32 %22, %struct.notifier_block* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %10, align 8
  %29 = call i32 @devres_free(%struct.extcon_dev_notifier_devres* %28)
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %44

31:                                               ; preds = %20
  %32 = load %struct.extcon_dev*, %struct.extcon_dev** %7, align 8
  %33 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %10, align 8
  %34 = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %33, i32 0, i32 2
  store %struct.extcon_dev* %32, %struct.extcon_dev** %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %10, align 8
  %37 = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.notifier_block*, %struct.notifier_block** %9, align 8
  %39 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %10, align 8
  %40 = getelementptr inbounds %struct.extcon_dev_notifier_devres, %struct.extcon_dev_notifier_devres* %39, i32 0, i32 1
  store %struct.notifier_block* %38, %struct.notifier_block** %40, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.extcon_dev_notifier_devres*, %struct.extcon_dev_notifier_devres** %10, align 8
  %43 = call i32 @devres_add(%struct.device* %41, %struct.extcon_dev_notifier_devres* %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %31, %27, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.extcon_dev_notifier_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @extcon_register_notifier(%struct.extcon_dev*, i32, %struct.notifier_block*) #1

declare dso_local i32 @devres_free(%struct.extcon_dev_notifier_devres*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.extcon_dev_notifier_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
