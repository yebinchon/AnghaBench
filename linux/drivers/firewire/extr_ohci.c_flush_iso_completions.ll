; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_flush_iso_completions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_flush_iso_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_context = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, i64, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iso_context*)* @flush_iso_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_iso_completions(%struct.iso_context* %0) #0 {
  %2 = alloca %struct.iso_context*, align 8
  store %struct.iso_context* %0, %struct.iso_context** %2, align 8
  %3 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %4 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32 (%struct.TYPE_4__*, i32, i64, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i64, i32, i32)** %6, align 8
  %8 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %9 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %8, i32 0, i32 1
  %10 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %11 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %14 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %17 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %20 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %7(%struct.TYPE_4__* %9, i32 %12, i64 %15, i32 %18, i32 %22)
  %24 = load %struct.iso_context*, %struct.iso_context** %2, align 8
  %25 = getelementptr inbounds %struct.iso_context, %struct.iso_context* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
