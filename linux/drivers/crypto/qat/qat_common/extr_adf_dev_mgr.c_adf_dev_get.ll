; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_dev_mgr.c_adf_dev_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_dev_mgr.c_adf_dev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { i32, i32 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adf_dev_get(%struct.adf_accel_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adf_accel_dev*, align 8
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %3, align 8
  %4 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %5 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %4, i32 0, i32 1
  %6 = call i32 @atomic_add_return(i32 1, i32* %5)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %3, align 8
  %10 = getelementptr inbounds %struct.adf_accel_dev, %struct.adf_accel_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @try_module_get(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @EFAULT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %19

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17, %1
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
