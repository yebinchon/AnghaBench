; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_etmv4_cross_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x-sysfs.c_etmv4_cross_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.etmv4_drvdata = type { i32, i64 }
%struct.etmv4_reg = type { i64, i64 }

@do_smp_cross_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i64)* @etmv4_cross_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @etmv4_cross_read(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.etmv4_drvdata*, align 8
  %6 = alloca %struct.etmv4_reg, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.etmv4_drvdata* @dev_get_drvdata(%struct.device* %7)
  store %struct.etmv4_drvdata* %8, %struct.etmv4_drvdata** %5, align 8
  %9 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %5, align 8
  %10 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = add nsw i64 %11, %12
  %14 = getelementptr inbounds %struct.etmv4_reg, %struct.etmv4_reg* %6, i32 0, i32 1
  store i64 %13, i64* %14, align 8
  %15 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %5, align 8
  %16 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @do_smp_cross_read, align 4
  %19 = call i32 @smp_call_function_single(i32 %17, i32 %18, %struct.etmv4_reg* %6, i32 1)
  %20 = getelementptr inbounds %struct.etmv4_reg, %struct.etmv4_reg* %6, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  ret i64 %21
}

declare dso_local %struct.etmv4_drvdata* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.etmv4_reg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
