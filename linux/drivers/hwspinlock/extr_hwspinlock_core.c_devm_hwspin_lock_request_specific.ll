; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_devm_hwspin_lock_request_specific.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_devm_hwspin_lock_request_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwspinlock = type { i32 }
%struct.device = type { i32 }

@devm_hwspin_lock_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hwspinlock* @devm_hwspin_lock_request_specific(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.hwspinlock*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwspinlock**, align 8
  %7 = alloca %struct.hwspinlock*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @devm_hwspin_lock_release, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hwspinlock** @devres_alloc(i32 %8, i32 8, i32 %9)
  store %struct.hwspinlock** %10, %struct.hwspinlock*** %6, align 8
  %11 = load %struct.hwspinlock**, %struct.hwspinlock*** %6, align 8
  %12 = icmp ne %struct.hwspinlock** %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.hwspinlock* null, %struct.hwspinlock** %3, align 8
  br label %30

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.hwspinlock* @hwspin_lock_request_specific(i32 %15)
  store %struct.hwspinlock* %16, %struct.hwspinlock** %7, align 8
  %17 = load %struct.hwspinlock*, %struct.hwspinlock** %7, align 8
  %18 = icmp ne %struct.hwspinlock* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.hwspinlock*, %struct.hwspinlock** %7, align 8
  %21 = load %struct.hwspinlock**, %struct.hwspinlock*** %6, align 8
  store %struct.hwspinlock* %20, %struct.hwspinlock** %21, align 8
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.hwspinlock**, %struct.hwspinlock*** %6, align 8
  %24 = call i32 @devres_add(%struct.device* %22, %struct.hwspinlock** %23)
  br label %28

25:                                               ; preds = %14
  %26 = load %struct.hwspinlock**, %struct.hwspinlock*** %6, align 8
  %27 = call i32 @devres_free(%struct.hwspinlock** %26)
  br label %28

28:                                               ; preds = %25, %19
  %29 = load %struct.hwspinlock*, %struct.hwspinlock** %7, align 8
  store %struct.hwspinlock* %29, %struct.hwspinlock** %3, align 8
  br label %30

30:                                               ; preds = %28, %13
  %31 = load %struct.hwspinlock*, %struct.hwspinlock** %3, align 8
  ret %struct.hwspinlock* %31
}

declare dso_local %struct.hwspinlock** @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.hwspinlock* @hwspin_lock_request_specific(i32) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.hwspinlock**) #1

declare dso_local i32 @devres_free(%struct.hwspinlock**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
