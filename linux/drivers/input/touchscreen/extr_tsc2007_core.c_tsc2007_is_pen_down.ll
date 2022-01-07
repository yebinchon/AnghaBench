; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_core.c_tsc2007_is_pen_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_core.c_tsc2007_is_pen_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsc2007 = type { i32 (i32*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsc2007_is_pen_down(%struct.tsc2007* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsc2007*, align 8
  store %struct.tsc2007* %0, %struct.tsc2007** %3, align 8
  %4 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %5 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %4, i32 0, i32 0
  %6 = load i32 (i32*)*, i32 (i32*)** %5, align 8
  %7 = icmp ne i32 (i32*)* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %18

9:                                                ; preds = %1
  %10 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %11 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %10, i32 0, i32 0
  %12 = load i32 (i32*)*, i32 (i32*)** %11, align 8
  %13 = load %struct.tsc2007*, %struct.tsc2007** %3, align 8
  %14 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 %12(i32* %16)
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %9, %8
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
