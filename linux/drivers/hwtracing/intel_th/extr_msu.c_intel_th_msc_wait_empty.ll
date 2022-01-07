; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_wait_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_wait_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { i32 }
%struct.msc = type { i64 }

@MSC_PLE_WAITLOOP_DEPTH = common dso_local global i64 0, align 8
@MSCSTS_PLE = common dso_local global i32 0, align 4
@REG_MSU_MSC0STS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"timeout waiting for MSC0 PLE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_th_device*)* @intel_th_msc_wait_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_th_msc_wait_empty(%struct.intel_th_device* %0) #0 {
  %2 = alloca %struct.intel_th_device*, align 8
  %3 = alloca %struct.msc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.intel_th_device* %0, %struct.intel_th_device** %2, align 8
  %6 = load %struct.intel_th_device*, %struct.intel_th_device** %2, align 8
  %7 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %6, i32 0, i32 0
  %8 = call %struct.msc* @dev_get_drvdata(i32* %7)
  store %struct.msc* %8, %struct.msc** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load i64, i64* @MSC_PLE_WAITLOOP_DEPTH, align 8
  store i64 %9, i64* %4, align 8
  br label %10

10:                                               ; preds = %29, %1
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MSCSTS_PLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i1 [ false, %10 ], [ %18, %13 ]
  br i1 %20, label %21, label %32

21:                                               ; preds = %19
  %22 = load %struct.msc*, %struct.msc** %3, align 8
  %23 = getelementptr inbounds %struct.msc, %struct.msc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REG_MSU_MSC0STS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @__raw_readl(i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = call i32 (...) @cpu_relax()
  br label %29

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %4, align 8
  br label %10

32:                                               ; preds = %19
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load %struct.msc*, %struct.msc** %3, align 8
  %37 = call i32 @msc_dev(%struct.msc* %36)
  %38 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %35, %32
  ret void
}

declare dso_local %struct.msc* @dev_get_drvdata(i32*) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @msc_dev(%struct.msc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
