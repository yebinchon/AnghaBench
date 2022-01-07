; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_attach_scaling_mode_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_connector.c_drm_connector_attach_scaling_mode_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_connector = type { %struct.drm_property*, i32, %struct.drm_device* }
%struct.drm_property = type { i32 }
%struct.drm_device = type { i32 }

@drm_scaling_mode_enum_list = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_PROP_ENUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"scaling mode\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_connector_attach_scaling_mode_property(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 2
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %6, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @drm_scaling_mode_enum_list, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %14)
  %16 = shl i32 1, %15
  %17 = sub i32 %16, 1
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @hweight32(i32 %18)
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %9, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %21, %2
  %28 = phi i1 [ true, %2 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %93

35:                                               ; preds = %27
  %36 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %37 = load i32, i32* @DRM_MODE_PROP_ENUM, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @hweight32(i32 %38)
  %40 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %36, i32 %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %39)
  store %struct.drm_property* %40, %struct.drm_property** %7, align 8
  %41 = load %struct.drm_property*, %struct.drm_property** %7, align 8
  %42 = icmp ne %struct.drm_property* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %93

46:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %82, %46
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @drm_scaling_mode_enum_list, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %49)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %82

59:                                               ; preds = %52
  %60 = load %struct.drm_property*, %struct.drm_property** %7, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @drm_scaling_mode_enum_list, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @drm_scaling_mode_enum_list, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @drm_property_add_enum(%struct.drm_property* %60, i32 %66, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %59
  %77 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %78 = load %struct.drm_property*, %struct.drm_property** %7, align 8
  %79 = call i32 @drm_property_destroy(%struct.drm_device* %77, %struct.drm_property* %78)
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %3, align 4
  br label %93

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81, %58
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %47

85:                                               ; preds = %47
  %86 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %87 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %86, i32 0, i32 1
  %88 = load %struct.drm_property*, %struct.drm_property** %7, align 8
  %89 = call i32 @drm_object_attach_property(i32* %87, %struct.drm_property* %88, i32 0)
  %90 = load %struct.drm_property*, %struct.drm_property** %7, align 8
  %91 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %92 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %91, i32 0, i32 0
  store %struct.drm_property* %90, %struct.drm_property** %92, align 8
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %85, %76, %43, %32
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local %struct.drm_property* @drm_property_create(%struct.drm_device*, i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_property_add_enum(%struct.drm_property*, i32, i32) #1

declare dso_local i32 @drm_property_destroy(%struct.drm_device*, %struct.drm_property*) #1

declare dso_local i32 @drm_object_attach_property(i32*, %struct.drm_property*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
