; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_atlas_btns.c_atlas_acpi_button_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_atlas_btns.c_atlas_acpi_button_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i32, i32, i32, i32, i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.acpi_device = type { i32 }

@input_dev = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"unable to allocate input device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Atlas ACPI button driver\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ASIM0000/atlas/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@atlas_keymap = common dso_local global i64* null, align 8
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i64 0, align 8
@KEY_F1 = common dso_local global i64 0, align 8
@KEY_RESERVED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"couldn't register input device\0A\00", align 1
@acpi_atlas_button_handler = common dso_local global i32 0, align 4
@acpi_atlas_button_setup = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"error installing addr spc handler\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @atlas_acpi_button_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas_acpi_button_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = call %struct.TYPE_9__* (...) @input_allocate_device()
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** @input_dev, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** @input_dev, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %103

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @input_dev, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** @input_dev, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %18, align 8
  %19 = load i32, i32* @BUS_HOST, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @input_dev, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i64*, i64** @atlas_keymap, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @input_dev, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 6
  store i64* %23, i64** %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @input_dev, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  store i32 2, i32* %27, align 8
  %28 = load i64*, i64** @atlas_keymap, align 8
  %29 = call i32 @ARRAY_SIZE(i64* %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @input_dev, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @input_dev, align 8
  %33 = load i32, i32* @EV_MSC, align 4
  %34 = load i32, i32* @MSC_SCAN, align 4
  %35 = call i32 @input_set_capability(%struct.TYPE_9__* %32, i32 %33, i32 %34)
  %36 = load i64, i64* @EV_KEY, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** @input_dev, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__set_bit(i64 %36, i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %73, %14
  %42 = load i32, i32* %5, align 4
  %43 = load i64*, i64** @atlas_keymap, align 8
  %44 = call i32 @ARRAY_SIZE(i64* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 9
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load i64, i64* @KEY_F1, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = load i64*, i64** @atlas_keymap, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 %53, i64* %57, align 8
  %58 = load i64, i64* @KEY_F1, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @input_dev, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @__set_bit(i64 %61, i32 %64)
  br label %72

66:                                               ; preds = %46
  %67 = load i64, i64* @KEY_RESERVED, align 8
  %68 = load i64*, i64** @atlas_keymap, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 %67, i64* %71, align 8
  br label %72

72:                                               ; preds = %66, %49
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %41

76:                                               ; preds = %41
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** @input_dev, align 8
  %78 = call i32 @input_register_device(%struct.TYPE_9__* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** @input_dev, align 8
  %84 = call i32 @input_free_device(%struct.TYPE_9__* %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %103

86:                                               ; preds = %76
  %87 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %88 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %91 = call i32 @acpi_install_address_space_handler(i32 %89, i32 129, i32* @acpi_atlas_button_handler, i32* @acpi_atlas_button_setup, %struct.acpi_device* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @ACPI_FAILURE(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %86
  %96 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** @input_dev, align 8
  %98 = call i32 @input_unregister_device(%struct.TYPE_9__* %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %95, %86
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %101, %81, %10
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_9__* @input_allocate_device(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_9__*) #1

declare dso_local i32 @input_free_device(%struct.TYPE_9__*) #1

declare dso_local i32 @acpi_install_address_space_handler(i32, i32, i32*, i32*, %struct.acpi_device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @input_unregister_device(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
