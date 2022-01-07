; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_bo = type { i32 }
%struct.tegra_bo = type { i8*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.host1x_bo*)* @tegra_bo_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tegra_bo_mmap(%struct.host1x_bo* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.host1x_bo*, align 8
  %4 = alloca %struct.tegra_bo*, align 8
  store %struct.host1x_bo* %0, %struct.host1x_bo** %3, align 8
  %5 = load %struct.host1x_bo*, %struct.host1x_bo** %3, align 8
  %6 = call %struct.tegra_bo* @host1x_to_tegra_bo(%struct.host1x_bo* %5)
  store %struct.tegra_bo* %6, %struct.tegra_bo** %4, align 8
  %7 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %8 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %2, align 8
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %17 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @dma_buf_vmap(i32 %27)
  store i8* %28, i8** %2, align 8
  br label %40

29:                                               ; preds = %15
  %30 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %31 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tegra_bo*, %struct.tegra_bo** %4, align 8
  %34 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @VM_MAP, align 4
  %37 = load i32, i32* @PAGE_KERNEL, align 4
  %38 = call i32 @pgprot_writecombine(i32 %37)
  %39 = call i8* @vmap(i32 %32, i32 %35, i32 %36, i32 %38)
  store i8* %39, i8** %2, align 8
  br label %40

40:                                               ; preds = %29, %21, %11
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

declare dso_local %struct.tegra_bo* @host1x_to_tegra_bo(%struct.host1x_bo*) #1

declare dso_local i8* @dma_buf_vmap(i32) #1

declare dso_local i8* @vmap(i32, i32, i32, i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
