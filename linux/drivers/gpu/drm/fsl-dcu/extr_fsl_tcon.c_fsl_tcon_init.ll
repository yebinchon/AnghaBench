; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_tcon.c_fsl_tcon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_tcon.c_fsl_tcon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_tcon = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"fsl,tcon\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Couldn't create the TCON regmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Couldn't get the TCON bus clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Couldn't enable the TCON clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Using TCON in bypass mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fsl_tcon* @fsl_tcon_init(%struct.device* %0) #0 {
  %2 = alloca %struct.fsl_tcon*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.fsl_tcon*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device_node* @of_parse_phandle(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.fsl_tcon* null, %struct.fsl_tcon** %2, align 8
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.fsl_tcon* @devm_kzalloc(%struct.device* %15, i32 4, i32 %16)
  store %struct.fsl_tcon* %17, %struct.fsl_tcon** %4, align 8
  %18 = load %struct.fsl_tcon*, %struct.fsl_tcon** %4, align 8
  %19 = icmp ne %struct.fsl_tcon* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %60

21:                                               ; preds = %14
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load %struct.fsl_tcon*, %struct.fsl_tcon** %4, align 8
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i32 @fsl_tcon_init_regmap(%struct.device* %22, %struct.fsl_tcon* %23, %struct.device_node* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %60

31:                                               ; preds = %21
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call i32 @of_clk_get_by_name(%struct.device_node* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.fsl_tcon*, %struct.fsl_tcon** %4, align 8
  %35 = getelementptr inbounds %struct.fsl_tcon, %struct.fsl_tcon* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.fsl_tcon*, %struct.fsl_tcon** %4, align 8
  %37 = getelementptr inbounds %struct.fsl_tcon, %struct.fsl_tcon* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IS_ERR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %60

44:                                               ; preds = %31
  %45 = load %struct.fsl_tcon*, %struct.fsl_tcon** %4, align 8
  %46 = getelementptr inbounds %struct.fsl_tcon, %struct.fsl_tcon* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clk_prepare_enable(i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %60

54:                                               ; preds = %44
  %55 = load %struct.device_node*, %struct.device_node** %5, align 8
  %56 = call i32 @of_node_put(%struct.device_node* %55)
  %57 = load %struct.device*, %struct.device** %3, align 8
  %58 = call i32 @dev_info(%struct.device* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %59 = load %struct.fsl_tcon*, %struct.fsl_tcon** %4, align 8
  store %struct.fsl_tcon* %59, %struct.fsl_tcon** %2, align 8
  br label %63

60:                                               ; preds = %51, %41, %28, %20
  %61 = load %struct.device_node*, %struct.device_node** %5, align 8
  %62 = call i32 @of_node_put(%struct.device_node* %61)
  store %struct.fsl_tcon* null, %struct.fsl_tcon** %2, align 8
  br label %63

63:                                               ; preds = %60, %54, %13
  %64 = load %struct.fsl_tcon*, %struct.fsl_tcon** %2, align 8
  ret %struct.fsl_tcon* %64
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.fsl_tcon* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @fsl_tcon_init_regmap(%struct.device*, %struct.fsl_tcon*, %struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_clk_get_by_name(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
