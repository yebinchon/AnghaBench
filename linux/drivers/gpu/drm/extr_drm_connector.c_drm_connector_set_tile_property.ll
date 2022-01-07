; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_set_tile_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_set_tile_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, %struct.drm_device* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"%d:%d:%d:%d:%d:%d:%d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_connector_set_tile_property(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 11
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 7
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @drm_property_replace_global_blob(%struct.drm_device* %15, i32* %17, i64 0, i8* null, i32* %19, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %70

26:                                               ; preds = %1
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %28 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %29 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %28, i32 0, i32 9
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %34 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %37 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %43 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %46 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %49 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %52 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @snprintf(i8* %27, i32 256, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53)
  %55 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %56 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %57 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %56, i32 0, i32 8
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %59 = call i64 @strlen(i8* %58)
  %60 = add nsw i64 %59, 1
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %62 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %63 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %62, i32 0, i32 7
  %64 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @drm_property_replace_global_blob(%struct.drm_device* %55, i32* %57, i64 %60, i8* %61, i32* %63, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %26, %14
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @drm_property_replace_global_blob(%struct.drm_device*, i32*, i64, i8*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
