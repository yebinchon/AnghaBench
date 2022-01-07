; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-catu.c_catu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i32 }
%struct.catu_drvdata = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*, i8*)* @catu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @catu_enable(%struct.coresight_device* %0, i8* %1) #0 {
  %3 = alloca %struct.coresight_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.catu_drvdata*, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %8 = call %struct.catu_drvdata* @csdev_to_catu_drvdata(%struct.coresight_device* %7)
  store %struct.catu_drvdata* %8, %struct.catu_drvdata** %6, align 8
  %9 = load %struct.catu_drvdata*, %struct.catu_drvdata** %6, align 8
  %10 = getelementptr inbounds %struct.catu_drvdata, %struct.catu_drvdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @CS_UNLOCK(i32 %11)
  %13 = load %struct.catu_drvdata*, %struct.catu_drvdata** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @catu_enable_hw(%struct.catu_drvdata* %13, i8* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.catu_drvdata*, %struct.catu_drvdata** %6, align 8
  %17 = getelementptr inbounds %struct.catu_drvdata, %struct.catu_drvdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CS_LOCK(i32 %18)
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local %struct.catu_drvdata* @csdev_to_catu_drvdata(%struct.coresight_device*) #1

declare dso_local i32 @CS_UNLOCK(i32) #1

declare dso_local i32 @catu_enable_hw(%struct.catu_drvdata*, i8*) #1

declare dso_local i32 @CS_LOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
