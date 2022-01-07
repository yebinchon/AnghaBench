; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_gth_assign.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_gth_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { i64, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.gth_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }

@EBUSY = common dso_local global i32 0, align 4
@INTEL_TH_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TH_POSSIBLE_OUTPUTS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_th_device*, %struct.intel_th_device*)* @intel_th_gth_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_gth_assign(%struct.intel_th_device* %0, %struct.intel_th_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_th_device*, align 8
  %5 = alloca %struct.intel_th_device*, align 8
  %6 = alloca %struct.gth_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_th_device* %0, %struct.intel_th_device** %4, align 8
  store %struct.intel_th_device* %1, %struct.intel_th_device** %5, align 8
  %9 = load %struct.intel_th_device*, %struct.intel_th_device** %4, align 8
  %10 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %9, i32 0, i32 4
  %11 = call %struct.gth_device* @dev_get_drvdata(i32* %10)
  store %struct.gth_device* %11, %struct.gth_device** %6, align 8
  %12 = load %struct.intel_th_device*, %struct.intel_th_device** %4, align 8
  %13 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %92

19:                                               ; preds = %2
  %20 = load %struct.intel_th_device*, %struct.intel_th_device** %5, align 8
  %21 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INTEL_TH_OUTPUT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %92

28:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %63, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TH_POSSIBLE_OUTPUTS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = load %struct.gth_device*, %struct.gth_device** %6, align 8
  %35 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.intel_th_device*, %struct.intel_th_device** %5, align 8
  %43 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %63

48:                                               ; preds = %33
  %49 = load %struct.intel_th_device*, %struct.intel_th_device** %5, align 8
  %50 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.intel_th_device*, %struct.intel_th_device** %5, align 8
  %55 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %48
  br label %69

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %47
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %29

66:                                               ; preds = %29
  %67 = load i32, i32* @ENOENT, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %92

69:                                               ; preds = %59
  %70 = load %struct.gth_device*, %struct.gth_device** %6, align 8
  %71 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %70, i32 0, i32 0
  %72 = call i32 @spin_lock(i32* %71)
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.intel_th_device*, %struct.intel_th_device** %5, align 8
  %75 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 8
  %77 = load %struct.intel_th_device*, %struct.intel_th_device** %5, align 8
  %78 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 0, i32* %79, align 4
  %80 = load %struct.intel_th_device*, %struct.intel_th_device** %5, align 8
  %81 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %80, i32 0, i32 2
  %82 = load %struct.gth_device*, %struct.gth_device** %6, align 8
  %83 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %88, align 8
  %89 = load %struct.gth_device*, %struct.gth_device** %6, align 8
  %90 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock(i32* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %69, %66, %25, %16
  %93 = load i32, i32* %3, align 4
  ret i32 %93
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
