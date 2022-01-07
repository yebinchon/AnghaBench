; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_devfreq.c_panfrost_devfreq_update_utilization.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_devfreq.c_panfrost_devfreq_update_utilization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.panfrost_devfreq_slot*, i32 }
%struct.panfrost_devfreq_slot = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.panfrost_device*, i32)* @panfrost_devfreq_update_utilization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panfrost_devfreq_update_utilization(%struct.panfrost_device* %0, i32 %1) #0 {
  %3 = alloca %struct.panfrost_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.panfrost_devfreq_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %9 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.panfrost_devfreq_slot*, %struct.panfrost_devfreq_slot** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.panfrost_devfreq_slot, %struct.panfrost_devfreq_slot* %11, i64 %13
  store %struct.panfrost_devfreq_slot* %14, %struct.panfrost_devfreq_slot** %5, align 8
  %15 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %16 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %78

21:                                               ; preds = %2
  %22 = call i32 (...) @ktime_get()
  store i32 %22, i32* %6, align 4
  %23 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %24 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.panfrost_devfreq_slot*, %struct.panfrost_devfreq_slot** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.panfrost_devfreq_slot, %struct.panfrost_devfreq_slot* %26, i64 %28
  %30 = getelementptr inbounds %struct.panfrost_devfreq_slot, %struct.panfrost_devfreq_slot* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  %32 = load %struct.panfrost_devfreq_slot*, %struct.panfrost_devfreq_slot** %5, align 8
  %33 = getelementptr inbounds %struct.panfrost_devfreq_slot, %struct.panfrost_devfreq_slot* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @ktime_sub(i32 %37, i32 %38)
  %40 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %41 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.panfrost_devfreq_slot*, %struct.panfrost_devfreq_slot** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.panfrost_devfreq_slot, %struct.panfrost_devfreq_slot* %43, i64 %45
  %47 = getelementptr inbounds %struct.panfrost_devfreq_slot, %struct.panfrost_devfreq_slot* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %39
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  br label %68

52:                                               ; preds = %21
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @ktime_sub(i32 %53, i32 %54)
  %56 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %57 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.panfrost_devfreq_slot*, %struct.panfrost_devfreq_slot** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.panfrost_devfreq_slot, %struct.panfrost_devfreq_slot* %59, i64 %61
  %63 = getelementptr inbounds %struct.panfrost_devfreq_slot, %struct.panfrost_devfreq_slot* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %55
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  br label %68

68:                                               ; preds = %52, %36
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.panfrost_device*, %struct.panfrost_device** %3, align 8
  %71 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.panfrost_devfreq_slot*, %struct.panfrost_devfreq_slot** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.panfrost_devfreq_slot, %struct.panfrost_devfreq_slot* %73, i64 %75
  %77 = getelementptr inbounds %struct.panfrost_devfreq_slot, %struct.panfrost_devfreq_slot* %76, i32 0, i32 0
  store i32 %69, i32* %77, align 8
  br label %78

78:                                               ; preds = %68, %20
  ret void
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
