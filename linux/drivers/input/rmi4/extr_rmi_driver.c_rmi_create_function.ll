; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_create_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_create_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_device = type { %struct.device }
%struct.device = type { i32 }
%struct.pdt_entry = type { i32, i32 }
%struct.rmi_driver_data = type { i32, %struct.rmi_function*, %struct.rmi_function*, i32 }
%struct.rmi_function = type { i32, i32, i32, i32, %struct.rmi_device*, i32 }

@RMI_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Initializing F%02X.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to allocate memory for F%02X\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RMI_SCAN_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_device*, i8*, %struct.pdt_entry*)* @rmi_create_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_create_function(%struct.rmi_device* %0, i8* %1, %struct.pdt_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rmi_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pdt_entry*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.rmi_driver_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rmi_function*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rmi_device* %0, %struct.rmi_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.pdt_entry* %2, %struct.pdt_entry** %7, align 8
  %14 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %15 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.device*, %struct.device** %8, align 8
  %17 = call %struct.rmi_driver_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.rmi_driver_data* %17, %struct.rmi_driver_data** %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %10, align 8
  %20 = load i32, i32* @RMI_DEBUG_CORE, align 4
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = load %struct.pdt_entry*, %struct.pdt_entry** %7, align 8
  %23 = getelementptr inbounds %struct.pdt_entry, %struct.pdt_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rmi_dbg(i32 %20, %struct.device* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %9, align 8
  %27 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @BITS_TO_LONGS(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = add i64 32, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.rmi_function* @kzalloc(i32 %33, i32 %34)
  store %struct.rmi_function* %35, %struct.rmi_function** %11, align 8
  %36 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  %37 = icmp ne %struct.rmi_function* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %3
  %39 = load %struct.device*, %struct.device** %8, align 8
  %40 = load %struct.pdt_entry*, %struct.pdt_entry** %7, align 8
  %41 = getelementptr inbounds %struct.pdt_entry, %struct.pdt_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %124

46:                                               ; preds = %3
  %47 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  %48 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %47, i32 0, i32 2
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.pdt_entry*, %struct.pdt_entry** %7, align 8
  %51 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  %52 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %51, i32 0, i32 5
  %53 = call i32 @rmi_driver_copy_pdt_to_fd(%struct.pdt_entry* %50, i32* %52)
  %54 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %55 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  %56 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %55, i32 0, i32 4
  store %struct.rmi_device* %54, %struct.rmi_device** %56, align 8
  %57 = load %struct.pdt_entry*, %struct.pdt_entry** %7, align 8
  %58 = getelementptr inbounds %struct.pdt_entry, %struct.pdt_entry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  %61 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  %65 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  %67 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %68
  store i32 %71, i32* %69, align 4
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %88, %46
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  %75 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  %80 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %81, %82
  %84 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  %85 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @set_bit(i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %72

91:                                               ; preds = %72
  %92 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  %93 = call i32 @rmi_register_function(%struct.rmi_function* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %4, align 4
  br label %124

98:                                               ; preds = %91
  %99 = load %struct.pdt_entry*, %struct.pdt_entry** %7, align 8
  %100 = getelementptr inbounds %struct.pdt_entry, %struct.pdt_entry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  %105 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %9, align 8
  %106 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %105, i32 0, i32 2
  store %struct.rmi_function* %104, %struct.rmi_function** %106, align 8
  br label %117

107:                                              ; preds = %98
  %108 = load %struct.pdt_entry*, %struct.pdt_entry** %7, align 8
  %109 = getelementptr inbounds %struct.pdt_entry, %struct.pdt_entry* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 52
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  %114 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %9, align 8
  %115 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %114, i32 0, i32 1
  store %struct.rmi_function* %113, %struct.rmi_function** %115, align 8
  br label %116

116:                                              ; preds = %112, %107
  br label %117

117:                                              ; preds = %116, %103
  %118 = load %struct.rmi_function*, %struct.rmi_function** %11, align 8
  %119 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %118, i32 0, i32 2
  %120 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %9, align 8
  %121 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %120, i32 0, i32 0
  %122 = call i32 @list_add_tail(i32* %119, i32* %121)
  %123 = load i32, i32* @RMI_SCAN_CONTINUE, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %117, %96, %38
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.rmi_driver_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @rmi_dbg(i32, %struct.device*, i8*, i32) #1

declare dso_local %struct.rmi_function* @kzalloc(i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rmi_driver_copy_pdt_to_fd(%struct.pdt_entry*, i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @rmi_register_function(%struct.rmi_function*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
