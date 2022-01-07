; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.occ = type { i32, i32, i32**, i32, i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"host is not ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to get OCC poll response: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to setup sensor attrs: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to register hwmon device: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to setup sysfs: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @occ_setup(%struct.occ* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.occ*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.occ* %0, %struct.occ** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.occ*, %struct.occ** %4, align 8
  %8 = getelementptr inbounds %struct.occ, %struct.occ* %7, i32 0, i32 4
  %9 = call i32 @mutex_init(i32* %8)
  %10 = load %struct.occ*, %struct.occ** %4, align 8
  %11 = getelementptr inbounds %struct.occ, %struct.occ* %10, i32 0, i32 3
  %12 = load %struct.occ*, %struct.occ** %4, align 8
  %13 = getelementptr inbounds %struct.occ, %struct.occ* %12, i32 0, i32 2
  %14 = load i32**, i32*** %13, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  store i32* %11, i32** %15, align 8
  %16 = load %struct.occ*, %struct.occ** %4, align 8
  %17 = call i32 @occ_poll(%struct.occ* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ESHUTDOWN, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.occ*, %struct.occ** %4, align 8
  %24 = getelementptr inbounds %struct.occ, %struct.occ* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_info(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %94

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.occ*, %struct.occ** %4, align 8
  %33 = getelementptr inbounds %struct.occ, %struct.occ* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %94

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.occ*, %struct.occ** %4, align 8
  %41 = call i32 @occ_parse_poll_response(%struct.occ* %40)
  %42 = load %struct.occ*, %struct.occ** %4, align 8
  %43 = call i32 @occ_setup_sensor_attrs(%struct.occ* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.occ*, %struct.occ** %4, align 8
  %48 = getelementptr inbounds %struct.occ, %struct.occ* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %94

53:                                               ; preds = %39
  %54 = load %struct.occ*, %struct.occ** %4, align 8
  %55 = getelementptr inbounds %struct.occ, %struct.occ* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.occ*, %struct.occ** %4, align 8
  %59 = load %struct.occ*, %struct.occ** %4, align 8
  %60 = getelementptr inbounds %struct.occ, %struct.occ* %59, i32 0, i32 2
  %61 = load i32**, i32*** %60, align 8
  %62 = call i32 @devm_hwmon_device_register_with_groups(i32 %56, i8* %57, %struct.occ* %58, i32** %61)
  %63 = load %struct.occ*, %struct.occ** %4, align 8
  %64 = getelementptr inbounds %struct.occ, %struct.occ* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.occ*, %struct.occ** %4, align 8
  %66 = getelementptr inbounds %struct.occ, %struct.occ* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %53
  %71 = load %struct.occ*, %struct.occ** %4, align 8
  %72 = getelementptr inbounds %struct.occ, %struct.occ* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load %struct.occ*, %struct.occ** %4, align 8
  %76 = getelementptr inbounds %struct.occ, %struct.occ* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %94

81:                                               ; preds = %53
  %82 = load %struct.occ*, %struct.occ** %4, align 8
  %83 = call i32 @occ_setup_sysfs(%struct.occ* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.occ*, %struct.occ** %4, align 8
  %88 = getelementptr inbounds %struct.occ, %struct.occ* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %70, %46, %31, %22
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @occ_poll(%struct.occ*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @occ_parse_poll_response(%struct.occ*) #1

declare dso_local i32 @occ_setup_sensor_attrs(%struct.occ*) #1

declare dso_local i32 @devm_hwmon_device_register_with_groups(i32, i8*, %struct.occ*, i32**) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @occ_setup_sysfs(%struct.occ*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
