; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_create_bitmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_create_bitmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_prop_enum_list = type { i64, i32 }

@DRM_MODE_PROP_BITMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_property* @drm_property_create_bitmask(%struct.drm_device* %0, i32 %1, i8* %2, %struct.drm_prop_enum_list* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.drm_property*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.drm_prop_enum_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.drm_property*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store %struct.drm_prop_enum_list* %3, %struct.drm_prop_enum_list** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = call i32 @hweight64(i64 %18)
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @DRM_MODE_PROP_BITMASK, align 4
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %17, align 4
  %27 = call %struct.drm_property* @drm_property_create(%struct.drm_device* %23, i32 %24, i8* %25, i32 %26)
  store %struct.drm_property* %27, %struct.drm_property** %14, align 8
  %28 = load %struct.drm_property*, %struct.drm_property** %14, align 8
  %29 = icmp ne %struct.drm_property* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %6
  store %struct.drm_property* null, %struct.drm_property** %7, align 8
  br label %75

31:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %70, %31
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %73

36:                                               ; preds = %32
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.drm_prop_enum_list*, %struct.drm_prop_enum_list** %11, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %38, i64 %40
  %42 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = shl i64 1, %43
  %45 = and i64 %37, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %70

48:                                               ; preds = %36
  %49 = load %struct.drm_property*, %struct.drm_property** %14, align 8
  %50 = load %struct.drm_prop_enum_list*, %struct.drm_prop_enum_list** %11, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %50, i64 %52
  %54 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.drm_prop_enum_list*, %struct.drm_prop_enum_list** %11, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %56, i64 %58
  %60 = getelementptr inbounds %struct.drm_prop_enum_list, %struct.drm_prop_enum_list* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @drm_property_add_enum(%struct.drm_property* %49, i64 %55, i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %48
  %66 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %67 = load %struct.drm_property*, %struct.drm_property** %14, align 8
  %68 = call i32 @drm_property_destroy(%struct.drm_device* %66, %struct.drm_property* %67)
  store %struct.drm_property* null, %struct.drm_property** %7, align 8
  br label %75

69:                                               ; preds = %48
  br label %70

70:                                               ; preds = %69, %47
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  br label %32

73:                                               ; preds = %32
  %74 = load %struct.drm_property*, %struct.drm_property** %14, align 8
  store %struct.drm_property* %74, %struct.drm_property** %7, align 8
  br label %75

75:                                               ; preds = %73, %65, %30
  %76 = load %struct.drm_property*, %struct.drm_property** %7, align 8
  ret %struct.drm_property* %76
}

declare dso_local i32 @hweight64(i64) #1

declare dso_local %struct.drm_property* @drm_property_create(%struct.drm_device*, i32, i8*, i32) #1

declare dso_local i32 @drm_property_add_enum(%struct.drm_property*, i64, i32) #1

declare dso_local i32 @drm_property_destroy(%struct.drm_device*, %struct.drm_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
