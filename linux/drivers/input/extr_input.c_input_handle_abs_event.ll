; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_handle_abs_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_handle_abs_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_4__*, %struct.input_mt* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.input_mt = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@ABS_MT_SLOT = common dso_local global i32 0, align 4
@INPUT_IGNORE_EVENT = common dso_local global i32 0, align 4
@ABS_MT_FIRST = common dso_local global i32 0, align 4
@INPUT_PASS_TO_HANDLERS = common dso_local global i32 0, align 4
@INPUT_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32*)* @input_handle_abs_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_handle_abs_event(%struct.input_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.input_mt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 1
  %13 = load %struct.input_mt*, %struct.input_mt** %12, align 8
  store %struct.input_mt* %13, %struct.input_mt** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ABS_MT_SLOT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %3
  %18 = load %struct.input_mt*, %struct.input_mt** %8, align 8
  %19 = icmp ne %struct.input_mt* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.input_mt*, %struct.input_mt** %8, align 8
  %28 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.input_mt*, %struct.input_mt** %8, align 8
  %35 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %24, %20, %17
  %37 = load i32, i32* @INPUT_IGNORE_EVENT, align 4
  store i32 %37, i32* %4, align 4
  br label %129

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @input_is_mt_value(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32* %50, i32** %10, align 8
  br label %72

51:                                               ; preds = %38
  %52 = load %struct.input_mt*, %struct.input_mt** %8, align 8
  %53 = icmp ne %struct.input_mt* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load %struct.input_mt*, %struct.input_mt** %8, align 8
  %56 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load %struct.input_mt*, %struct.input_mt** %8, align 8
  %59 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ABS_MT_FIRST, align 4
  %67 = sub i32 %65, %66
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32* %69, i32** %10, align 8
  br label %71

70:                                               ; preds = %51
  store i32* null, i32** %10, align 8
  br label %71

71:                                               ; preds = %70, %54
  br label %72

72:                                               ; preds = %71, %43
  %73 = load i32*, i32** %10, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %101

75:                                               ; preds = %72
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @input_defuzz_abs_event(i32 %77, i32 %79, i32 %87)
  %89 = load i32*, i32** %7, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %75
  %96 = load i32, i32* @INPUT_IGNORE_EVENT, align 4
  store i32 %96, i32* %4, align 4
  br label %129

97:                                               ; preds = %75
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %10, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %72
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %101
  %105 = load %struct.input_mt*, %struct.input_mt** %8, align 8
  %106 = icmp ne %struct.input_mt* %105, null
  br i1 %106, label %107, label %127

107:                                              ; preds = %104
  %108 = load %struct.input_mt*, %struct.input_mt** %8, align 8
  %109 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %113 = load i32, i32* @ABS_MT_SLOT, align 4
  %114 = call i64 @input_abs_get_val(%struct.input_dev* %112, i32 %113)
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %127

116:                                              ; preds = %107
  %117 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %118 = load i32, i32* @ABS_MT_SLOT, align 4
  %119 = load %struct.input_mt*, %struct.input_mt** %8, align 8
  %120 = getelementptr inbounds %struct.input_mt, %struct.input_mt* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = call i32 @input_abs_set_val(%struct.input_dev* %117, i32 %118, i64 %122)
  %124 = load i32, i32* @INPUT_PASS_TO_HANDLERS, align 4
  %125 = load i32, i32* @INPUT_SLOT, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* %4, align 4
  br label %129

127:                                              ; preds = %107, %104, %101
  %128 = load i32, i32* @INPUT_PASS_TO_HANDLERS, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %116, %95, %36
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @input_is_mt_value(i32) #1

declare dso_local i32 @input_defuzz_abs_event(i32, i32, i32) #1

declare dso_local i64 @input_abs_get_val(%struct.input_dev*, i32) #1

declare dso_local i32 @input_abs_set_val(%struct.input_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
