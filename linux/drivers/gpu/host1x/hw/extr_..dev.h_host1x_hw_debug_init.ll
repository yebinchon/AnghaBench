; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_..dev.h_host1x_hw_debug_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_..dev.h_host1x_hw_debug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dentry*)* }
%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x*, %struct.dentry*)* @host1x_hw_debug_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_hw_debug_init(%struct.host1x* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.host1x*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.host1x* %0, %struct.host1x** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %5 = load %struct.host1x*, %struct.host1x** %3, align 8
  %6 = getelementptr inbounds %struct.host1x, %struct.host1x* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.host1x*, %struct.host1x** %3, align 8
  %11 = getelementptr inbounds %struct.host1x, %struct.host1x* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.dentry*)*, i32 (%struct.dentry*)** %13, align 8
  %15 = icmp ne i32 (%struct.dentry*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = load %struct.host1x*, %struct.host1x** %3, align 8
  %18 = getelementptr inbounds %struct.host1x, %struct.host1x* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.dentry*)*, i32 (%struct.dentry*)** %20, align 8
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = call i32 %21(%struct.dentry* %22)
  br label %24

24:                                               ; preds = %16, %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
