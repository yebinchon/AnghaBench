; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_munmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_munmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_bo = type { i32 }
%struct.tegra_bo = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x_bo*, i8*)* @tegra_bo_munmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_bo_munmap(%struct.host1x_bo* %0, i8* %1) #0 {
  %3 = alloca %struct.host1x_bo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tegra_bo*, align 8
  store %struct.host1x_bo* %0, %struct.host1x_bo** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.host1x_bo*, %struct.host1x_bo** %3, align 8
  %7 = call %struct.tegra_bo* @host1x_to_tegra_bo(%struct.host1x_bo* %6)
  store %struct.tegra_bo* %7, %struct.tegra_bo** %5, align 8
  %8 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %9 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %15 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load %struct.tegra_bo*, %struct.tegra_bo** %5, align 8
  %21 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @dma_buf_vunmap(i32 %25, i8* %26)
  br label %31

28:                                               ; preds = %13
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @vunmap(i8* %29)
  br label %31

31:                                               ; preds = %28, %19
  br label %32

32:                                               ; preds = %12, %31
  ret void
}

declare dso_local %struct.tegra_bo* @host1x_to_tegra_bo(%struct.host1x_bo*) #1

declare dso_local i32 @dma_buf_vunmap(i32, i8*) #1

declare dso_local i32 @vunmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
