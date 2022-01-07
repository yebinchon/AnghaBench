; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_irq.c_mga_driver_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mga/extr_mga_irq.c_mga_driver_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MGA_STATUS = common dso_local global i32 0, align 4
@MGA_VLINEPEN = common dso_local global i32 0, align 4
@MGA_ICLEAR = common dso_local global i32 0, align 4
@MGA_VLINEICLR = common dso_local global i32 0, align 4
@MGA_SOFTRAPEN = common dso_local global i32 0, align 4
@MGA_PRIMADDRESS = common dso_local global i32 0, align 4
@MGA_PRIMEND = common dso_local global i32 0, align 4
@MGA_SOFTRAPICLR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mga_driver_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.drm_device*
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* @MGA_STATUS, align 4
  %19 = call i8* @MGA_READ(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @MGA_VLINEPEN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load i32, i32* @MGA_ICLEAR, align 4
  %27 = load i32, i32* @MGA_VLINEICLR, align 4
  %28 = call i32 @MGA_WRITE(i32 %26, i32 %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = call i32 @atomic_inc(i32* %30)
  %32 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %33 = call i32 @drm_handle_vblank(%struct.drm_device* %32, i32 0)
  store i32 1, i32* %9, align 4
  br label %34

34:                                               ; preds = %25, %2
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @MGA_SOFTRAPEN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load i32, i32* @MGA_PRIMADDRESS, align 4
  %41 = call i8* @MGA_READ(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @MGA_PRIMEND, align 4
  %44 = call i8* @MGA_READ(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @MGA_ICLEAR, align 4
  %47 = load i32, i32* @MGA_SOFTRAPICLR, align 4
  %48 = call i32 @MGA_WRITE(i32 %46, i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, -4
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, -4
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %39
  %55 = load i32, i32* @MGA_PRIMEND, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @MGA_WRITE(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %39
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = call i32 @atomic_inc(i32* %60)
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @wake_up(i32* %63)
  store i32 1, i32* %9, align 4
  br label %65

65:                                               ; preds = %58, %34
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @IRQ_NONE, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i8* @MGA_READ(i32) #1

declare dso_local i32 @MGA_WRITE(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @drm_handle_vblank(%struct.drm_device*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
