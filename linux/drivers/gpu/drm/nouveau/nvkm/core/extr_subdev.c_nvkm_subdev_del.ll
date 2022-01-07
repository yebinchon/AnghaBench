; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_subdev.c_nvkm_subdev_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_subdev.c_nvkm_subdev_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_subdev* (%struct.nvkm_subdev*)* }

@.str = private unnamed_addr constant [20 x i8] c"destroy running...\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"destroy completed in %lldus\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_subdev_del(%struct.nvkm_subdev** %0) #0 {
  %2 = alloca %struct.nvkm_subdev**, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca i64, align 8
  store %struct.nvkm_subdev** %0, %struct.nvkm_subdev*** %2, align 8
  %5 = load %struct.nvkm_subdev**, %struct.nvkm_subdev*** %2, align 8
  %6 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  store %struct.nvkm_subdev* %6, %struct.nvkm_subdev** %3, align 8
  %7 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %8 = icmp ne %struct.nvkm_subdev* %7, null
  br i1 %8, label %9, label %50

9:                                                ; preds = %1
  %10 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %9
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %20 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_trace(%struct.nvkm_subdev* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (...) @ktime_get()
  %22 = call i64 @ktime_to_us(i32 %21)
  store i64 %22, i64* %4, align 8
  %23 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %24 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.nvkm_subdev* (%struct.nvkm_subdev*)*, %struct.nvkm_subdev* (%struct.nvkm_subdev*)** %26, align 8
  %28 = icmp ne %struct.nvkm_subdev* (%struct.nvkm_subdev*)* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %18
  %30 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %31 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.nvkm_subdev* (%struct.nvkm_subdev*)*, %struct.nvkm_subdev* (%struct.nvkm_subdev*)** %33, align 8
  %35 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %36 = call %struct.nvkm_subdev* %34(%struct.nvkm_subdev* %35)
  %37 = load %struct.nvkm_subdev**, %struct.nvkm_subdev*** %2, align 8
  store %struct.nvkm_subdev* %36, %struct.nvkm_subdev** %37, align 8
  br label %38

38:                                               ; preds = %29, %18
  %39 = call i32 (...) @ktime_get()
  %40 = call i64 @ktime_to_us(i32 %39)
  %41 = load i64, i64* %4, align 8
  %42 = sub nsw i64 %40, %41
  store i64 %42, i64* %4, align 8
  %43 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i32 (%struct.nvkm_subdev*, i8*, ...) @nvkm_trace(%struct.nvkm_subdev* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load %struct.nvkm_subdev**, %struct.nvkm_subdev*** %2, align 8
  %47 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %46, align 8
  %48 = call i32 @kfree(%struct.nvkm_subdev* %47)
  %49 = load %struct.nvkm_subdev**, %struct.nvkm_subdev*** %2, align 8
  store %struct.nvkm_subdev* null, %struct.nvkm_subdev** %49, align 8
  br label %50

50:                                               ; preds = %38, %9, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nvkm_trace(%struct.nvkm_subdev*, i8*, ...) #1

declare dso_local i64 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @kfree(%struct.nvkm_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
