; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_fini_cmdlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_fini_cmdlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_data = type { i32, i64, i64, i32, i32 }

@G2D_CMDLIST_POOL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g2d_data*)* @g2d_fini_cmdlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g2d_fini_cmdlist(%struct.g2d_data* %0) #0 {
  %2 = alloca %struct.g2d_data*, align 8
  store %struct.g2d_data* %0, %struct.g2d_data** %2, align 8
  %3 = load %struct.g2d_data*, %struct.g2d_data** %2, align 8
  %4 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @kfree(i32 %5)
  %7 = load %struct.g2d_data*, %struct.g2d_data** %2, align 8
  %8 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.g2d_data*, %struct.g2d_data** %2, align 8
  %13 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load %struct.g2d_data*, %struct.g2d_data** %2, align 8
  %18 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @to_dma_dev(i32 %19)
  %21 = load i32, i32* @G2D_CMDLIST_POOL_SIZE, align 4
  %22 = load %struct.g2d_data*, %struct.g2d_data** %2, align 8
  %23 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.g2d_data*, %struct.g2d_data** %2, align 8
  %26 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.g2d_data*, %struct.g2d_data** %2, align 8
  %29 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dma_free_attrs(i32 %20, i32 %21, i64 %24, i64 %27, i32 %30)
  br label %32

32:                                               ; preds = %16, %11, %1
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_free_attrs(i32, i32, i64, i64, i32) #1

declare dso_local i32 @to_dma_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
