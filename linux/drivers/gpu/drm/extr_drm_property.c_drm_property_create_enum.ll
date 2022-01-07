; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_create_enum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_create_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_prop_enum_list = type { i32, i32 }

@DRM_MODE_PROP_ENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_property* @drm_property_create_enum(%struct.drm_device* %0, i32 %1, i8* %2, %struct.drm_prop_enum_list* %3, i32 %4) #0 {
  %6 = alloca %struct.drm_property*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.drm_prop_enum_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_property*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.drm_prop_enum_list* %3, %struct.drm_prop_enum_list** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @DRM_MODE_PROP_ENUM, align 4
  %16 = load i32, i32* %8, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %8, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %18, i32 %19, i8* %20, i32 %21)
  store %struct.drm_property* %22, %struct.drm_property** %12, align 8
  %23 = load %struct.drm_property*, %struct.drm_property** %12, align 8
  %24 = icmp ne %struct.drm_property* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  store %struct.drm_property* null, %struct.drm_property** %6, align 8
  br label %58

26:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %53, %26
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load %struct.drm_property*, %struct.drm_property** %12, align 8
  %33 = load %struct.drm_prop_enum_list*, %struct.drm_prop_enum_list** %10, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %33, i64 %35
  %37 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_prop_enum_list*, %struct.drm_prop_enum_list** %10, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %39, i64 %41
  %43 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @drm_property_add_enum(%struct.drm_property* %32, i32 %38, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %31
  %49 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %50 = load %struct.drm_property*, %struct.drm_property** %12, align 8
  %51 = call i32 @drm_property_destroy(%struct.drm_device* %49, %struct.drm_property* %50)
  store %struct.drm_property* null, %struct.drm_property** %6, align 8
  br label %58

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %27

56:                                               ; preds = %27
  %57 = load %struct.drm_property*, %struct.drm_property** %12, align 8
  store %struct.drm_property* %57, %struct.drm_property** %6, align 8
  br label %58

58:                                               ; preds = %56, %48, %25
  %59 = load %struct.drm_property*, %struct.drm_property** %6, align 8
  ret %struct.drm_property* %59
}

declare dso_local %struct.drm_property* @drm_property_create(%struct.drm_device*, i32, i8*, i32) #1

declare dso_local i32 @drm_property_add_enum(%struct.drm_property*, i32, i32) #1

declare dso_local i32 @drm_property_destroy(%struct.drm_device*, %struct.drm_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
