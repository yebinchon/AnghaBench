; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_overlay.c_armada_overlay_create_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_overlay.c_armada_overlay_create_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.armada_private* }
%struct.armada_private = type { i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"colorkey\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"colorkey_min\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"colorkey_max\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"colorkey_val\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"colorkey_alpha\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"colorkey_mode\00", align 1
@armada_drm_colorkey_enum_list = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @armada_overlay_create_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_overlay_create_properties(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.armada_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.armada_private*, %struct.armada_private** %6, align 8
  store %struct.armada_private* %7, %struct.armada_private** %4, align 8
  %8 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %9 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

13:                                               ; preds = %1
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = call i8* @drm_property_create_range(%struct.drm_device* %14, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 16777215)
  %16 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %17 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %19 = call i8* @drm_property_create_range(%struct.drm_device* %18, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 16777215)
  %20 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %21 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %20, i32 0, i32 8
  store i8* %19, i8** %21, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = call i8* @drm_property_create_range(%struct.drm_device* %22, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 16777215)
  %24 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %25 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = call i8* @drm_property_create_range(%struct.drm_device* %26, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 16777215)
  %28 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %29 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = call i8* @drm_property_create_range(%struct.drm_device* %30, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 16777215)
  %32 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %33 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = load i32, i32* @armada_drm_colorkey_enum_list, align 4
  %36 = load i32, i32* @armada_drm_colorkey_enum_list, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = call i32 @drm_property_create_enum(%struct.drm_device* %34, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %35, i32 %37)
  %39 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %40 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %42 = call i8* @drm_property_create_range(%struct.drm_device* %41, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 511)
  %43 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %44 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %46 = call i8* @drm_property_create_range(%struct.drm_device* %45, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 32767)
  %47 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %48 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %50 = call i8* @drm_property_create_range(%struct.drm_device* %49, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 0, i32 32767)
  %51 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %52 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.armada_private*, %struct.armada_private** %4, align 8
  %54 = getelementptr inbounds %struct.armada_private, %struct.armada_private* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %13
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %57, %12
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i8* @drm_property_create_range(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @drm_property_create_enum(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
