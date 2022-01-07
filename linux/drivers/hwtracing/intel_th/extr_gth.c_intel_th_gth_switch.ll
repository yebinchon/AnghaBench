; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_gth_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_gth_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th_device = type { i32 }
%struct.intel_th_output = type { i32 }
%struct.gth_device = type { i64 }

@REG_CTS_CTL = common dso_local global i64 0, align 8
@CTS_CTL_SEQUENCER_ENABLE = common dso_local global i32 0, align 4
@CTS_TRIG_WAITLOOP_DEPTH = common dso_local global i64 0, align 8
@REG_CTS_STAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"timeout waiting for CTS Trigger\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_th_device*, %struct.intel_th_output*)* @intel_th_gth_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_th_gth_switch(%struct.intel_th_device* %0, %struct.intel_th_output* %1) #0 {
  %3 = alloca %struct.intel_th_device*, align 8
  %4 = alloca %struct.intel_th_output*, align 8
  %5 = alloca %struct.gth_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.intel_th_device* %0, %struct.intel_th_device** %3, align 8
  store %struct.intel_th_output* %1, %struct.intel_th_output** %4, align 8
  %8 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %9 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %8, i32 0, i32 0
  %10 = call %struct.gth_device* @dev_get_drvdata(i32* %9)
  store %struct.gth_device* %10, %struct.gth_device** %5, align 8
  %11 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %12 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @REG_CTS_CTL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @iowrite32(i32 0, i64 %15)
  %17 = load i32, i32* @CTS_CTL_SEQUENCER_ENABLE, align 4
  %18 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %19 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_CTS_CTL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @iowrite32(i32 %17, i64 %22)
  store i32 0, i32* %7, align 4
  %24 = load i64, i64* @CTS_TRIG_WAITLOOP_DEPTH, align 8
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %44, %2
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @BIT(i32 4)
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i1 [ false, %25 ], [ %33, %28 ]
  br i1 %35, label %36, label %47

36:                                               ; preds = %34
  %37 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %38 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @REG_CTS_STAT, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @ioread32(i64 %41)
  store i32 %42, i32* %7, align 4
  %43 = call i32 (...) @cpu_relax()
  br label %44

44:                                               ; preds = %36
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %6, align 8
  br label %25

47:                                               ; preds = %34
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load %struct.intel_th_device*, %struct.intel_th_device** %3, align 8
  %52 = getelementptr inbounds %struct.intel_th_device, %struct.intel_th_device* %51, i32 0, i32 0
  %53 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %56 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @REG_CTS_CTL, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @iowrite32(i32 0, i64 %59)
  %61 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %62 = load %struct.intel_th_output*, %struct.intel_th_output** %4, align 8
  %63 = call i32 @intel_th_gth_stop(%struct.gth_device* %61, %struct.intel_th_output* %62, i32 0)
  %64 = load %struct.gth_device*, %struct.gth_device** %5, align 8
  %65 = load %struct.intel_th_output*, %struct.intel_th_output** %4, align 8
  %66 = call i32 @intel_th_gth_start(%struct.gth_device* %64, %struct.intel_th_output* %65)
  ret void
}

declare dso_local %struct.gth_device* @dev_get_drvdata(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @intel_th_gth_stop(%struct.gth_device*, %struct.intel_th_output*, i32) #1

declare dso_local i32 @intel_th_gth_start(%struct.gth_device*, %struct.intel_th_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
