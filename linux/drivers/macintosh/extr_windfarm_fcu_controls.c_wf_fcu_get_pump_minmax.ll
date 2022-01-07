; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_get_pump_minmax.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_get_pump_minmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_fcu_fan = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mpu_data = type { i32 }

@CPU_PUMP_OUTPUT_MIN = common dso_local global i32 0, align 4
@CPU_PUMP_OUTPUT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"wf_fcu: pump min/max for %s set to: [%d..%d] RPM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_fcu_fan*)* @wf_fcu_get_pump_minmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wf_fcu_get_pump_minmax(%struct.wf_fcu_fan* %0) #0 {
  %2 = alloca %struct.wf_fcu_fan*, align 8
  %3 = alloca %struct.mpu_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  store %struct.wf_fcu_fan* %0, %struct.wf_fcu_fan** %2, align 8
  %7 = call %struct.mpu_data* @wf_get_mpu(i32 0)
  store %struct.mpu_data* %7, %struct.mpu_data** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 65535, i32* %5, align 4
  %8 = load %struct.mpu_data*, %struct.mpu_data** %3, align 8
  %9 = icmp ne %struct.mpu_data* %8, null
  br i1 %9, label %10, label %50

10:                                               ; preds = %1
  %11 = bitcast [4 x i32]* %6 to i32**
  %12 = load %struct.mpu_data*, %struct.mpu_data** %3, align 8
  %13 = getelementptr inbounds %struct.mpu_data, %struct.mpu_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memcpy(i32** %11, i32 %14, i32 8)
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %17 = load i32, i32* %16, align 16
  %18 = icmp ne i32 %17, 65535
  br i1 %18, label %19, label %32

19:                                               ; preds = %10
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 65535
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %26 = load i32, i32* %25, align 16
  %27 = call i32 @max(i32 %24, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @min(i32 %28, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %23, %19, %10
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 65535
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 65535
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @max(i32 %41, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @min(i32 %45, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %40, %36, %32
  br label %50

50:                                               ; preds = %49, %1
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 65535
  br i1 %59, label %60, label %63

60:                                               ; preds = %57, %54, %50
  %61 = load i32, i32* @CPU_PUMP_OUTPUT_MIN, align 4
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @CPU_PUMP_OUTPUT_MAX, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %66 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %69 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %71 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @DBG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74, i32 %75)
  ret void
}

declare dso_local %struct.mpu_data* @wf_get_mpu(i32) #1

declare dso_local i32 @memcpy(i32**, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
