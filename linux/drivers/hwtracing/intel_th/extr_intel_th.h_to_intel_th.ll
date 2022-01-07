; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_intel_th.h_to_intel_th.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_intel_th.h_to_intel_th.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th = type { i32 }
%struct.intel_th_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@INTEL_TH_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_th* (%struct.intel_th_device*)* @to_intel_th to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_th* @to_intel_th(%struct.intel_th_device* %0) #0 {
  %2 = alloca %struct.intel_th*, align 8
  %3 = alloca %struct.intel_th_device*, align 8
  store %struct.intel_th_device* %0, %struct.intel_th_device** %3, align 8
  %4 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %5 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @INTEL_TH_OUTPUT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %11 = call %struct.intel_th_device* @to_intel_th_parent(%struct.intel_th_device* %10)
  store %struct.intel_th_device* %11, %struct.intel_th_device** %3, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %14 = icmp ne %struct.intel_th_device* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %17 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INTEL_TH_OUTPUT, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %12
  %22 = phi i1 [ true, %12 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store %struct.intel_th* null, %struct.intel_th** %2, align 8
  br label %33

27:                                               ; preds = %21
  %28 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %29 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.intel_th* @dev_get_drvdata(i32 %31)
  store %struct.intel_th* %32, %struct.intel_th** %2, align 8
  br label %33

33:                                               ; preds = %27, %26
  %34 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  ret %struct.intel_th* %34
}

declare dso_local %struct.intel_th_device* @to_intel_th_parent(%struct.intel_th_device*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.intel_th* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
