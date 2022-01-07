; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_falcon.c_falcon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_falcon.c_falcon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.falcon = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @falcon_init(%struct.falcon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.falcon*, align 8
  store %struct.falcon* %0, %struct.falcon** %3, align 8
  %4 = load %struct.falcon*, %struct.falcon** %3, align 8
  %5 = getelementptr inbounds %struct.falcon, %struct.falcon* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.falcon*, %struct.falcon** %3, align 8
  %10 = getelementptr inbounds %struct.falcon, %struct.falcon* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load %struct.falcon*, %struct.falcon** %3, align 8
  %17 = getelementptr inbounds %struct.falcon, %struct.falcon* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15, %8, %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %15
  %26 = load %struct.falcon*, %struct.falcon** %3, align 8
  %27 = getelementptr inbounds %struct.falcon, %struct.falcon* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
