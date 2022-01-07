; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_output.c_tegra_output_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_output.c_tegra_output_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_output = type { %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra_output_remove(%struct.tegra_output* %0) #0 {
  %2 = alloca %struct.tegra_output*, align 8
  store %struct.tegra_output* %0, %struct.tegra_output** %2, align 8
  %3 = load %struct.tegra_output*, %struct.tegra_output** %2, align 8
  %4 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.tegra_output*, %struct.tegra_output** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @cec_notifier_put(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.tegra_output*, %struct.tegra_output** %2, align 8
  %14 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.tegra_output*, %struct.tegra_output** %2, align 8
  %19 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.tegra_output*, %struct.tegra_output** %2, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.tegra_output* %21)
  br label %23

23:                                               ; preds = %17, %12
  %24 = load %struct.tegra_output*, %struct.tegra_output** %2, align 8
  %25 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.tegra_output*, %struct.tegra_output** %2, align 8
  %30 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @put_device(i32* %32)
  br label %34

34:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @cec_notifier_put(i64) #1

declare dso_local i32 @free_irq(i32, %struct.tegra_output*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
