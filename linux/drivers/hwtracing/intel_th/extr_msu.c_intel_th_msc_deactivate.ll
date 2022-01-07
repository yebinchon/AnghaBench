; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { i32 }
%struct.msc = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_th_device*)* @intel_th_msc_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_th_msc_deactivate(%struct.intel_th_device* %0) #0 {
  %2 = alloca %struct.intel_th_device*, align 8
  %3 = alloca %struct.msc*, align 8
  store %struct.intel_th_device* %0, %struct.intel_th_device** %2, align 8
  %4 = load %struct.intel_th_device*, %struct.intel_th_device** %2, align 8
  %5 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %4, i32 0, i32 0
  %6 = call %struct.msc* @dev_get_drvdata(i32* %5)
  store %struct.msc* %6, %struct.msc** %3, align 8
  %7 = load %struct.msc*, %struct.msc** %3, align 8
  %8 = getelementptr inbounds %struct.msc, %struct.msc* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.msc*, %struct.msc** %3, align 8
  %11 = getelementptr inbounds %struct.msc, %struct.msc* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.msc*, %struct.msc** %3, align 8
  %16 = call i32 @msc_disable(%struct.msc* %15)
  %17 = load %struct.msc*, %struct.msc** %3, align 8
  %18 = getelementptr inbounds %struct.msc, %struct.msc* %17, i32 0, i32 1
  %19 = call i32 @atomic_dec(i32* %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.msc*, %struct.msc** %3, align 8
  %22 = getelementptr inbounds %struct.msc, %struct.msc* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  ret void
}

declare dso_local %struct.msc* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @msc_disable(%struct.msc*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
