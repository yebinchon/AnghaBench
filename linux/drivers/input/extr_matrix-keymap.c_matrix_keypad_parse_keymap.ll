; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_matrix-keymap.c_matrix_keypad_parse_keymap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_matrix-keymap.c_matrix_keypad_parse_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"linux,keymap\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"missing or malformed property %s: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%s size overflow (%d vs max %u)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to read %s property: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.input_dev*)* @matrix_keypad_parse_keymap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matrix_keypad_parse_keymap(i8* %0, i32 %1, i32 %2, %struct.input_dev* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.input_dev* %3, %struct.input_dev** %9, align 8
  %17 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @get_count_order(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %11, align 4
  %25 = shl i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %29

29:                                               ; preds = %28, %4
  %30 = load %struct.device*, %struct.device** %10, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @device_property_count_u32(%struct.device* %30, i8* %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.device*, %struct.device** %10, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i32 (%struct.device*, i8*, i8*, i32, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %38)
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %15, align 4
  br label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  br label %47

47:                                               ; preds = %44, %42
  %48 = phi i32 [ %43, %42 ], [ %46, %44 ]
  store i32 %48, i32* %5, align 4
  br label %112

49:                                               ; preds = %29
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load %struct.device*, %struct.device** %10, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 (%struct.device*, i8*, i8*, i32, ...) @dev_err(%struct.device* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %56, i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %112

61:                                               ; preds = %49
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32* @kmalloc_array(i32 %62, i32 4, i32 %63)
  store i32* %64, i32** %13, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %112

70:                                               ; preds = %61
  %71 = load %struct.device*, %struct.device** %10, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @device_property_read_u32_array(%struct.device* %71, i8* %72, i32* %73, i32 %74)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load %struct.device*, %struct.device** %10, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %16, align 4
  %82 = call i32 (%struct.device*, i8*, i8*, i32, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %80, i32 %81)
  br label %108

83:                                               ; preds = %70
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %104, %83
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %84
  %89 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @matrix_keypad_map_key(%struct.input_dev* %89, i32 %90, i32 %91, i32 %92, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %88
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %16, align 4
  br label %108

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %84

107:                                              ; preds = %84
  store i32 0, i32* %16, align 4
  br label %108

108:                                              ; preds = %107, %100, %78
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @kfree(i32* %109)
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %108, %67, %53, %47
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @device_property_count_u32(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32, ...) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @device_property_read_u32_array(%struct.device*, i8*, i32*, i32) #1

declare dso_local i32 @matrix_keypad_map_key(%struct.input_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
