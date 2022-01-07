; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_context_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_context_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, i32, %struct.TYPE_2__*, %struct.fw_ohci* }
%struct.TYPE_2__ = type { i32 }
%struct.fw_ohci = type { i32 }

@CONTEXT_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, i32)* @context_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_run(%struct.context* %0, i32 %1) #0 {
  %3 = alloca %struct.context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_ohci*, align 8
  store %struct.context* %0, %struct.context** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.context*, %struct.context** %3, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 3
  %8 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  store %struct.fw_ohci* %8, %struct.fw_ohci** %5, align 8
  %9 = load %struct.fw_ohci*, %struct.fw_ohci** %5, align 8
  %10 = load %struct.context*, %struct.context** %3, align 8
  %11 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @COMMAND_PTR(i32 %12)
  %14 = load %struct.context*, %struct.context** %3, align 8
  %15 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  %20 = call i32 @reg_write(%struct.fw_ohci* %9, i32 %13, i32 %19)
  %21 = load %struct.fw_ohci*, %struct.fw_ohci** %5, align 8
  %22 = load %struct.context*, %struct.context** %3, align 8
  %23 = getelementptr inbounds %struct.context, %struct.context* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CONTROL_CLEAR(i32 %24)
  %26 = call i32 @reg_write(%struct.fw_ohci* %21, i32 %25, i32 -1)
  %27 = load %struct.fw_ohci*, %struct.fw_ohci** %5, align 8
  %28 = load %struct.context*, %struct.context** %3, align 8
  %29 = getelementptr inbounds %struct.context, %struct.context* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CONTROL_SET(i32 %30)
  %32 = load i32, i32* @CONTEXT_RUN, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @reg_write(%struct.fw_ohci* %27, i32 %31, i32 %34)
  %36 = load %struct.context*, %struct.context** %3, align 8
  %37 = getelementptr inbounds %struct.context, %struct.context* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.fw_ohci*, %struct.fw_ohci** %5, align 8
  %39 = call i32 @flush_writes(%struct.fw_ohci* %38)
  ret void
}

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @COMMAND_PTR(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @CONTROL_CLEAR(i32) #1

declare dso_local i32 @CONTROL_SET(i32) #1

declare dso_local i32 @flush_writes(%struct.fw_ohci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
