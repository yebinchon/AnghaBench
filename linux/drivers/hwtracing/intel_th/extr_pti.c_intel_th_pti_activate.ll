; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_pti.c_intel_th_pti_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_pti.c_intel_th_pti_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { i32 }
%struct.pti_device = type { i32, i32, i32, i32, i64, i64 }

@PTI_EN = common dso_local global i32 0, align 4
@PTI_PATGENMODE = common dso_local global i32 0, align 4
@PTI_FCEN = common dso_local global i32 0, align 4
@PTI_MODE = common dso_local global i32 0, align 4
@PTI_CLKDIV = common dso_local global i32 0, align 4
@LPP_DEST = common dso_local global i32 0, align 4
@REG_PTI_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_th_device*)* @intel_th_pti_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_pti_activate(%struct.intel_th_device* %0) #0 {
  %2 = alloca %struct.intel_th_device*, align 8
  %3 = alloca %struct.pti_device*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_th_device* %0, %struct.intel_th_device** %2, align 8
  %5 = load %struct.intel_th_device*, %struct.intel_th_device** %2, align 8
  %6 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %5, i32 0, i32 0
  %7 = call %struct.pti_device* @dev_get_drvdata(i32* %6)
  store %struct.pti_device* %7, %struct.pti_device** %3, align 8
  %8 = load i32, i32* @PTI_EN, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.pti_device*, %struct.pti_device** %3, align 8
  %10 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.pti_device*, %struct.pti_device** %3, align 8
  %15 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PTI_PATGENMODE, align 4
  %18 = call i32 @__ffs(i32 %17)
  %19 = shl i32 %16, %18
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.pti_device*, %struct.pti_device** %3, align 8
  %24 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @PTI_FCEN, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.pti_device*, %struct.pti_device** %3, align 8
  %33 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PTI_MODE, align 4
  %36 = call i32 @__ffs(i32 %35)
  %37 = shl i32 %34, %36
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load %struct.pti_device*, %struct.pti_device** %3, align 8
  %41 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PTI_CLKDIV, align 4
  %44 = call i32 @__ffs(i32 %43)
  %45 = shl i32 %42, %44
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load %struct.pti_device*, %struct.pti_device** %3, align 8
  %49 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @LPP_DEST, align 4
  %52 = call i32 @__ffs(i32 %51)
  %53 = shl i32 %50, %52
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.pti_device*, %struct.pti_device** %3, align 8
  %58 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @REG_PTI_CTL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @iowrite32(i32 %56, i64 %61)
  %63 = load %struct.intel_th_device*, %struct.intel_th_device** %2, align 8
  %64 = call i32 @intel_th_trace_enable(%struct.intel_th_device* %63)
  ret i32 0
}

declare dso_local %struct.pti_device* @dev_get_drvdata(i32*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @intel_th_trace_enable(%struct.intel_th_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
