; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_gth_unassign.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_gth_unassign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.gth_device = type { i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@TH_CONFIGURABLE_MASTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_th_device*, %struct.intel_th_device*)* @intel_th_gth_unassign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_th_gth_unassign(%struct.intel_th_device* %0, %struct.intel_th_device* %1) #0 {
  %3 = alloca %struct.intel_th_device*, align 8
  %4 = alloca %struct.intel_th_device*, align 8
  %5 = alloca %struct.gth_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_th_device* %0, %struct.intel_th_device** %3, align 8
  store %struct.intel_th_device* %1, %struct.intel_th_device** %4, align 8
  %8 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %9 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %8, i32 0, i32 2
  %10 = call %struct.gth_device* @dev_get_drvdata(i32* %9)
  store %struct.gth_device* %10, %struct.gth_device** %5, align 8
  %11 = load %struct.intel_th_device*, %struct.intel_th_device** %4, align 8
  %12 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %16 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %66

20:                                               ; preds = %2
  %21 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %22 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.intel_th_device*, %struct.intel_th_device** %4, align 8
  %25 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load %struct.intel_th_device*, %struct.intel_th_device** %4, align 8
  %28 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %31 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %59, %20
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @TH_CONFIGURABLE_MASTERS, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %37
  %42 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %43 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %53 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 -1, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %41
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %37

62:                                               ; preds = %37
  %63 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %64 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock(i32* %64)
  br label %66

66:                                               ; preds = %62, %19
  ret void
}

declare dso_local %struct.gth_device* @dev_get_drvdata(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
