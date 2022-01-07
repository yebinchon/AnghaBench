; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ti_am335x_tsc.c_titsc_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ti_am335x_tsc.c_titsc_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.titsc = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ti,wires\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ti,x-plate-resistance\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ti,coordinate-readouts\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"please use 'ti,coordinate-readouts' instead\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"ti,coordiante-readouts\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"invalid co-ordinate readouts, resetting it to 5\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"ti,charge-delay\00", align 1
@CHARGEDLY_OPENDLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"ti,charge-delay not specified\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"ti,wire-config\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.titsc*)* @titsc_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @titsc_parse_dt(%struct.platform_device* %0, %struct.titsc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.titsc*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.titsc* %1, %struct.titsc** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %98

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = load %struct.titsc*, %struct.titsc** %5, align 8
  %20 = getelementptr inbounds %struct.titsc, %struct.titsc* %19, i32 0, i32 0
  %21 = call i32 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %98

26:                                               ; preds = %17
  %27 = load %struct.titsc*, %struct.titsc** %5, align 8
  %28 = getelementptr inbounds %struct.titsc, %struct.titsc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %31 [
    i32 4, label %30
    i32 5, label %30
    i32 8, label %30
  ]

30:                                               ; preds = %26, %26, %26
  br label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %98

34:                                               ; preds = %30
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = load %struct.titsc*, %struct.titsc** %5, align 8
  %37 = getelementptr inbounds %struct.titsc, %struct.titsc* %36, i32 0, i32 1
  %38 = call i32 @of_property_read_u32(%struct.device_node* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %98

43:                                               ; preds = %34
  %44 = load %struct.device_node*, %struct.device_node** %6, align 8
  %45 = load %struct.titsc*, %struct.titsc** %5, align 8
  %46 = getelementptr inbounds %struct.titsc, %struct.titsc* %45, i32 0, i32 2
  %47 = call i32 @of_property_read_u32(%struct.device_node* %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @dev_warn(%struct.TYPE_2__* %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %54 = load %struct.device_node*, %struct.device_node** %6, align 8
  %55 = load %struct.titsc*, %struct.titsc** %5, align 8
  %56 = getelementptr inbounds %struct.titsc, %struct.titsc* %55, i32 0, i32 2
  %57 = call i32 @of_property_read_u32(%struct.device_node* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %50, %43
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %98

63:                                               ; preds = %58
  %64 = load %struct.titsc*, %struct.titsc** %5, align 8
  %65 = getelementptr inbounds %struct.titsc, %struct.titsc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_warn(%struct.TYPE_2__* %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %72 = load %struct.titsc*, %struct.titsc** %5, align 8
  %73 = getelementptr inbounds %struct.titsc, %struct.titsc* %72, i32 0, i32 2
  store i32 5, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %63
  %75 = load %struct.device_node*, %struct.device_node** %6, align 8
  %76 = load %struct.titsc*, %struct.titsc** %5, align 8
  %77 = getelementptr inbounds %struct.titsc, %struct.titsc* %76, i32 0, i32 3
  %78 = call i32 @of_property_read_u32(%struct.device_node* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i32, i32* @CHARGEDLY_OPENDLY, align 4
  %83 = load %struct.titsc*, %struct.titsc** %5, align 8
  %84 = getelementptr inbounds %struct.titsc, %struct.titsc* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @dev_warn(%struct.TYPE_2__* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %88

88:                                               ; preds = %81, %74
  %89 = load %struct.device_node*, %struct.device_node** %6, align 8
  %90 = load %struct.titsc*, %struct.titsc** %5, align 8
  %91 = getelementptr inbounds %struct.titsc, %struct.titsc* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.titsc*, %struct.titsc** %5, align 8
  %94 = getelementptr inbounds %struct.titsc, %struct.titsc* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ARRAY_SIZE(i32 %95)
  %97 = call i32 @of_property_read_u32_array(%struct.device_node* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %92, i32 %96)
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %88, %61, %41, %31, %24, %14
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
