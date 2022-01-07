; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property = type { i32, i8*, %struct.drm_property*, i32, i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DRM_PROP_NAME_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_PROPERTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_property* @drm_property_create(%struct.drm_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.drm_property*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_property*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.drm_property* null, %struct.drm_property** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @drm_property_flags_valid(i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store %struct.drm_property* null, %struct.drm_property** %5, align 8
  br label %99

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = load i32, i32* @DRM_PROP_NAME_LEN, align 4
  %24 = icmp sge i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store %struct.drm_property* null, %struct.drm_property** %5, align 8
  br label %99

29:                                               ; preds = %20
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.drm_property* @kzalloc(i32 48, i32 %30)
  store %struct.drm_property* %31, %struct.drm_property** %10, align 8
  %32 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %33 = icmp ne %struct.drm_property* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store %struct.drm_property* null, %struct.drm_property** %5, align 8
  br label %99

35:                                               ; preds = %29
  %36 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %37 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %38 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %37, i32 0, i32 7
  store %struct.drm_device* %36, %struct.drm_device** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.drm_property* @kcalloc(i32 %42, i32 4, i32 %43)
  %45 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %46 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %45, i32 0, i32 2
  store %struct.drm_property* %44, %struct.drm_property** %46, align 8
  %47 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %48 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %47, i32 0, i32 2
  %49 = load %struct.drm_property*, %struct.drm_property** %48, align 8
  %50 = icmp ne %struct.drm_property* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %92

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %35
  %54 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %55 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %56 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %55, i32 0, i32 6
  %57 = load i32, i32* @DRM_MODE_OBJECT_PROPERTY, align 4
  %58 = call i32 @drm_mode_object_add(%struct.drm_device* %54, i32* %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %92

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %65 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %68 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %70 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %69, i32 0, i32 4
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %73 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* @DRM_PROP_NAME_LEN, align 4
  %77 = call i32 @strncpy(i8* %74, i8* %75, i32 %76)
  %78 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %79 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @DRM_PROP_NAME_LEN, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8 0, i8* %84, align 1
  %85 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %86 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %85, i32 0, i32 3
  %87 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %88 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @list_add_tail(i32* %86, i32* %89)
  %91 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  store %struct.drm_property* %91, %struct.drm_property** %5, align 8
  br label %99

92:                                               ; preds = %61, %51
  %93 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %94 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %93, i32 0, i32 2
  %95 = load %struct.drm_property*, %struct.drm_property** %94, align 8
  %96 = call i32 @kfree(%struct.drm_property* %95)
  %97 = load %struct.drm_property*, %struct.drm_property** %10, align 8
  %98 = call i32 @kfree(%struct.drm_property* %97)
  store %struct.drm_property* null, %struct.drm_property** %5, align 8
  br label %99

99:                                               ; preds = %92, %62, %34, %28, %19
  %100 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  ret %struct.drm_property* %100
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @drm_property_flags_valid(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.drm_property* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_property* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @drm_mode_object_add(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.drm_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
