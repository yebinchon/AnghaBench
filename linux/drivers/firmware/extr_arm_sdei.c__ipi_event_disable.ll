; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c__ipi_event_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c__ipi_event_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdei_crosscall_args = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @_ipi_event_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ipi_event_disable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdei_crosscall_args*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.sdei_crosscall_args*
  store %struct.sdei_crosscall_args* %6, %struct.sdei_crosscall_args** %4, align 8
  %7 = load %struct.sdei_crosscall_args*, %struct.sdei_crosscall_args** %4, align 8
  %8 = getelementptr inbounds %struct.sdei_crosscall_args, %struct.sdei_crosscall_args* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @sdei_api_event_disable(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.sdei_crosscall_args*, %struct.sdei_crosscall_args** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @sdei_cross_call_return(%struct.sdei_crosscall_args* %13, i32 %14)
  ret void
}

declare dso_local i32 @sdei_api_event_disable(i32) #1

declare dso_local i32 @sdei_cross_call_return(%struct.sdei_crosscall_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
