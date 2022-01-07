; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_dt_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_cipher.c_spu_dt_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.spu_hw }
%struct.spu_hw = type { i32, i32**, i32, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.spu_type_subtype = type { i32, i32 }

@iproc_priv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"mboxes\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#mbox-cells\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to match device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MAX_SPUS = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to map registers: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Device has %d SPUs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spu_dt_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_dt_read(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.spu_hw*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.spu_type_subtype*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  store %struct.spu_hw* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iproc_priv, i32 0, i32 0), %struct.spu_hw** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %8, align 8
  %17 = load %struct.device_node*, %struct.device_node** %8, align 8
  %18 = call i32 @of_count_phandle_with_args(%struct.device_node* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.spu_hw*, %struct.spu_hw** %5, align 8
  %20 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call %struct.spu_type_subtype* @of_device_get_match_data(%struct.device* %21)
  store %struct.spu_type_subtype* %22, %struct.spu_type_subtype** %7, align 8
  %23 = load %struct.spu_type_subtype*, %struct.spu_type_subtype** %7, align 8
  %24 = icmp ne %struct.spu_type_subtype* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %106

31:                                               ; preds = %1
  %32 = load %struct.spu_type_subtype*, %struct.spu_type_subtype** %7, align 8
  %33 = getelementptr inbounds %struct.spu_type_subtype, %struct.spu_type_subtype* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.spu_hw*, %struct.spu_hw** %5, align 8
  %36 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.spu_type_subtype*, %struct.spu_type_subtype** %7, align 8
  %38 = getelementptr inbounds %struct.spu_type_subtype, %struct.spu_type_subtype* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.spu_hw*, %struct.spu_hw** %5, align 8
  %41 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %94, %31
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @MAX_SPUS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = load i32, i32* @IORESOURCE_MEM, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call %struct.resource* @platform_get_resource(%struct.platform_device* %47, i32 %48, i32 %49)
  store %struct.resource* %50, %struct.resource** %6, align 8
  %51 = icmp ne %struct.resource* %50, null
  br label %52

52:                                               ; preds = %46, %42
  %53 = phi i1 [ false, %42 ], [ %51, %46 ]
  br i1 %53, label %54, label %97

54:                                               ; preds = %52
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.resource*, %struct.resource** %6, align 8
  %57 = call i32* @devm_ioremap_resource(%struct.device* %55, %struct.resource* %56)
  %58 = load %struct.spu_hw*, %struct.spu_hw** %5, align 8
  %59 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %58, i32 0, i32 1
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  store i32* %57, i32** %63, align 8
  %64 = load %struct.spu_hw*, %struct.spu_hw** %5, align 8
  %65 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %64, i32 0, i32 1
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @IS_ERR(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %54
  %74 = load %struct.spu_hw*, %struct.spu_hw** %5, align 8
  %75 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %74, i32 0, i32 1
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @PTR_ERR(i32* %80)
  store i32 %81, i32* %9, align 4
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load %struct.spu_hw*, %struct.spu_hw** %5, align 8
  %87 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %86, i32 0, i32 1
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  store i32* null, i32** %91, align 8
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %106

93:                                               ; preds = %54
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %42

97:                                               ; preds = %52
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.spu_hw*, %struct.spu_hw** %5, align 8
  %100 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load %struct.spu_hw*, %struct.spu_hw** %5, align 8
  %103 = getelementptr inbounds %struct.spu_hw, %struct.spu_hw* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_dbg(%struct.device* %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %97, %73, %25
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i8*) #1

declare dso_local %struct.spu_type_subtype* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
