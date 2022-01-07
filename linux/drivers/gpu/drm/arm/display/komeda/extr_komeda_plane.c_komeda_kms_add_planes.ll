; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_plane.c_komeda_kms_add_planes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_plane.c_komeda_kms_add_planes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_kms_dev = type { i32 }
%struct.komeda_dev = type { i32, %struct.komeda_pipeline** }
%struct.komeda_pipeline = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @komeda_kms_add_planes(%struct.komeda_kms_dev* %0, %struct.komeda_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.komeda_kms_dev*, align 8
  %5 = alloca %struct.komeda_dev*, align 8
  %6 = alloca %struct.komeda_pipeline*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.komeda_kms_dev* %0, %struct.komeda_kms_dev** %4, align 8
  store %struct.komeda_dev* %1, %struct.komeda_dev** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %49, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %13 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %10
  %17 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %18 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %17, i32 0, i32 1
  %19 = load %struct.komeda_pipeline**, %struct.komeda_pipeline*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.komeda_pipeline*, %struct.komeda_pipeline** %19, i64 %21
  %23 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %22, align 8
  store %struct.komeda_pipeline* %23, %struct.komeda_pipeline** %6, align 8
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %45, %16
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %27 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %32 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %33 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @komeda_plane_add(%struct.komeda_kms_dev* %31, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %30
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %53

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %24

48:                                               ; preds = %24
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %10

52:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %42
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @komeda_plane_add(%struct.komeda_kms_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
