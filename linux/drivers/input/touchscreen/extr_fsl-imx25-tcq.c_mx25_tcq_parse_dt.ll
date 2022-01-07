; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_fsl-imx25-tcq.c_mx25_tcq_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_fsl-imx25-tcq.c_mx25_tcq_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mx25_tcq_priv = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"fsl,wires\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to find fsl,wires properties\0A\00", align 1
@MX25_TS_4WIRE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%u-wire mode not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"fsl,pen-threshold\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"fsl,settling-time-ns\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"fsl,pen-debounce-ns\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.mx25_tcq_priv*)* @mx25_tcq_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx25_tcq_parse_dt(%struct.platform_device* %0, %struct.mx25_tcq_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mx25_tcq_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.mx25_tcq_priv* %1, %struct.mx25_tcq_priv** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %14 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %13, i32 0, i32 0
  store i32 500, i32* %14, align 4
  %15 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %16 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %15, i32 0, i32 1
  store i32 3, i32* %16, align 4
  %17 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %17, i32 0, i32 2
  store i32 1000000, i32* %18, align 4
  %19 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %19, i32 0, i32 3
  store i32 250000, i32* %20, align 4
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = call i32 @of_property_read_u32(%struct.device_node* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %57

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @MX25_TS_4WIRE, align 4
  %35 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %36 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  br label %44

37:                                               ; preds = %30
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (%struct.TYPE_2__*, i8*, ...) @dev_err(%struct.TYPE_2__* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %33
  %45 = load %struct.device_node*, %struct.device_node** %6, align 8
  %46 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %47 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %46, i32 0, i32 0
  %48 = call i32 @of_property_read_u32(%struct.device_node* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %47)
  %49 = load %struct.device_node*, %struct.device_node** %6, align 8
  %50 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %51 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %50, i32 0, i32 3
  %52 = call i32 @of_property_read_u32(%struct.device_node* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32* %51)
  %53 = load %struct.device_node*, %struct.device_node** %6, align 8
  %54 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %55 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %54, i32 0, i32 2
  %56 = call i32 @of_property_read_u32(%struct.device_node* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %44, %37, %25
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
