; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decon_context = type { i32, i64 }

@DECON_VIDINTCON1 = common dso_local global i64 0, align 8
@VIDINTCON1_INTFRMDONEPEND = common dso_local global i32 0, align 4
@VIDINTCON1_INTFRMPEND = common dso_local global i32 0, align 4
@IFTYPE_HDMI = common dso_local global i32 0, align 4
@DECON_VIDOUTCON0 = common dso_local global i64 0, align 8
@VIDOUT_INTERLACE_EN_F = common dso_local global i32 0, align 4
@VIDOUT_INTERLACE_FIELD_F = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @decon_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decon_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.decon_context*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.decon_context*
  store %struct.decon_context* %9, %struct.decon_context** %6, align 8
  %10 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %11 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DECON_VIDINTCON1, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @VIDINTCON1_INTFRMDONEPEND, align 4
  %17 = load i32, i32* @VIDINTCON1_INTFRMPEND, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %26 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DECON_VIDINTCON1, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %32 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IFTYPE_HDMI, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %23
  %38 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %39 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DECON_VIDOUTCON0, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @VIDOUT_INTERLACE_EN_F, align 4
  %45 = load i32, i32* @VIDOUT_INTERLACE_FIELD_F, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @VIDOUT_INTERLACE_EN_F, align 4
  %51 = load i32, i32* @VIDOUT_INTERLACE_FIELD_F, align 4
  %52 = or i32 %50, %51
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %37
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %62

56:                                               ; preds = %37
  br label %57

57:                                               ; preds = %56, %23
  %58 = load %struct.decon_context*, %struct.decon_context** %6, align 8
  %59 = call i32 @decon_handle_vblank(%struct.decon_context* %58)
  br label %60

60:                                               ; preds = %57, %2
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @decon_handle_vblank(%struct.decon_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
