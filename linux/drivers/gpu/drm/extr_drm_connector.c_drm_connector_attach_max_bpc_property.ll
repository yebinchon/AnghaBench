; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_attach_max_bpc_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_attach_max_bpc_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_2__*, i32, %struct.drm_property*, %struct.drm_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_property = type { i32 }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"max bpc\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_connector_attach_max_bpc_property(%struct.drm_connector* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_property*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 3
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %8, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 2
  %15 = load %struct.drm_property*, %struct.drm_property** %14, align 8
  store %struct.drm_property* %15, %struct.drm_property** %9, align 8
  %16 = load %struct.drm_property*, %struct.drm_property** %9, align 8
  %17 = icmp ne %struct.drm_property* %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %3
  %19 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.drm_property* @drm_property_create_range(%struct.drm_device* %19, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  store %struct.drm_property* %22, %struct.drm_property** %9, align 8
  %23 = load %struct.drm_property*, %struct.drm_property** %9, align 8
  %24 = icmp ne %struct.drm_property* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %48

28:                                               ; preds = %18
  %29 = load %struct.drm_property*, %struct.drm_property** %9, align 8
  %30 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %31 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %30, i32 0, i32 2
  store %struct.drm_property* %29, %struct.drm_property** %31, align 8
  br label %32

32:                                               ; preds = %28, %3
  %33 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %34 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %33, i32 0, i32 1
  %35 = load %struct.drm_property*, %struct.drm_property** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @drm_object_attach_property(i32* %34, %struct.drm_property* %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %40 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %45 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %32, %25
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.drm_property* @drm_property_create_range(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @drm_object_attach_property(i32*, %struct.drm_property*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
