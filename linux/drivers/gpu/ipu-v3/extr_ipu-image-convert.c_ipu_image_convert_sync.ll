; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_ipu_image_convert_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_ipu_image_convert_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_soc = type { i32 }
%struct.ipu_image = type { i32 }
%struct.ipu_image_convert_run = type { i32 }
%struct.completion = type { i32 }

@image_convert_sync_complete = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_image_convert_sync(%struct.ipu_soc* %0, i32 %1, %struct.ipu_image* %2, %struct.ipu_image* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipu_soc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipu_image*, align 8
  %10 = alloca %struct.ipu_image*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipu_image_convert_run*, align 8
  %13 = alloca %struct.completion, align 4
  %14 = alloca i32, align 4
  store %struct.ipu_soc* %0, %struct.ipu_soc** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ipu_image* %2, %struct.ipu_image** %9, align 8
  store %struct.ipu_image* %3, %struct.ipu_image** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = call i32 @init_completion(%struct.completion* %13)
  %16 = load %struct.ipu_soc*, %struct.ipu_soc** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.ipu_image*, %struct.ipu_image** %9, align 8
  %19 = load %struct.ipu_image*, %struct.ipu_image** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @image_convert_sync_complete, align 4
  %22 = call %struct.ipu_image_convert_run* @ipu_image_convert(%struct.ipu_soc* %16, i32 %17, %struct.ipu_image* %18, %struct.ipu_image* %19, i32 %20, i32 %21, %struct.completion* %13)
  store %struct.ipu_image_convert_run* %22, %struct.ipu_image_convert_run** %12, align 8
  %23 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %12, align 8
  %24 = call i64 @IS_ERR(%struct.ipu_image_convert_run* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %12, align 8
  %28 = call i32 @PTR_ERR(%struct.ipu_image_convert_run* %27)
  store i32 %28, i32* %6, align 4
  br label %47

29:                                               ; preds = %5
  %30 = call i32 @msecs_to_jiffies(i32 10000)
  %31 = call i32 @wait_for_completion_timeout(%struct.completion* %13, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  br label %38

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i32 [ %36, %34 ], [ 0, %37 ]
  store i32 %39, i32* %14, align 4
  %40 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %12, align 8
  %41 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ipu_image_convert_unprepare(i32 %42)
  %44 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %12, align 8
  %45 = call i32 @kfree(%struct.ipu_image_convert_run* %44)
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %38, %26
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local %struct.ipu_image_convert_run* @ipu_image_convert(%struct.ipu_soc*, i32, %struct.ipu_image*, %struct.ipu_image*, i32, i32, %struct.completion*) #1

declare dso_local i64 @IS_ERR(%struct.ipu_image_convert_run*) #1

declare dso_local i32 @PTR_ERR(%struct.ipu_image_convert_run*) #1

declare dso_local i32 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ipu_image_convert_unprepare(i32) #1

declare dso_local i32 @kfree(%struct.ipu_image_convert_run*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
