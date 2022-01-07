; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_ivc.c_tegra_ivc_advance_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_ivc.c_tegra_ivc_advance_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_ivc = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_ivc*)* @tegra_ivc_advance_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_ivc_advance_rx(%struct.tegra_ivc* %0) #0 {
  %2 = alloca %struct.tegra_ivc*, align 8
  store %struct.tegra_ivc* %0, %struct.tegra_ivc** %2, align 8
  %3 = load %struct.tegra_ivc*, %struct.tegra_ivc** %2, align 8
  %4 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tegra_ivc*, %struct.tegra_ivc** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @READ_ONCE(i32 %16)
  %18 = add nsw i64 %17, 1
  %19 = call i32 @WRITE_ONCE(i32 %9, i64 %18)
  %20 = load %struct.tegra_ivc*, %struct.tegra_ivc** %2, align 8
  %21 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tegra_ivc*, %struct.tegra_ivc** %2, align 8
  %25 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = icmp eq i32 %23, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.tegra_ivc*, %struct.tegra_ivc** %2, align 8
  %31 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %39

33:                                               ; preds = %1
  %34 = load %struct.tegra_ivc*, %struct.tegra_ivc** %2, align 8
  %35 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %29
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
