; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_norotate_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_norotate_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_chan = type { i32, %struct.ipu_image_convert_run* }
%struct.ipu_image_convert_run = type { %struct.ipu_image_convert_ctx* }
%struct.ipu_image_convert_ctx = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @norotate_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @norotate_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipu_image_convert_chan*, align 8
  %7 = alloca %struct.ipu_image_convert_ctx*, align 8
  %8 = alloca %struct.ipu_image_convert_run*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ipu_image_convert_chan*
  store %struct.ipu_image_convert_chan* %12, %struct.ipu_image_convert_chan** %6, align 8
  %13 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %14 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %18 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %17, i32 0, i32 1
  %19 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %18, align 8
  store %struct.ipu_image_convert_run* %19, %struct.ipu_image_convert_run** %8, align 8
  %20 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %8, align 8
  %21 = icmp ne %struct.ipu_image_convert_run* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %10, align 4
  br label %42

24:                                               ; preds = %2
  %25 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %8, align 8
  %26 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %25, i32 0, i32 0
  %27 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %26, align 8
  store %struct.ipu_image_convert_ctx* %27, %struct.ipu_image_convert_ctx** %7, align 8
  %28 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.ipu_image_convert_ctx, %struct.ipu_image_convert_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ipu_rot_mode_is_irt(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %35 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %34, i32 0, i32 0
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %38, i32* %3, align 4
  br label %48

39:                                               ; preds = %24
  %40 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %8, align 8
  %41 = call i32 @do_irq(%struct.ipu_image_convert_run* %40)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %39, %22
  %43 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %6, align 8
  %44 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %43, i32 0, i32 0
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %33
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ipu_rot_mode_is_irt(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @do_irq(%struct.ipu_image_convert_run*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
