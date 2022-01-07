; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_kmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gem.c_tegra_bo_kmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_bo = type { i32 }
%struct.tegra_bo = type { i8*, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.host1x_bo*, i32)* @tegra_bo_kmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tegra_bo_kmap(%struct.host1x_bo* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.host1x_bo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_bo*, align 8
  store %struct.host1x_bo* %0, %struct.host1x_bo** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.host1x_bo*, %struct.host1x_bo** %4, align 8
  %8 = call %struct.tegra_bo* @host1x_to_tegra_bo(%struct.host1x_bo* %7)
  store %struct.tegra_bo* %8, %struct.tegra_bo** %6, align 8
  %9 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %10 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %15 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = mul i32 %17, %18
  %20 = zext i32 %19 to i64
  %21 = getelementptr i8, i8* %16, i64 %20
  store i8* %21, i8** %3, align 8
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %24 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %30 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i8* @dma_buf_kmap(i32 %34, i32 %35)
  store i8* %36, i8** %3, align 8
  br label %48

37:                                               ; preds = %22
  %38 = load %struct.tegra_bo*, %struct.tegra_bo** %6, align 8
  %39 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load i32, i32* @VM_MAP, align 4
  %45 = load i32, i32* @PAGE_KERNEL, align 4
  %46 = call i32 @pgprot_writecombine(i32 %45)
  %47 = call i8* @vmap(i64 %43, i32 1, i32 %44, i32 %46)
  store i8* %47, i8** %3, align 8
  br label %48

48:                                               ; preds = %37, %28, %13
  %49 = load i8*, i8** %3, align 8
  ret i8* %49
}

declare dso_local %struct.tegra_bo* @host1x_to_tegra_bo(%struct.host1x_bo*) #1

declare dso_local i8* @dma_buf_kmap(i32, i32) #1

declare dso_local i8* @vmap(i64, i32, i32, i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
