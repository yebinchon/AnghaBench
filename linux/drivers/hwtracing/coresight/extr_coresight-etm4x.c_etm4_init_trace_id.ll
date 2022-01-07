; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_init_trace_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etm4x.c_etm4_init_trace_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etmv4_drvdata = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etmv4_drvdata*)* @etm4_init_trace_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etm4_init_trace_id(%struct.etmv4_drvdata* %0) #0 {
  %2 = alloca %struct.etmv4_drvdata*, align 8
  store %struct.etmv4_drvdata* %0, %struct.etmv4_drvdata** %2, align 8
  %3 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %4 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @coresight_get_trace_id(i32 %5)
  %7 = load %struct.etmv4_drvdata*, %struct.etmv4_drvdata** %2, align 8
  %8 = getelementptr inbounds %struct.etmv4_drvdata, %struct.etmv4_drvdata* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  ret void
}

declare dso_local i32 @coresight_get_trace_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
