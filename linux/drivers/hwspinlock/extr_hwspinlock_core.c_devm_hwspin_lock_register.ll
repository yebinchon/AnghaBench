; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_devm_hwspin_lock_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_devm_hwspin_lock_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hwspinlock_device = type { i32 }
%struct.hwspinlock_ops = type { i32 }

@devm_hwspin_lock_unreg = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_hwspin_lock_register(%struct.device* %0, %struct.hwspinlock_device* %1, %struct.hwspinlock_ops* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.hwspinlock_device*, align 8
  %9 = alloca %struct.hwspinlock_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hwspinlock_device**, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.hwspinlock_device* %1, %struct.hwspinlock_device** %8, align 8
  store %struct.hwspinlock_ops* %2, %struct.hwspinlock_ops** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @devm_hwspin_lock_unreg, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.hwspinlock_device** @devres_alloc(i32 %14, i32 8, i32 %15)
  store %struct.hwspinlock_device** %16, %struct.hwspinlock_device*** %12, align 8
  %17 = load %struct.hwspinlock_device**, %struct.hwspinlock_device*** %12, align 8
  %18 = icmp ne %struct.hwspinlock_device** %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %42

22:                                               ; preds = %5
  %23 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %8, align 8
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = load %struct.hwspinlock_ops*, %struct.hwspinlock_ops** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @hwspin_lock_register(%struct.hwspinlock_device* %23, %struct.device* %24, %struct.hwspinlock_ops* %25, i32 %26, i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %8, align 8
  %33 = load %struct.hwspinlock_device**, %struct.hwspinlock_device*** %12, align 8
  store %struct.hwspinlock_device* %32, %struct.hwspinlock_device** %33, align 8
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = load %struct.hwspinlock_device**, %struct.hwspinlock_device*** %12, align 8
  %36 = call i32 @devres_add(%struct.device* %34, %struct.hwspinlock_device** %35)
  br label %40

37:                                               ; preds = %22
  %38 = load %struct.hwspinlock_device**, %struct.hwspinlock_device*** %12, align 8
  %39 = call i32 @devres_free(%struct.hwspinlock_device** %38)
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %19
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.hwspinlock_device** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @hwspin_lock_register(%struct.hwspinlock_device*, %struct.device*, %struct.hwspinlock_ops*, i32, i32) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.hwspinlock_device**) #1

declare dso_local i32 @devres_free(%struct.hwspinlock_device**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
