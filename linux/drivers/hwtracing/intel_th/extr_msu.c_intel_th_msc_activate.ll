; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { i32 }
%struct.msc = type { i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_th_device*)* @intel_th_msc_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_msc_activate(%struct.intel_th_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_th_device*, align 8
  %4 = alloca %struct.msc*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_th_device* %0, %struct.intel_th_device** %3, align 8
  %6 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %7 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %6, i32 0, i32 0
  %8 = call %struct.msc* @dev_get_drvdata(i32* %7)
  store %struct.msc* %8, %struct.msc** %4, align 8
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.msc*, %struct.msc** %4, align 8
  %12 = getelementptr inbounds %struct.msc, %struct.msc* %11, i32 0, i32 0
  %13 = call i32 @atomic_inc_unless_negative(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %41

18:                                               ; preds = %1
  %19 = load %struct.msc*, %struct.msc** %4, align 8
  %20 = getelementptr inbounds %struct.msc, %struct.msc* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.msc*, %struct.msc** %4, align 8
  %23 = getelementptr inbounds %struct.msc, %struct.msc* %22, i32 0, i32 2
  %24 = call i64 @list_empty(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.msc*, %struct.msc** %4, align 8
  %28 = call i32 @msc_configure(%struct.msc* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %18
  %30 = load %struct.msc*, %struct.msc** %4, align 8
  %31 = getelementptr inbounds %struct.msc, %struct.msc* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.msc*, %struct.msc** %4, align 8
  %37 = getelementptr inbounds %struct.msc, %struct.msc* %36, i32 0, i32 0
  %38 = call i32 @atomic_dec(i32* %37)
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.msc* @dev_get_drvdata(i32*) #1

declare dso_local i32 @atomic_inc_unless_negative(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @msc_configure(%struct.msc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
