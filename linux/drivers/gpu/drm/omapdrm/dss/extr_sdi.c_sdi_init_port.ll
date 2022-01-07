; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_sdi.c_sdi_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_sdi.c_sdi_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { i32 }
%struct.platform_device = type { i32 }
%struct.device_node = type { %struct.sdi_device* }
%struct.sdi_device = type { i32, %struct.platform_device*, %struct.dss_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"datapairs\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to parse datapairs\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"vdds_sdi\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"can't get VDDS_SDI regulator\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdi_init_port(%struct.dss_device* %0, %struct.platform_device* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dss_device*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.sdi_device*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %5, align 8
  store %struct.platform_device* %1, %struct.platform_device** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sdi_device* @kzalloc(i32 32, i32 %12)
  store %struct.sdi_device* %13, %struct.sdi_device** %8, align 8
  %14 = load %struct.sdi_device*, %struct.sdi_device** %8, align 8
  %15 = icmp ne %struct.sdi_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %80

19:                                               ; preds = %3
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = call %struct.device_node* @of_get_next_child(%struct.device_node* %20, i32* null)
  store %struct.device_node* %21, %struct.device_node** %9, align 8
  %22 = load %struct.device_node*, %struct.device_node** %9, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  br label %76

25:                                               ; preds = %19
  %26 = load %struct.device_node*, %struct.device_node** %9, align 8
  %27 = call i32 @of_property_read_u32(%struct.device_node* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.device_node*, %struct.device_node** %9, align 8
  %29 = call i32 @of_node_put(%struct.device_node* %28)
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 @DSSERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %76

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.sdi_device*, %struct.sdi_device** %8, align 8
  %37 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dss_device*, %struct.dss_device** %5, align 8
  %39 = load %struct.sdi_device*, %struct.sdi_device** %8, align 8
  %40 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %39, i32 0, i32 2
  store %struct.dss_device* %38, %struct.dss_device** %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %42 = load %struct.sdi_device*, %struct.sdi_device** %8, align 8
  %43 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %42, i32 0, i32 1
  store %struct.platform_device* %41, %struct.platform_device** %43, align 8
  %44 = load %struct.sdi_device*, %struct.sdi_device** %8, align 8
  %45 = load %struct.device_node*, %struct.device_node** %7, align 8
  %46 = getelementptr inbounds %struct.device_node, %struct.device_node* %45, i32 0, i32 0
  store %struct.sdi_device* %44, %struct.sdi_device** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 @devm_regulator_get(i32* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.sdi_device*, %struct.sdi_device** %8, align 8
  %51 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.sdi_device*, %struct.sdi_device** %8, align 8
  %53 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %34
  %58 = load %struct.sdi_device*, %struct.sdi_device** %8, align 8
  %59 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @EPROBE_DEFER, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = call i32 @DSSERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %57
  br label %76

69:                                               ; preds = %34
  %70 = load %struct.sdi_device*, %struct.sdi_device** %8, align 8
  %71 = call i32 @sdi_init_output(%struct.sdi_device* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %76

75:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %80

76:                                               ; preds = %74, %68, %32, %24
  %77 = load %struct.sdi_device*, %struct.sdi_device** %8, align 8
  %78 = call i32 @kfree(%struct.sdi_device* %77)
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %75, %16
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.sdi_device* @kzalloc(i32, i32) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sdi_init_output(%struct.sdi_device*) #1

declare dso_local i32 @kfree(%struct.sdi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
