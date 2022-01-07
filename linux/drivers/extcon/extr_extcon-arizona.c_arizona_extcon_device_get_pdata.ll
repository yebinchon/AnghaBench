; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_extcon_device_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-arizona.c_arizona_extcon_device_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.arizona = type { i32, %struct.arizona_pdata }
%struct.arizona_pdata = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [18 x i8] c"wlf,hpdet-channel\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Wrong wlf,hpdet-channel DT value %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"wlf,micd-detect-debounce\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"wlf,micd-bias-start-time\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"wlf,micd-rate\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"wlf,micd-dbtime\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"wlf,micd-timeout-ms\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"wlf,micd-force-micbias\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"wlf,micd-software-compare\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"wlf,jd-invert\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"wlf,gpsw\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"wlf,use-jd2\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"wlf,use-jd2-nopull\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Failed to read micd configs: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.arizona*)* @arizona_extcon_device_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_extcon_device_get_pdata(%struct.device* %0, %struct.arizona* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.arizona*, align 8
  %5 = alloca %struct.arizona_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.arizona* %1, %struct.arizona** %4, align 8
  %8 = load %struct.arizona*, %struct.arizona** %4, align 8
  %9 = getelementptr inbounds %struct.arizona, %struct.arizona* %8, i32 0, i32 1
  store %struct.arizona_pdata* %9, %struct.arizona_pdata** %5, align 8
  store i32 129, i32* %6, align 4
  %10 = load %struct.arizona*, %struct.arizona** %4, align 8
  %11 = getelementptr inbounds %struct.arizona, %struct.arizona* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @device_property_read_u32(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %6)
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %19 [
    i32 129, label %15
    i32 128, label %15
  ]

15:                                               ; preds = %2, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %18 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.arizona*, %struct.arizona** %4, align 8
  %21 = getelementptr inbounds %struct.arizona, %struct.arizona* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %26 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %25, i32 0, i32 0
  store i32 129, i32* %26, align 8
  br label %27

27:                                               ; preds = %19, %15
  %28 = load %struct.arizona*, %struct.arizona** %4, align 8
  %29 = getelementptr inbounds %struct.arizona, %struct.arizona* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %32 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %31, i32 0, i32 1
  %33 = call i32 @device_property_read_u32(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %32)
  %34 = load %struct.arizona*, %struct.arizona** %4, align 8
  %35 = getelementptr inbounds %struct.arizona, %struct.arizona* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %38 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %37, i32 0, i32 2
  %39 = call i32 @device_property_read_u32(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %38)
  %40 = load %struct.arizona*, %struct.arizona** %4, align 8
  %41 = getelementptr inbounds %struct.arizona, %struct.arizona* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %44 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %43, i32 0, i32 3
  %45 = call i32 @device_property_read_u32(i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %44)
  %46 = load %struct.arizona*, %struct.arizona** %4, align 8
  %47 = getelementptr inbounds %struct.arizona, %struct.arizona* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %50 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %49, i32 0, i32 4
  %51 = call i32 @device_property_read_u32(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %50)
  %52 = load %struct.arizona*, %struct.arizona** %4, align 8
  %53 = getelementptr inbounds %struct.arizona, %struct.arizona* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %56 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %55, i32 0, i32 5
  %57 = call i32 @device_property_read_u32(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32* %56)
  %58 = load %struct.arizona*, %struct.arizona** %4, align 8
  %59 = getelementptr inbounds %struct.arizona, %struct.arizona* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @device_property_read_bool(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %62 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %63 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %62, i32 0, i32 11
  store i8* %61, i8** %63, align 8
  %64 = load %struct.arizona*, %struct.arizona** %4, align 8
  %65 = getelementptr inbounds %struct.arizona, %struct.arizona* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @device_property_read_bool(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %68 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %69 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %68, i32 0, i32 10
  store i8* %67, i8** %69, align 8
  %70 = load %struct.arizona*, %struct.arizona** %4, align 8
  %71 = getelementptr inbounds %struct.arizona, %struct.arizona* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @device_property_read_bool(i32 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %74 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %75 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %74, i32 0, i32 9
  store i8* %73, i8** %75, align 8
  %76 = load %struct.arizona*, %struct.arizona** %4, align 8
  %77 = getelementptr inbounds %struct.arizona, %struct.arizona* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %80 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %79, i32 0, i32 6
  %81 = call i32 @device_property_read_u32(i32 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32* %80)
  %82 = load %struct.arizona*, %struct.arizona** %4, align 8
  %83 = getelementptr inbounds %struct.arizona, %struct.arizona* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @device_property_read_bool(i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %86 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %87 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %86, i32 0, i32 8
  store i8* %85, i8** %87, align 8
  %88 = load %struct.arizona*, %struct.arizona** %4, align 8
  %89 = getelementptr inbounds %struct.arizona, %struct.arizona* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @device_property_read_bool(i32 %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %92 = load %struct.arizona_pdata*, %struct.arizona_pdata** %5, align 8
  %93 = getelementptr inbounds %struct.arizona_pdata, %struct.arizona_pdata* %92, i32 0, i32 7
  store i8* %91, i8** %93, align 8
  %94 = load %struct.device*, %struct.device** %3, align 8
  %95 = load %struct.arizona*, %struct.arizona** %4, align 8
  %96 = call i32 @arizona_extcon_get_micd_configs(%struct.device* %94, %struct.arizona* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %27
  %100 = load %struct.arizona*, %struct.arizona** %4, align 8
  %101 = getelementptr inbounds %struct.arizona, %struct.arizona* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %27
  ret i32 0
}

declare dso_local i32 @device_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i8* @device_property_read_bool(i32, i8*) #1

declare dso_local i32 @arizona_extcon_get_micd_configs(%struct.device*, %struct.arizona*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
