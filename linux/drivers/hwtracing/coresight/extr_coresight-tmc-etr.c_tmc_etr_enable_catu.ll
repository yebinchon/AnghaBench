; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_enable_catu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-tmc-etr.c_tmc_etr_enable_catu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_drvdata = type { i32 }
%struct.etr_buf = type { i32 }
%struct.coresight_device = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.coresight_device*, %struct.etr_buf*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmc_drvdata*, %struct.etr_buf*)* @tmc_etr_enable_catu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_etr_enable_catu(%struct.tmc_drvdata* %0, %struct.etr_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tmc_drvdata*, align 8
  %5 = alloca %struct.etr_buf*, align 8
  %6 = alloca %struct.coresight_device*, align 8
  store %struct.tmc_drvdata* %0, %struct.tmc_drvdata** %4, align 8
  store %struct.etr_buf* %1, %struct.etr_buf** %5, align 8
  %7 = load %struct.tmc_drvdata*, %struct.tmc_drvdata** %4, align 8
  %8 = call %struct.coresight_device* @tmc_etr_get_catu_device(%struct.tmc_drvdata* %7)
  store %struct.coresight_device* %8, %struct.coresight_device** %6, align 8
  %9 = load %struct.coresight_device*, %struct.coresight_device** %6, align 8
  %10 = icmp ne %struct.coresight_device* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.coresight_device*, %struct.coresight_device** %6, align 8
  %13 = call %struct.TYPE_2__* @helper_ops(%struct.coresight_device* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.coresight_device*, %struct.etr_buf*)*, i32 (%struct.coresight_device*, %struct.etr_buf*)** %14, align 8
  %16 = icmp ne i32 (%struct.coresight_device*, %struct.etr_buf*)* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.coresight_device*, %struct.coresight_device** %6, align 8
  %19 = call %struct.TYPE_2__* @helper_ops(%struct.coresight_device* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.coresight_device*, %struct.etr_buf*)*, i32 (%struct.coresight_device*, %struct.etr_buf*)** %20, align 8
  %22 = load %struct.coresight_device*, %struct.coresight_device** %6, align 8
  %23 = load %struct.etr_buf*, %struct.etr_buf** %5, align 8
  %24 = call i32 %21(%struct.coresight_device* %22, %struct.etr_buf* %23)
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.coresight_device* @tmc_etr_get_catu_device(%struct.tmc_drvdata*) #1

declare dso_local %struct.TYPE_2__* @helper_ops(%struct.coresight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
