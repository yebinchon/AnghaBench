; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline.c_komeda_get_layer_split_right_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline.c_komeda_get_layer_split_right_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_pipeline = type { i32, %struct.komeda_layer** }
%struct.komeda_layer = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@KOMEDA_COMPONENT_LAYER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.komeda_layer* (%struct.komeda_pipeline*, %struct.komeda_layer*)* @komeda_get_layer_split_right_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.komeda_layer* @komeda_get_layer_split_right_layer(%struct.komeda_pipeline* %0, %struct.komeda_layer* %1) #0 {
  %3 = alloca %struct.komeda_layer*, align 8
  %4 = alloca %struct.komeda_pipeline*, align 8
  %5 = alloca %struct.komeda_layer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.komeda_pipeline* %0, %struct.komeda_pipeline** %4, align 8
  store %struct.komeda_layer* %1, %struct.komeda_layer** %5, align 8
  %8 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %9 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @KOMEDA_COMPONENT_LAYER0, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %45, %2
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %19 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load %struct.komeda_layer*, %struct.komeda_layer** %5, align 8
  %24 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %27 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %26, i32 0, i32 1
  %28 = load %struct.komeda_layer**, %struct.komeda_layer*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.komeda_layer*, %struct.komeda_layer** %28, i64 %30
  %32 = load %struct.komeda_layer*, %struct.komeda_layer** %31, align 8
  %33 = getelementptr inbounds %struct.komeda_layer, %struct.komeda_layer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %25, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %22
  %37 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %4, align 8
  %38 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %37, i32 0, i32 1
  %39 = load %struct.komeda_layer**, %struct.komeda_layer*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.komeda_layer*, %struct.komeda_layer** %39, i64 %41
  %43 = load %struct.komeda_layer*, %struct.komeda_layer** %42, align 8
  store %struct.komeda_layer* %43, %struct.komeda_layer** %3, align 8
  br label %49

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %16

48:                                               ; preds = %16
  store %struct.komeda_layer* null, %struct.komeda_layer** %3, align 8
  br label %49

49:                                               ; preds = %48, %36
  %50 = load %struct.komeda_layer*, %struct.komeda_layer** %3, align 8
  ret %struct.komeda_layer* %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
