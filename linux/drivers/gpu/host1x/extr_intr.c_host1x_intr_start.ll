; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_intr.c_host1x_intr_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_intr.c_host1x_intr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { i32, i32 }

@syncpt_thresh_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host1x_intr_start(%struct.host1x* %0) #0 {
  %2 = alloca %struct.host1x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %2, align 8
  %5 = load %struct.host1x*, %struct.host1x** %2, align 8
  %6 = getelementptr inbounds %struct.host1x, %struct.host1x* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_get_rate(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.host1x*, %struct.host1x** %2, align 8
  %10 = getelementptr inbounds %struct.host1x, %struct.host1x* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.host1x*, %struct.host1x** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @DIV_ROUND_UP(i32 %13, i32 1000000)
  %15 = load i32, i32* @syncpt_thresh_work, align 4
  %16 = call i32 @host1x_hw_intr_init_host_sync(%struct.host1x* %12, i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.host1x*, %struct.host1x** %2, align 8
  %21 = getelementptr inbounds %struct.host1x, %struct.host1x* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.host1x*, %struct.host1x** %2, align 8
  %25 = getelementptr inbounds %struct.host1x, %struct.host1x* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @host1x_hw_intr_init_host_sync(%struct.host1x*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
