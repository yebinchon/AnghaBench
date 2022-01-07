; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_gth_set_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_gth_set_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { i32 }
%struct.gth_device = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TH_CONFIGURABLE_MASTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_th_device*, i32)* @intel_th_gth_set_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_gth_set_output(%struct.intel_th_device* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_th_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gth_device*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_th_device* %0, %struct.intel_th_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %8 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %7, i32 0, i32 0
  %9 = call %struct.gth_device* @dev_get_drvdata(i32* %8)
  store %struct.gth_device* %9, %struct.gth_device** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @TH_CONFIGURABLE_MASTERS, align 4
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @TH_CONFIGURABLE_MASTERS, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %17 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %20 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %45

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %30 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @set_bit(i32 %28, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %40 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  br label %45

45:                                               ; preds = %27, %15
  %46 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %47 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock(i32* %47)
  ret i32 0
}

declare dso_local %struct.gth_device* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
