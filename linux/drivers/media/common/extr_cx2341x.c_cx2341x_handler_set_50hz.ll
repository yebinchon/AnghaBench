; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_handler_set_50hz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_handler_set_50hz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx2341x_handler = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx2341x_handler_set_50hz(%struct.cx2341x_handler* %0, i32 %1) #0 {
  %3 = alloca %struct.cx2341x_handler*, align 8
  %4 = alloca i32, align 4
  store %struct.cx2341x_handler* %0, %struct.cx2341x_handler** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %7 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %9 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 12, i32 15
  %14 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %15 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
