; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_matrix-keymap.c_matrix_keypad_build_keymap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_matrix-keymap.c_matrix_keypad_build_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix_keymap_data = type { i32, i32* }
%struct.input_dev = type { i16*, i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to allocate memory for keymap\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_keypad_build_keymap(%struct.matrix_keymap_data* %0, i8* %1, i32 %2, i32 %3, i16* %4, %struct.input_dev* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.matrix_keymap_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca %struct.input_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.matrix_keymap_data* %0, %struct.matrix_keymap_data** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i16* %4, i16** %12, align 8
  store %struct.input_dev* %5, %struct.input_dev** %13, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @get_count_order(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %14, align 4
  %23 = shl i32 %21, %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %15, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %122

37:                                               ; preds = %6
  %38 = load i16*, i16** %12, align 8
  %39 = icmp ne i16* %38, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %37
  %41 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i16* @devm_kcalloc(i32 %44, i64 %45, i32 2, i32 %46)
  store i16* %47, i16** %12, align 8
  %48 = load i16*, i16** %12, align 8
  %49 = icmp ne i16* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %40
  %51 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %122

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i16*, i16** %12, align 8
  %61 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 0
  store i16* %60, i16** %62, align 8
  %63 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 1
  store i32 2, i32* %64, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* @EV_KEY, align 4
  %69 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @__set_bit(i32 %68, i32 %71)
  %73 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %8, align 8
  %74 = icmp ne %struct.matrix_keymap_data* %73, null
  br i1 %74, label %75, label %105

75:                                               ; preds = %59
  store i32 0, i32* %16, align 4
  br label %76

76:                                               ; preds = %101, %75
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %8, align 8
  %79 = getelementptr inbounds %struct.matrix_keymap_data, %struct.matrix_keymap_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %76
  %83 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %8, align 8
  %84 = getelementptr inbounds %struct.matrix_keymap_data, %struct.matrix_keymap_data* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %18, align 4
  %90 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @matrix_keypad_map_key(%struct.input_dev* %90, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %82
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %122

100:                                              ; preds = %82
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %16, align 4
  br label %76

104:                                              ; preds = %76
  br label %116

105:                                              ; preds = %59
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %110 = call i32 @matrix_keypad_parse_keymap(i8* %106, i32 %107, i32 %108, %struct.input_dev* %109)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* %17, align 4
  store i32 %114, i32* %7, align 4
  br label %122

115:                                              ; preds = %105
  br label %116

116:                                              ; preds = %115, %104
  %117 = load i32, i32* @KEY_RESERVED, align 4
  %118 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  %119 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @__clear_bit(i32 %117, i32 %120)
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %116, %113, %97, %50, %34
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i16* @devm_kcalloc(i32, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @matrix_keypad_map_key(%struct.input_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @matrix_keypad_parse_keymap(i8*, i32, i32, %struct.input_dev*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
