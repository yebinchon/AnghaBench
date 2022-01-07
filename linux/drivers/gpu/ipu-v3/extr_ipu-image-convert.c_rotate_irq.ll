; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_rotate_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_rotate_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_chan = type { i32, %struct.ipu_image_convert_run*, %struct.ipu_image_convert_priv* }
%struct.ipu_image_convert_run = type { %struct.ipu_image_convert_ctx* }
%struct.ipu_image_convert_ctx = type { i32 }
%struct.ipu_image_convert_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unexpected rotation interrupt\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rotate_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rotate_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipu_image_convert_chan*, align 8
  %7 = alloca %struct.ipu_image_convert_priv*, align 8
  %8 = alloca %struct.ipu_image_convert_ctx*, align 8
  %9 = alloca %struct.ipu_image_convert_run*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ipu_image_convert_chan*
  store %struct.ipu_image_convert_chan* %13, %struct.ipu_image_convert_chan** %6, align 8
  %14 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %15 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %14, i32 0, i32 2
  %16 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %15, align 8
  store %struct.ipu_image_convert_priv* %16, %struct.ipu_image_convert_priv** %7, align 8
  %17 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %18 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %17, i32 0, i32 0
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %22 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %21, i32 0, i32 1
  %23 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %22, align 8
  store %struct.ipu_image_convert_run* %23, %struct.ipu_image_convert_run** %9, align 8
  %24 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %9, align 8
  %25 = icmp ne %struct.ipu_image_convert_run* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %11, align 4
  br label %52

28:                                               ; preds = %2
  %29 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %9, align 8
  %30 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %29, i32 0, i32 0
  %31 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %30, align 8
  store %struct.ipu_image_convert_ctx* %31, %struct.ipu_image_convert_ctx** %8, align 8
  %32 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ipu_rot_mode_is_irt(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %28
  %38 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %7, align 8
  %39 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %45 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %44, i32 0, i32 0
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %48, i32* %3, align 4
  br label %58

49:                                               ; preds = %28
  %50 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %9, align 8
  %51 = call i32 @do_irq(%struct.ipu_image_convert_run* %50)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %26
  %53 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %54 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %53, i32 0, i32 0
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %37
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_rot_mode_is_irt(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @do_irq(%struct.ipu_image_convert_run*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
