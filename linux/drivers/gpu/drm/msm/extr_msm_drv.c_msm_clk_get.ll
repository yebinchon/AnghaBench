; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_msm_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.platform_device = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s_clk\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Using legacy clk name binding.  Use \22%s\22 instead of \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk* @msm_clk_get(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca [32 x i8], align 16
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.clk* @devm_clk_get(i32* %9, i8* %10)
  store %struct.clk* %11, %struct.clk** %6, align 8
  %12 = load %struct.clk*, %struct.clk** %6, align 8
  %13 = call i32 @IS_ERR(%struct.clk* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.clk*, %struct.clk** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.clk* %16)
  %18 = load i32, i32* @EPROBE_DEFER, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %2
  %22 = load %struct.clk*, %struct.clk** %6, align 8
  store %struct.clk* %22, %struct.clk** %3, align 8
  br label %42

23:                                               ; preds = %15
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @snprintf(i8* %24, i32 32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %30 = call %struct.clk* @devm_clk_get(i32* %28, i8* %29)
  store %struct.clk* %30, %struct.clk** %6, align 8
  %31 = load %struct.clk*, %struct.clk** %6, align 8
  %32 = call i32 @IS_ERR(%struct.clk* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %23
  %35 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %39 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %37, i8* %38)
  br label %40

40:                                               ; preds = %34, %23
  %41 = load %struct.clk*, %struct.clk** %6, align 8
  store %struct.clk* %41, %struct.clk** %3, align 8
  br label %42

42:                                               ; preds = %40, %21
  %43 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %43
}

declare dso_local %struct.clk* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
