; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tve200/extr_tve200_display.c_tve200_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tve200/extr_tve200_display.c_tve200_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tve200_drm_dev_private = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TVE200_INT_STAT = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@TVE200_INT_V_STATUS = common dso_local global i32 0, align 4
@TVE200_CTRL = common dso_local global i64 0, align 8
@TVE200_VSTSTYPE_BITS = common dso_local global i32 0, align 4
@TVE200_VSTSTYPE_VAI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"stray IRQ %08x\0A\00", align 1
@TVE200_INT_CLR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tve200_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tve200_drm_dev_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.tve200_drm_dev_private*
  store %struct.tve200_drm_dev_private* %10, %struct.tve200_drm_dev_private** %6, align 8
  %11 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %6, align 8
  %12 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TVE200_INT_STAT, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %75

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @TVE200_INT_V_STATUS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %21
  %27 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %6, align 8
  %28 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TVE200_CTRL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @TVE200_VSTSTYPE_BITS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %26
  %38 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %6, align 8
  %39 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @drm_crtc_handle_vblank(i32* %40)
  %42 = load i32, i32* @TVE200_VSTSTYPE_VAI, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %50

45:                                               ; preds = %26
  %46 = load i32, i32* @TVE200_VSTSTYPE_BITS, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %45, %37
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %6, align 8
  %53 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TVE200_CTRL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  br label %66

58:                                               ; preds = %21
  %59 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %6, align 8
  %60 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %58, %50
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.tve200_drm_dev_private*, %struct.tve200_drm_dev_private** %6, align 8
  %69 = getelementptr inbounds %struct.tve200_drm_dev_private, %struct.tve200_drm_dev_private* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TVE200_INT_CLR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %66, %19
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @drm_crtc_handle_vblank(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
