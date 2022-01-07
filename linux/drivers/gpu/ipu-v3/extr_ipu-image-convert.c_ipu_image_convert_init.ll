; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_ipu_image_convert_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_ipu_image_convert_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { %struct.ipu_image_convert_priv* }
%struct.ipu_image_convert_priv = type { %struct.ipu_image_convert_chan*, %struct.ipu_soc* }
%struct.ipu_image_convert_chan = type { i32, i32, i32, i32, i32, i32, i32, i32*, %struct.ipu_image_convert_priv* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IC_NUM_TASKS = common dso_local global i32 0, align 4
@image_convert_dma_chan = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_image_convert_init(%struct.ipu_soc* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipu_soc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ipu_image_convert_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipu_image_convert_chan*, align 8
  store %struct.ipu_soc* %0, %struct.ipu_soc** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ipu_image_convert_priv* @devm_kzalloc(%struct.device* %9, i32 16, i32 %10)
  store %struct.ipu_image_convert_priv* %11, %struct.ipu_image_convert_priv** %6, align 8
  %12 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %6, align 8
  %13 = icmp ne %struct.ipu_image_convert_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %67

17:                                               ; preds = %2
  %18 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %6, align 8
  %19 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %20 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %19, i32 0, i32 0
  store %struct.ipu_image_convert_priv* %18, %struct.ipu_image_convert_priv** %20, align 8
  %21 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %22 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %6, align 8
  %23 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %22, i32 0, i32 1
  store %struct.ipu_soc* %21, %struct.ipu_soc** %23, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %63, %17
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @IC_NUM_TASKS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  %29 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %6, align 8
  %30 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %29, i32 0, i32 0
  %31 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %31, i64 %33
  store %struct.ipu_image_convert_chan* %34, %struct.ipu_image_convert_chan** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %8, align 8
  %37 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %6, align 8
  %39 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %8, align 8
  %40 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %39, i32 0, i32 8
  store %struct.ipu_image_convert_priv* %38, %struct.ipu_image_convert_priv** %40, align 8
  %41 = load i32*, i32** @image_convert_dma_chan, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %8, align 8
  %46 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %45, i32 0, i32 7
  store i32* %44, i32** %46, align 8
  %47 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %8, align 8
  %48 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %47, i32 0, i32 1
  store i32 -1, i32* %48, align 4
  %49 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %8, align 8
  %50 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %49, i32 0, i32 2
  store i32 -1, i32* %50, align 8
  %51 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %8, align 8
  %52 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %51, i32 0, i32 6
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %8, align 8
  %55 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %54, i32 0, i32 5
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %8, align 8
  %58 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %57, i32 0, i32 4
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %8, align 8
  %61 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %60, i32 0, i32 3
  %62 = call i32 @INIT_LIST_HEAD(i32* %61)
  br label %63

63:                                               ; preds = %28
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %24

66:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %14
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.ipu_image_convert_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
