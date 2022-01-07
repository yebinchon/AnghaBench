; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_channel.c_host1x_job_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_channel.c_host1x_job_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_job = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.host1x = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @host1x_job_submit(%struct.host1x_job* %0) #0 {
  %2 = alloca %struct.host1x_job*, align 8
  %3 = alloca %struct.host1x*, align 8
  store %struct.host1x_job* %0, %struct.host1x_job** %2, align 8
  %4 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %5 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.host1x* @dev_get_drvdata(i32 %10)
  store %struct.host1x* %11, %struct.host1x** %3, align 8
  %12 = load %struct.host1x*, %struct.host1x** %3, align 8
  %13 = load %struct.host1x_job*, %struct.host1x_job** %2, align 8
  %14 = call i32 @host1x_hw_channel_submit(%struct.host1x* %12, %struct.host1x_job* %13)
  ret i32 %14
}

declare dso_local %struct.host1x* @dev_get_drvdata(i32) #1

declare dso_local i32 @host1x_hw_channel_submit(%struct.host1x*, %struct.host1x_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
