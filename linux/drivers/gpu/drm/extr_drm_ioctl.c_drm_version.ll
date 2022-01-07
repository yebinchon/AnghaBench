; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_file = type { i32 }
%struct.drm_version = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_version(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_version*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.drm_version*
  store %struct.drm_version* %10, %struct.drm_version** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_version*, %struct.drm_version** %7, align 8
  %17 = getelementptr inbounds %struct.drm_version, %struct.drm_version* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_version*, %struct.drm_version** %7, align 8
  %24 = getelementptr inbounds %struct.drm_version, %struct.drm_version* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.drm_version*, %struct.drm_version** %7, align 8
  %31 = getelementptr inbounds %struct.drm_version, %struct.drm_version* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load %struct.drm_version*, %struct.drm_version** %7, align 8
  %33 = getelementptr inbounds %struct.drm_version, %struct.drm_version* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_version*, %struct.drm_version** %7, align 8
  %36 = getelementptr inbounds %struct.drm_version, %struct.drm_version* %35, i32 0, i32 4
  %37 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @drm_copy_field(i32 %34, i32* %36, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %3
  %46 = load %struct.drm_version*, %struct.drm_version** %7, align 8
  %47 = getelementptr inbounds %struct.drm_version, %struct.drm_version* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_version*, %struct.drm_version** %7, align 8
  %50 = getelementptr inbounds %struct.drm_version, %struct.drm_version* %49, i32 0, i32 2
  %51 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @drm_copy_field(i32 %48, i32* %50, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %45, %3
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = load %struct.drm_version*, %struct.drm_version** %7, align 8
  %62 = getelementptr inbounds %struct.drm_version, %struct.drm_version* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_version*, %struct.drm_version** %7, align 8
  %65 = getelementptr inbounds %struct.drm_version, %struct.drm_version* %64, i32 0, i32 0
  %66 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @drm_copy_field(i32 %63, i32* %65, i32 %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %60, %57
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @drm_copy_field(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
