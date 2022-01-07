; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_clear_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_clear_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32 }

@FIMC_MAX_SRC = common dso_local global i32 0, align 4
@FIMC_MAX_DST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_context*)* @fimc_clear_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_clear_addr(%struct.fimc_context* %0) #0 {
  %2 = alloca %struct.fimc_context*, align 8
  %3 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @FIMC_MAX_SRC, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @EXYNOS_CIIYSA(i32 %10)
  %12 = call i32 @fimc_write(%struct.fimc_context* %9, i32 0, i32 %11)
  %13 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @EXYNOS_CIICBSA(i32 %14)
  %16 = call i32 @fimc_write(%struct.fimc_context* %13, i32 0, i32 %15)
  %17 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @EXYNOS_CIICRSA(i32 %18)
  %20 = call i32 @fimc_write(%struct.fimc_context* %17, i32 0, i32 %19)
  br label %21

21:                                               ; preds = %8
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4

24:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @FIMC_MAX_DST, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @EXYNOS_CIOYSA(i32 %31)
  %33 = call i32 @fimc_write(%struct.fimc_context* %30, i32 0, i32 %32)
  %34 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @EXYNOS_CIOCBSA(i32 %35)
  %37 = call i32 @fimc_write(%struct.fimc_context* %34, i32 0, i32 %36)
  %38 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @EXYNOS_CIOCRSA(i32 %39)
  %41 = call i32 @fimc_write(%struct.fimc_context* %38, i32 0, i32 %40)
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %25

45:                                               ; preds = %25
  ret void
}

declare dso_local i32 @fimc_write(%struct.fimc_context*, i32, i32) #1

declare dso_local i32 @EXYNOS_CIIYSA(i32) #1

declare dso_local i32 @EXYNOS_CIICBSA(i32) #1

declare dso_local i32 @EXYNOS_CIICRSA(i32) #1

declare dso_local i32 @EXYNOS_CIOYSA(i32) #1

declare dso_local i32 @EXYNOS_CIOCBSA(i32) #1

declare dso_local i32 @EXYNOS_CIOCRSA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
