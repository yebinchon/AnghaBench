; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_cdma_hw.c_cdma_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_cdma_hw.c_cdma_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_cdma = type { i32 }
%struct.host1x = type { i32 }
%struct.host1x_channel = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"resuming channel (id %u, DMAGET restart = 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x_cdma*, i32)* @cdma_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdma_resume(%struct.host1x_cdma* %0, i32 %1) #0 {
  %3 = alloca %struct.host1x_cdma*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.host1x*, align 8
  %6 = alloca %struct.host1x_channel*, align 8
  store %struct.host1x_cdma* %0, %struct.host1x_cdma** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %8 = call %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma* %7)
  store %struct.host1x* %8, %struct.host1x** %5, align 8
  %9 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %10 = call %struct.host1x_channel* @cdma_to_channel(%struct.host1x_cdma* %9)
  store %struct.host1x_channel* %10, %struct.host1x_channel** %6, align 8
  %11 = load %struct.host1x*, %struct.host1x** %5, align 8
  %12 = getelementptr inbounds %struct.host1x, %struct.host1x* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.host1x_channel*, %struct.host1x_channel** %6, align 8
  %15 = getelementptr inbounds %struct.host1x_channel, %struct.host1x_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.host1x*, %struct.host1x** %5, align 8
  %20 = load %struct.host1x_channel*, %struct.host1x_channel** %6, align 8
  %21 = call i32 @cdma_hw_cmdproc_stop(%struct.host1x* %19, %struct.host1x_channel* %20, i32 0)
  %22 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %23 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @cdma_timeout_restart(%struct.host1x_cdma* %24, i32 %25)
  ret void
}

declare dso_local %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma*) #1

declare dso_local %struct.host1x_channel* @cdma_to_channel(%struct.host1x_cdma*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @cdma_hw_cmdproc_stop(%struct.host1x*, %struct.host1x_channel*, i32) #1

declare dso_local i32 @cdma_timeout_restart(%struct.host1x_cdma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
