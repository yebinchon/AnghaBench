; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_libps2.c_ps2_end_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_libps2.c_ps2_end_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2dev = type { %struct.mutex, %struct.TYPE_2__* }
%struct.mutex = type { i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ps2_end_command(%struct.ps2dev* %0) #0 {
  %2 = alloca %struct.ps2dev*, align 8
  %3 = alloca %struct.mutex*, align 8
  store %struct.ps2dev* %0, %struct.ps2dev** %2, align 8
  %4 = load %struct.ps2dev*, %struct.ps2dev** %2, align 8
  %5 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = inttoptr i64 %8 to %struct.mutex*
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.ps2dev*, %struct.ps2dev** %2, align 8
  %14 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %13, i32 0, i32 0
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi %struct.mutex* [ %11, %10 ], [ %14, %12 ]
  store %struct.mutex* %16, %struct.mutex** %3, align 8
  %17 = load %struct.mutex*, %struct.mutex** %3, align 8
  %18 = call i32 @mutex_unlock(%struct.mutex* %17)
  ret void
}

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
