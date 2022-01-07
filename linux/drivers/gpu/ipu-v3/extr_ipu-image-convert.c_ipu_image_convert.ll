; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_ipu_image_convert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_ipu_image_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_run = type { i32, i32, %struct.ipu_image_convert_ctx* }
%struct.ipu_image_convert_ctx = type { i32 }
%struct.ipu_soc = type { i32 }
%struct.ipu_image = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipu_image_convert_run* @ipu_image_convert(%struct.ipu_soc* %0, i32 %1, %struct.ipu_image* %2, %struct.ipu_image* %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.ipu_image_convert_run*, align 8
  %9 = alloca %struct.ipu_soc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipu_image*, align 8
  %12 = alloca %struct.ipu_image*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ipu_image_convert_ctx*, align 8
  %17 = alloca %struct.ipu_image_convert_run*, align 8
  %18 = alloca i32, align 4
  store %struct.ipu_soc* %0, %struct.ipu_soc** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.ipu_image* %2, %struct.ipu_image** %11, align 8
  store %struct.ipu_image* %3, %struct.ipu_image** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %19 = load %struct.ipu_soc*, %struct.ipu_soc** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.ipu_image*, %struct.ipu_image** %11, align 8
  %22 = load %struct.ipu_image*, %struct.ipu_image** %12, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i8*, i8** %15, align 8
  %26 = call %struct.ipu_image_convert_ctx* @ipu_image_convert_prepare(%struct.ipu_soc* %19, i32 %20, %struct.ipu_image* %21, %struct.ipu_image* %22, i32 %23, i32 %24, i8* %25)
  store %struct.ipu_image_convert_ctx* %26, %struct.ipu_image_convert_ctx** %16, align 8
  %27 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %16, align 8
  %28 = call i64 @IS_ERR(%struct.ipu_image_convert_ctx* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %7
  %31 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %16, align 8
  %32 = call %struct.ipu_image_convert_run* @ERR_CAST(%struct.ipu_image_convert_ctx* %31)
  store %struct.ipu_image_convert_run* %32, %struct.ipu_image_convert_run** %8, align 8
  br label %71

33:                                               ; preds = %7
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.ipu_image_convert_run* @kzalloc(i32 16, i32 %34)
  store %struct.ipu_image_convert_run* %35, %struct.ipu_image_convert_run** %17, align 8
  %36 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %17, align 8
  %37 = icmp ne %struct.ipu_image_convert_run* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %16, align 8
  %40 = call i32 @ipu_image_convert_unprepare(%struct.ipu_image_convert_ctx* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.ipu_image_convert_run* @ERR_PTR(i32 %42)
  store %struct.ipu_image_convert_run* %43, %struct.ipu_image_convert_run** %8, align 8
  br label %71

44:                                               ; preds = %33
  %45 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %16, align 8
  %46 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %17, align 8
  %47 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %46, i32 0, i32 2
  store %struct.ipu_image_convert_ctx* %45, %struct.ipu_image_convert_ctx** %47, align 8
  %48 = load %struct.ipu_image*, %struct.ipu_image** %11, align 8
  %49 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %17, align 8
  %52 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ipu_image*, %struct.ipu_image** %12, align 8
  %54 = getelementptr inbounds %struct.ipu_image, %struct.ipu_image* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %17, align 8
  %57 = getelementptr inbounds %struct.ipu_image_convert_run, %struct.ipu_image_convert_run* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %17, align 8
  %59 = call i32 @ipu_image_convert_queue(%struct.ipu_image_convert_run* %58)
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %44
  %63 = load %struct.ipu_image_convert_ctx*, %struct.ipu_image_convert_ctx** %16, align 8
  %64 = call i32 @ipu_image_convert_unprepare(%struct.ipu_image_convert_ctx* %63)
  %65 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %17, align 8
  %66 = call i32 @kfree(%struct.ipu_image_convert_run* %65)
  %67 = load i32, i32* %18, align 4
  %68 = call %struct.ipu_image_convert_run* @ERR_PTR(i32 %67)
  store %struct.ipu_image_convert_run* %68, %struct.ipu_image_convert_run** %8, align 8
  br label %71

69:                                               ; preds = %44
  %70 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %17, align 8
  store %struct.ipu_image_convert_run* %70, %struct.ipu_image_convert_run** %8, align 8
  br label %71

71:                                               ; preds = %69, %62, %38, %30
  %72 = load %struct.ipu_image_convert_run*, %struct.ipu_image_convert_run** %8, align 8
  ret %struct.ipu_image_convert_run* %72
}

declare dso_local %struct.ipu_image_convert_ctx* @ipu_image_convert_prepare(%struct.ipu_soc*, i32, %struct.ipu_image*, %struct.ipu_image*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.ipu_image_convert_ctx*) #1

declare dso_local %struct.ipu_image_convert_run* @ERR_CAST(%struct.ipu_image_convert_ctx*) #1

declare dso_local %struct.ipu_image_convert_run* @kzalloc(i32, i32) #1

declare dso_local i32 @ipu_image_convert_unprepare(%struct.ipu_image_convert_ctx*) #1

declare dso_local %struct.ipu_image_convert_run* @ERR_PTR(i32) #1

declare dso_local i32 @ipu_image_convert_queue(%struct.ipu_image_convert_run*) #1

declare dso_local i32 @kfree(%struct.ipu_image_convert_run*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
