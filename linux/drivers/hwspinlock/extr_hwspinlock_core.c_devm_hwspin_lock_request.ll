; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_devm_hwspin_lock_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_devm_hwspin_lock_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwspinlock = type { i32 }
%struct.device = type { i32 }

@devm_hwspin_lock_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hwspinlock* @devm_hwspin_lock_request(%struct.device* %0) #0 {
  %2 = alloca %struct.hwspinlock*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hwspinlock**, align 8
  %5 = alloca %struct.hwspinlock*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load i32, i32* @devm_hwspin_lock_release, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.hwspinlock** @devres_alloc(i32 %6, i32 8, i32 %7)
  store %struct.hwspinlock** %8, %struct.hwspinlock*** %4, align 8
  %9 = load %struct.hwspinlock**, %struct.hwspinlock*** %4, align 8
  %10 = icmp ne %struct.hwspinlock** %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.hwspinlock* null, %struct.hwspinlock** %2, align 8
  br label %27

12:                                               ; preds = %1
  %13 = call %struct.hwspinlock* (...) @hwspin_lock_request()
  store %struct.hwspinlock* %13, %struct.hwspinlock** %5, align 8
  %14 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %15 = icmp ne %struct.hwspinlock* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %18 = load %struct.hwspinlock**, %struct.hwspinlock*** %4, align 8
  store %struct.hwspinlock* %17, %struct.hwspinlock** %18, align 8
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load %struct.hwspinlock**, %struct.hwspinlock*** %4, align 8
  %21 = call i32 @devres_add(%struct.device* %19, %struct.hwspinlock** %20)
  br label %25

22:                                               ; preds = %12
  %23 = load %struct.hwspinlock**, %struct.hwspinlock*** %4, align 8
  %24 = call i32 @devres_free(%struct.hwspinlock** %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  store %struct.hwspinlock* %26, %struct.hwspinlock** %2, align 8
  br label %27

27:                                               ; preds = %25, %11
  %28 = load %struct.hwspinlock*, %struct.hwspinlock** %2, align 8
  ret %struct.hwspinlock* %28
}

declare dso_local %struct.hwspinlock** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.hwspinlock* @hwspin_lock_request(...) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.hwspinlock**) #1

declare dso_local i32 @devres_free(%struct.hwspinlock**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
