; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_device.c_find_chipid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_device.c_find_chipid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.adreno_rev = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"qcom,adreno-%u.%u\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"amd,imageon-%u.%u\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"qcom,chipid\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"could not parse qcom,chipid: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Using legacy qcom,chipid binding!\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"Use compatible qcom,adreno-%u%u%u.%u instead.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.adreno_rev*)* @find_chipid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_chipid(%struct.device* %0, %struct.adreno_rev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.adreno_rev*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.adreno_rev* %1, %struct.adreno_rev** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = call i32 @of_property_read_string_index(%struct.device_node* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0, i8** %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %2
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32* %11)
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @sscanf(i8* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %10, i32* %11)
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %46

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %10, align 4
  %29 = udiv i32 %28, 100
  %30 = load %struct.adreno_rev*, %struct.adreno_rev** %5, align 8
  %31 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = urem i32 %32, 100
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = udiv i32 %34, 10
  %36 = load %struct.adreno_rev*, %struct.adreno_rev** %5, align 8
  %37 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = urem i32 %38, 10
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.adreno_rev*, %struct.adreno_rev** %5, align 8
  %42 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.adreno_rev*, %struct.adreno_rev** %5, align 8
  %45 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %93

46:                                               ; preds = %23
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.device_node*, %struct.device_node** %6, align 8
  %49 = call i32 @of_property_read_u32(%struct.device_node* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @DRM_DEV_ERROR(%struct.device* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %93

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 24
  %60 = and i32 %59, 255
  %61 = load %struct.adreno_rev*, %struct.adreno_rev** %5, align 8
  %62 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 16
  %65 = and i32 %64, 255
  %66 = load %struct.adreno_rev*, %struct.adreno_rev** %5, align 8
  %67 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %9, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 255
  %71 = load %struct.adreno_rev*, %struct.adreno_rev** %5, align 8
  %72 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, 255
  %75 = load %struct.adreno_rev*, %struct.adreno_rev** %5, align 8
  %76 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %77, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.adreno_rev*, %struct.adreno_rev** %5, align 8
  %81 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.adreno_rev*, %struct.adreno_rev** %5, align 8
  %84 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.adreno_rev*, %struct.adreno_rev** %5, align 8
  %87 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.adreno_rev*, %struct.adreno_rev** %5, align 8
  %90 = getelementptr inbounds %struct.adreno_rev, %struct.adreno_rev* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %79, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %82, i32 %85, i32 %88, i32 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %57, %52, %27
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
