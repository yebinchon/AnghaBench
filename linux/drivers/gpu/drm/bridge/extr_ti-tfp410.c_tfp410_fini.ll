; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-tfp410.c_tfp410_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-tfp410.c_tfp410_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tfp410 = type { i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tfp410_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_fini(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.tfp410*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.tfp410* @dev_get_drvdata(%struct.device* %4)
  store %struct.tfp410* %5, %struct.tfp410** %3, align 8
  %6 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %7 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %12 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %11, i32 0, i32 4
  %13 = call i32 @cancel_delayed_work_sync(i32* %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %16 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %15, i32 0, i32 3
  %17 = call i32 @drm_bridge_remove(i32* %16)
  %18 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %19 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %24 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @i2c_put_adapter(i64 %25)
  br label %27

27:                                               ; preds = %22, %14
  %28 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %29 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.tfp410*, %struct.tfp410** %3, align 8
  %34 = getelementptr inbounds %struct.tfp410, %struct.tfp410* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @gpiod_put(i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  ret i32 0
}

declare dso_local %struct.tfp410* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @drm_bridge_remove(i32*) #1

declare dso_local i32 @i2c_put_adapter(i64) #1

declare dso_local i32 @gpiod_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
