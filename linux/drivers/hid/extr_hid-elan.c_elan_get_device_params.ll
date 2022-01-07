; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_get_device_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_get_device_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.elan_drvdata = type { i8, i8, i8*, i8* }

@ELAN_FEATURE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ELAN_PARAM_MAX_X = common dso_local global i32 0, align 4
@ELAN_PARAM_MAX_Y = common dso_local global i32 0, align 4
@ELAN_PARAM_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @elan_get_device_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_get_device_params(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.elan_drvdata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %8 = call %struct.elan_drvdata* @hid_get_drvdata(%struct.hid_device* %7)
  store %struct.elan_drvdata* %8, %struct.elan_drvdata** %4, align 8
  %9 = load i32, i32* @ELAN_FEATURE_SIZE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kmalloc(i32 %9, i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %84

17:                                               ; preds = %1
  %18 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @ELAN_PARAM_MAX_X, align 4
  %21 = call i32 @elan_get_device_param(%struct.hid_device* %18, i8* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %80

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 4
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 8
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %30, %34
  %36 = trunc i32 %35 to i8
  %37 = load %struct.elan_drvdata*, %struct.elan_drvdata** %4, align 8
  %38 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %37, i32 0, i32 0
  store i8 %36, i8* %38, align 8
  %39 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @ELAN_PARAM_MAX_Y, align 4
  %42 = call i32 @elan_get_device_param(%struct.hid_device* %39, i8* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %25
  br label %80

46:                                               ; preds = %25
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 4
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 8
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 3
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %51, %55
  %57 = trunc i32 %56 to i8
  %58 = load %struct.elan_drvdata*, %struct.elan_drvdata** %4, align 8
  %59 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %58, i32 0, i32 1
  store i8 %57, i8* %59, align 1
  %60 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* @ELAN_PARAM_RES, align 4
  %63 = call i32 @elan_get_device_param(%struct.hid_device* %60, i8* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %46
  br label %80

67:                                               ; preds = %46
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 3
  %70 = load i8, i8* %69, align 1
  %71 = call i8* @elan_convert_res(i8 zeroext %70)
  %72 = load %struct.elan_drvdata*, %struct.elan_drvdata** %4, align 8
  %73 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  %76 = load i8, i8* %75, align 1
  %77 = call i8* @elan_convert_res(i8 zeroext %76)
  %78 = load %struct.elan_drvdata*, %struct.elan_drvdata** %4, align 8
  %79 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %67, %66, %45, %24
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @kfree(i8* %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %14
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.elan_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @elan_get_device_param(%struct.hid_device*, i8*, i32) #1

declare dso_local i8* @elan_convert_res(i8 zeroext) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
