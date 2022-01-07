; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c__local_event_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_arm_sdei.c__local_event_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdei_registered_event = type { i32 }
%struct.sdei_crosscall_args = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@sdei_entry_point = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @_local_event_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_local_event_register(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdei_registered_event*, align 8
  %5 = alloca %struct.sdei_crosscall_args*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.sdei_crosscall_args*
  store %struct.sdei_crosscall_args* %7, %struct.sdei_crosscall_args** %5, align 8
  %8 = call i32 (...) @preemptible()
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.sdei_crosscall_args*, %struct.sdei_crosscall_args** %5, align 8
  %11 = getelementptr inbounds %struct.sdei_crosscall_args, %struct.sdei_crosscall_args* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (...) @smp_processor_id()
  %16 = call %struct.sdei_registered_event* @per_cpu_ptr(i32 %14, i32 %15)
  store %struct.sdei_registered_event* %16, %struct.sdei_registered_event** %4, align 8
  %17 = load %struct.sdei_crosscall_args*, %struct.sdei_crosscall_args** %5, align 8
  %18 = getelementptr inbounds %struct.sdei_crosscall_args, %struct.sdei_crosscall_args* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @sdei_entry_point, align 4
  %23 = load %struct.sdei_registered_event*, %struct.sdei_registered_event** %4, align 8
  %24 = call i32 @sdei_api_event_register(i32 %21, i32 %22, %struct.sdei_registered_event* %23, i32 0, i32 0)
  store i32 %24, i32* %3, align 4
  %25 = load %struct.sdei_crosscall_args*, %struct.sdei_crosscall_args** %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @sdei_cross_call_return(%struct.sdei_crosscall_args* %25, i32 %26)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @preemptible(...) #1

declare dso_local %struct.sdei_registered_event* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @sdei_api_event_register(i32, i32, %struct.sdei_registered_event*, i32, i32) #1

declare dso_local i32 @sdei_cross_call_return(%struct.sdei_crosscall_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
