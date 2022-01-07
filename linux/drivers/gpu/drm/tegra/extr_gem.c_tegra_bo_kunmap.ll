; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_kunmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_kunmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_bo = type { i32 }
%struct.tegra_bo = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x_bo*, i32, i8*)* @tegra_bo_kunmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_bo_kunmap(%struct.host1x_bo* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.host1x_bo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tegra_bo*, align 8
  store %struct.host1x_bo* %0, %struct.host1x_bo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.host1x_bo*, %struct.host1x_bo** %4, align 8
  %9 = call %struct.tegra_bo* @host1x_to_tegra_bo(%struct.host1x_bo* %8)
  store %struct.tegra_bo* %9, %struct.tegra_bo** %7, align 8
  %10 = load %struct.tegra_bo*, %struct.tegra_bo** %7, align 8
  %11 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %35

15:                                               ; preds = %3
  %16 = load %struct.tegra_bo*, %struct.tegra_bo** %7, align 8
  %17 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.tegra_bo*, %struct.tegra_bo** %7, align 8
  %23 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @dma_buf_kunmap(i32 %27, i32 %28, i8* %29)
  br label %34

31:                                               ; preds = %15
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @vunmap(i8* %32)
  br label %34

34:                                               ; preds = %31, %21
  br label %35

35:                                               ; preds = %14, %34
  ret void
}

declare dso_local %struct.tegra_bo* @host1x_to_tegra_bo(%struct.host1x_bo*) #1

declare dso_local i32 @dma_buf_kunmap(i32, i32, i8*) #1

declare dso_local i32 @vunmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
