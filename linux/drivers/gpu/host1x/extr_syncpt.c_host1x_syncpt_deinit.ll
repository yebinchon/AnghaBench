; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { %struct.TYPE_2__*, %struct.host1x_syncpt* }
%struct.TYPE_2__ = type { i32 }
%struct.host1x_syncpt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host1x_syncpt_deinit(%struct.host1x* %0) #0 {
  %2 = alloca %struct.host1x*, align 8
  %3 = alloca %struct.host1x_syncpt*, align 8
  %4 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %2, align 8
  %5 = load %struct.host1x*, %struct.host1x** %2, align 8
  %6 = getelementptr inbounds %struct.host1x, %struct.host1x* %5, i32 0, i32 1
  %7 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %6, align 8
  store %struct.host1x_syncpt* %7, %struct.host1x_syncpt** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.host1x*, %struct.host1x** %2, align 8
  %11 = getelementptr inbounds %struct.host1x, %struct.host1x* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %9, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %8
  %17 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %3, align 8
  %18 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @kfree(i32 %19)
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %4, align 4
  %24 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %3, align 8
  %25 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %24, i32 1
  store %struct.host1x_syncpt* %25, %struct.host1x_syncpt** %3, align 8
  br label %8

26:                                               ; preds = %8
  ret void
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
