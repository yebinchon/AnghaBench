; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, %struct.fsp_data*, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.fsp_data = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@FSP_VER_STL3888_C0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Finger Sensing Pad, hw: %d.%d.%d, sn: %x, sw: %s\0A\00", align 1
@fsp_drv_ver = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fsp_process_byte = common dso_local global i32 0, align 4
@fsp_disconnect = common dso_local global i32 0, align 4
@fsp_reconnect = common dso_local global i32 0, align 4
@fsp_reset = common dso_local global i32 0, align 4
@fsp_attribute_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to create sysfs attributes (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsp_init(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.fsp_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %10 = call i64 @fsp_get_version(%struct.psmouse* %9, i32* %5)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %14 = call i64 @fsp_get_revision(%struct.psmouse* %13, i32* %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %100

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @FSP_VER_STL3888_C0, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %25 = call i32 @fsp_get_sn(%struct.psmouse* %24, i32* %7)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 15
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @fsp_drv_ver, align 4
  %35 = call i32 @psmouse_info(%struct.psmouse* %27, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.fsp_data* @kzalloc(i32 8, i32 %36)
  store %struct.fsp_data* %37, %struct.fsp_data** %4, align 8
  %38 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %39 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %38, i32 0, i32 1
  store %struct.fsp_data* %37, %struct.fsp_data** %39, align 8
  %40 = load %struct.fsp_data*, %struct.fsp_data** %4, align 8
  %41 = icmp ne %struct.fsp_data* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %26
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %100

45:                                               ; preds = %26
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.fsp_data*, %struct.fsp_data** %4, align 8
  %48 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.fsp_data*, %struct.fsp_data** %4, align 8
  %51 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @fsp_process_byte, align 4
  %53 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %54 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @fsp_disconnect, align 4
  %56 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %57 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @fsp_reconnect, align 4
  %59 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %60 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @fsp_reset, align 4
  %62 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %63 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %65 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %64, i32 0, i32 0
  store i32 4, i32* %65, align 8
  %66 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %67 = call i32 @fsp_activate_protocol(%struct.psmouse* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %45
  br label %92

71:                                               ; preds = %45
  %72 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %73 = call i32 @fsp_set_input_params(%struct.psmouse* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %92

77:                                               ; preds = %71
  %78 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %79 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @sysfs_create_group(i32* %83, i32* @fsp_attribute_group)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %77
  %88 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @psmouse_err(%struct.psmouse* %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %92

91:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %100

92:                                               ; preds = %87, %76, %70
  %93 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %94 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %93, i32 0, i32 1
  %95 = load %struct.fsp_data*, %struct.fsp_data** %94, align 8
  %96 = call i32 @kfree(%struct.fsp_data* %95)
  %97 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %98 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %97, i32 0, i32 1
  store %struct.fsp_data* null, %struct.fsp_data** %98, align 8
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %92, %91, %42, %16
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i64 @fsp_get_version(%struct.psmouse*, i32*) #1

declare dso_local i64 @fsp_get_revision(%struct.psmouse*, i32*) #1

declare dso_local i32 @fsp_get_sn(%struct.psmouse*, i32*) #1

declare dso_local i32 @psmouse_info(%struct.psmouse*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.fsp_data* @kzalloc(i32, i32) #1

declare dso_local i32 @fsp_activate_protocol(%struct.psmouse*) #1

declare dso_local i32 @fsp_set_input_params(%struct.psmouse*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.fsp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
