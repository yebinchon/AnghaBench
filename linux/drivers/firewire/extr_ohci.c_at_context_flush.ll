; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_at_context_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_at_context_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @at_context_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at_context_flush(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %3 = load %struct.context*, %struct.context** %2, align 8
  %4 = getelementptr inbounds %struct.context, %struct.context* %3, i32 0, i32 1
  %5 = call i32 @tasklet_disable(i32* %4)
  %6 = load %struct.context*, %struct.context** %2, align 8
  %7 = getelementptr inbounds %struct.context, %struct.context* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = load %struct.context*, %struct.context** %2, align 8
  %9 = ptrtoint %struct.context* %8 to i64
  %10 = call i32 @context_tasklet(i64 %9)
  %11 = load %struct.context*, %struct.context** %2, align 8
  %12 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.context*, %struct.context** %2, align 8
  %14 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 1
  %15 = call i32 @tasklet_enable(i32* %14)
  ret void
}

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @context_tasklet(i64) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
