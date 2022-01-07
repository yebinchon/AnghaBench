; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_drc.c_sun6i_drc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_drc.c_sun6i_drc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sun6i_drc = type { i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Couldn't get our reset line\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Couldn't deassert our reset line\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Couldn't get our bus clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Couldn't get our mod clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @sun6i_drc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_drc_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sun6i_drc*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.sun6i_drc* @devm_kzalloc(%struct.device* %10, i32 24, i32 %11)
  store %struct.sun6i_drc* %12, %struct.sun6i_drc** %8, align 8
  %13 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %14 = icmp ne %struct.sun6i_drc* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %103

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %21 = call i32 @dev_set_drvdata(%struct.device* %19, %struct.sun6i_drc* %20)
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call i8* @devm_reset_control_get(%struct.device* %22, i32* null)
  %24 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %25 = getelementptr inbounds %struct.sun6i_drc, %struct.sun6i_drc* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %27 = getelementptr inbounds %struct.sun6i_drc, %struct.sun6i_drc* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @IS_ERR(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %18
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %35 = getelementptr inbounds %struct.sun6i_drc, %struct.sun6i_drc* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @PTR_ERR(i8* %36)
  store i32 %37, i32* %4, align 4
  br label %103

38:                                               ; preds = %18
  %39 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %40 = getelementptr inbounds %struct.sun6i_drc, %struct.sun6i_drc* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @reset_control_deassert(i8* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %103

49:                                               ; preds = %38
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i8* @devm_clk_get(%struct.device* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %53 = getelementptr inbounds %struct.sun6i_drc, %struct.sun6i_drc* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %55 = getelementptr inbounds %struct.sun6i_drc, %struct.sun6i_drc* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @IS_ERR(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %63 = getelementptr inbounds %struct.sun6i_drc, %struct.sun6i_drc* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %9, align 4
  br label %97

66:                                               ; preds = %49
  %67 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %68 = getelementptr inbounds %struct.sun6i_drc, %struct.sun6i_drc* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @clk_prepare_enable(i8* %69)
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = call i8* @devm_clk_get(%struct.device* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %73 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %74 = getelementptr inbounds %struct.sun6i_drc, %struct.sun6i_drc* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %76 = getelementptr inbounds %struct.sun6i_drc, %struct.sun6i_drc* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %66
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %83 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %84 = getelementptr inbounds %struct.sun6i_drc, %struct.sun6i_drc* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @PTR_ERR(i8* %85)
  store i32 %86, i32* %9, align 4
  br label %92

87:                                               ; preds = %66
  %88 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %89 = getelementptr inbounds %struct.sun6i_drc, %struct.sun6i_drc* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @clk_prepare_enable(i8* %90)
  store i32 0, i32* %4, align 4
  br label %103

92:                                               ; preds = %80
  %93 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %94 = getelementptr inbounds %struct.sun6i_drc, %struct.sun6i_drc* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @clk_disable_unprepare(i8* %95)
  br label %97

97:                                               ; preds = %92, %59
  %98 = load %struct.sun6i_drc*, %struct.sun6i_drc** %8, align 8
  %99 = getelementptr inbounds %struct.sun6i_drc, %struct.sun6i_drc* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @reset_control_assert(i8* %100)
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %97, %87, %45, %31, %15
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.sun6i_drc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.sun6i_drc*) #1

declare dso_local i8* @devm_reset_control_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @reset_control_deassert(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @reset_control_assert(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
