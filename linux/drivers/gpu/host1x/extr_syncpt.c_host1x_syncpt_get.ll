; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_syncpt = type { i32 }
%struct.host1x = type { %struct.host1x_syncpt*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.host1x_syncpt* @host1x_syncpt_get(%struct.host1x* %0, i32 %1) #0 {
  %3 = alloca %struct.host1x_syncpt*, align 8
  %4 = alloca %struct.host1x*, align 8
  %5 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.host1x*, %struct.host1x** %4, align 8
  %8 = getelementptr inbounds %struct.host1x, %struct.host1x* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp uge i32 %6, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.host1x_syncpt* null, %struct.host1x_syncpt** %3, align 8
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.host1x*, %struct.host1x** %4, align 8
  %16 = getelementptr inbounds %struct.host1x, %struct.host1x* %15, i32 0, i32 0
  %17 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %17, i64 %19
  store %struct.host1x_syncpt* %20, %struct.host1x_syncpt** %3, align 8
  br label %21

21:                                               ; preds = %14, %13
  %22 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %3, align 8
  ret %struct.host1x_syncpt* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
