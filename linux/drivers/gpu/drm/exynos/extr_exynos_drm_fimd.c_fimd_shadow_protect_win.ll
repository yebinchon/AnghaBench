; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_shadow_protect_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_shadow_protect_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimd_context = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SHADOWCON = common dso_local global i64 0, align 8
@PRTCON = common dso_local global i64 0, align 8
@PRTCON_PROTECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimd_context*, i32, i32)* @fimd_shadow_protect_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimd_shadow_protect_win(%struct.fimd_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fimd_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.fimd_context* %0, %struct.fimd_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fimd_context*, %struct.fimd_context** %4, align 8
  %11 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i64, i64* @SHADOWCON, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @SHADOWCON_WINx_PROTECT(i32 %18)
  store i64 %19, i64* %8, align 8
  br label %23

20:                                               ; preds = %3
  %21 = load i64, i64* @PRTCON, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* @PRTCON_PROTECT, align 8
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = load %struct.fimd_context*, %struct.fimd_context** %4, align 8
  %25 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @readl(i64 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %9, align 8
  br label %41

36:                                               ; preds = %23
  %37 = load i64, i64* %8, align 8
  %38 = xor i64 %37, -1
  %39 = load i64, i64* %9, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %36, %32
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.fimd_context*, %struct.fimd_context** %4, align 8
  %44 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i64 %42, i64 %47)
  ret void
}

declare dso_local i64 @SHADOWCON_WINx_PROTECT(i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
