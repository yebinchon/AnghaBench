; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_drv.c_armada_drm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_drv.c_armada_drm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i8**, i64 }
%struct.component_match = type { i32 }

@compare_dev_name = common dso_local global i32 0, align 4
@armada_master_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"missing 'ports' property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@platform_bus_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @armada_drm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_drm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.component_match*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.component_match* null, %struct.component_match** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i32, i32* @compare_dev_name, align 4
  %14 = call i32 @drm_of_component_probe(%struct.device* %12, i32 %13, i32* @armada_master_ops)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %97

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %92

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  store i8** %29, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %46, %26
  %31 = load i8**, i8*** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load i32, i32* @compare_dev_name, align 4
  %40 = load i8**, i8*** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @component_match_add(%struct.device* %38, %struct.component_match** %4, i32 %39, i8* %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %97

57:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %88, %57
  %59 = load i8**, i8*** %7, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %91

65:                                               ; preds = %58
  %66 = load i8**, i8*** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call %struct.device* @bus_find_device_by_name(i32* @platform_bus_type, i32* null, i8* %70)
  store %struct.device* %71, %struct.device** %8, align 8
  %72 = load %struct.device*, %struct.device** %8, align 8
  %73 = icmp ne %struct.device* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %65
  %75 = load %struct.device*, %struct.device** %8, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load %struct.device*, %struct.device** %8, align 8
  %82 = getelementptr inbounds %struct.device, %struct.device* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @armada_add_endpoints(%struct.device* %80, %struct.component_match** %4, i64 %83)
  br label %85

85:                                               ; preds = %79, %74, %65
  %86 = load %struct.device*, %struct.device** %8, align 8
  %87 = call i32 @put_device(%struct.device* %86)
  br label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %58

91:                                               ; preds = %58
  br label %92

92:                                               ; preds = %91, %21
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = load %struct.component_match*, %struct.component_match** %4, align 8
  %96 = call i32 @component_master_add_with_match(%struct.device* %94, i32* @armada_master_ops, %struct.component_match* %95)
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %92, %52, %19
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @drm_of_component_probe(%struct.device*, i32, i32*) #1

declare dso_local i32 @component_match_add(%struct.device*, %struct.component_match**, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.device* @bus_find_device_by_name(i32*, i32*, i8*) #1

declare dso_local i32 @armada_add_endpoints(%struct.device*, %struct.component_match**, i64) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @component_master_add_with_match(%struct.device*, i32*, %struct.component_match*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
