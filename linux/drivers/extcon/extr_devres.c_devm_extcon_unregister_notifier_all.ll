; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_devres.c_devm_extcon_unregister_notifier_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_devres.c_devm_extcon_unregister_notifier_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.extcon_dev = type { i32 }
%struct.notifier_block = type { i32 }

@devm_extcon_dev_notifier_all_unreg = common dso_local global i32 0, align 4
@devm_extcon_dev_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devm_extcon_unregister_notifier_all(%struct.device* %0, %struct.extcon_dev* %1, %struct.notifier_block* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.extcon_dev*, align 8
  %6 = alloca %struct.notifier_block*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.extcon_dev* %1, %struct.extcon_dev** %5, align 8
  store %struct.notifier_block* %2, %struct.notifier_block** %6, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i32, i32* @devm_extcon_dev_notifier_all_unreg, align 4
  %9 = load i32, i32* @devm_extcon_dev_match, align 4
  %10 = load %struct.extcon_dev*, %struct.extcon_dev** %5, align 8
  %11 = call i32 @devres_release(%struct.device* %7, i32 %8, i32 %9, %struct.extcon_dev* %10)
  %12 = call i32 @WARN_ON(i32 %11)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @devres_release(%struct.device*, i32, i32, %struct.extcon_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
