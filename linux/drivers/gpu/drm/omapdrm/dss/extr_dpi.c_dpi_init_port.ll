; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dpi.c_dpi_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { i32 }
%struct.platform_device = type { i32 }
%struct.device_node = type { %struct.dpi_data* }
%struct.dpi_data = type { i32, i32, %struct.dss_device*, %struct.platform_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"data-lines\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to parse datalines\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpi_init_port(%struct.dss_device* %0, %struct.platform_device* %1, %struct.device_node* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dss_device*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpi_data*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %6, align 8
  store %struct.platform_device* %1, %struct.platform_device** %7, align 8
  store %struct.device_node* %2, %struct.device_node** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.dpi_data* @devm_kzalloc(i32* %15, i32 32, i32 %16)
  store %struct.dpi_data* %17, %struct.dpi_data** %10, align 8
  %18 = load %struct.dpi_data*, %struct.dpi_data** %10, align 8
  %19 = icmp ne %struct.dpi_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %68

23:                                               ; preds = %4
  %24 = load %struct.device_node*, %struct.device_node** %8, align 8
  %25 = call %struct.device_node* @of_get_next_child(%struct.device_node* %24, i32* null)
  store %struct.device_node* %25, %struct.device_node** %11, align 8
  %26 = load %struct.device_node*, %struct.device_node** %11, align 8
  %27 = icmp ne %struct.device_node* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %68

29:                                               ; preds = %23
  %30 = load %struct.device_node*, %struct.device_node** %11, align 8
  %31 = call i32 @of_property_read_u32(%struct.device_node* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %12)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.device_node*, %struct.device_node** %11, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = call i32 @DSSERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %5, align 4
  br label %68

39:                                               ; preds = %29
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.dpi_data*, %struct.dpi_data** %10, align 8
  %42 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %44 = load %struct.dpi_data*, %struct.dpi_data** %10, align 8
  %45 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %44, i32 0, i32 3
  store %struct.platform_device* %43, %struct.platform_device** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.dpi_data*, %struct.dpi_data** %10, align 8
  %48 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.dss_device*, %struct.dss_device** %6, align 8
  %50 = load %struct.dpi_data*, %struct.dpi_data** %10, align 8
  %51 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %50, i32 0, i32 2
  store %struct.dss_device* %49, %struct.dss_device** %51, align 8
  %52 = load %struct.dpi_data*, %struct.dpi_data** %10, align 8
  %53 = load %struct.device_node*, %struct.device_node** %8, align 8
  %54 = getelementptr inbounds %struct.device_node, %struct.device_node* %53, i32 0, i32 0
  store %struct.dpi_data* %52, %struct.dpi_data** %54, align 8
  %55 = load %struct.dpi_data*, %struct.dpi_data** %10, align 8
  %56 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %55, i32 0, i32 1
  %57 = call i32 @mutex_init(i32* %56)
  %58 = load %struct.dpi_data*, %struct.dpi_data** %10, align 8
  %59 = call i32 @dpi_init_regulator(%struct.dpi_data* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %39
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %5, align 4
  br label %68

64:                                               ; preds = %39
  %65 = load %struct.dpi_data*, %struct.dpi_data** %10, align 8
  %66 = load %struct.device_node*, %struct.device_node** %8, align 8
  %67 = call i32 @dpi_init_output_port(%struct.dpi_data* %65, %struct.device_node* %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %64, %62, %36, %28, %20
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.dpi_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dpi_init_regulator(%struct.dpi_data*) #1

declare dso_local i32 @dpi_init_output_port(%struct.dpi_data*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
