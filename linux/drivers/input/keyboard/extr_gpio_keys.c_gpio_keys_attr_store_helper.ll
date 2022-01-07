; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_attr_store_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_gpio_keys.c_gpio_keys_attr_store_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_keys_drvdata = type { i32, %struct.gpio_button_data*, %struct.TYPE_3__*, i32 }
%struct.gpio_button_data = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_keys_drvdata*, i8*, i32)* @gpio_keys_attr_store_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_keys_attr_store_helper(%struct.gpio_keys_drvdata* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_keys_drvdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.gpio_button_data*, align 8
  %14 = alloca %struct.gpio_button_data*, align 8
  store %struct.gpio_keys_drvdata* %0, %struct.gpio_keys_drvdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @get_n_events_by_type(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.gpio_keys_drvdata*, %struct.gpio_keys_drvdata** %5, align 8
  %18 = getelementptr inbounds %struct.gpio_keys_drvdata, %struct.gpio_keys_drvdata* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64* @get_bm_events_by_type(i32 %19, i32 %20)
  store i64* %21, i64** %9, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64* @bitmap_zalloc(i32 %22, i32 %23)
  store i64* %24, i64** %10, align 8
  %25 = load i64*, i64** %10, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %146

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = load i64*, i64** %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @bitmap_parselist(i8* %31, i64* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %142

38:                                               ; preds = %30
  %39 = load i64*, i64** %10, align 8
  %40 = load i64*, i64** %9, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @bitmap_subset(i64* %39, i64* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %142

47:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %90, %47
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.gpio_keys_drvdata*, %struct.gpio_keys_drvdata** %5, align 8
  %51 = getelementptr inbounds %struct.gpio_keys_drvdata, %struct.gpio_keys_drvdata* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %48
  %57 = load %struct.gpio_keys_drvdata*, %struct.gpio_keys_drvdata** %5, align 8
  %58 = getelementptr inbounds %struct.gpio_keys_drvdata, %struct.gpio_keys_drvdata* %57, i32 0, i32 1
  %59 = load %struct.gpio_button_data*, %struct.gpio_button_data** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %59, i64 %61
  store %struct.gpio_button_data* %62, %struct.gpio_button_data** %13, align 8
  %63 = load %struct.gpio_button_data*, %struct.gpio_button_data** %13, align 8
  %64 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %90

71:                                               ; preds = %56
  %72 = load %struct.gpio_button_data*, %struct.gpio_button_data** %13, align 8
  %73 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i64*, i64** %10, align 8
  %77 = call i64 @test_bit(i32 %75, i64* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %71
  %80 = load %struct.gpio_button_data*, %struct.gpio_button_data** %13, align 8
  %81 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %142

89:                                               ; preds = %79, %71
  br label %90

90:                                               ; preds = %89, %70
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %48

93:                                               ; preds = %48
  %94 = load %struct.gpio_keys_drvdata*, %struct.gpio_keys_drvdata** %5, align 8
  %95 = getelementptr inbounds %struct.gpio_keys_drvdata, %struct.gpio_keys_drvdata* %94, i32 0, i32 0
  %96 = call i32 @mutex_lock(i32* %95)
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %135, %93
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.gpio_keys_drvdata*, %struct.gpio_keys_drvdata** %5, align 8
  %100 = getelementptr inbounds %struct.gpio_keys_drvdata, %struct.gpio_keys_drvdata* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %98, %103
  br i1 %104, label %105, label %138

105:                                              ; preds = %97
  %106 = load %struct.gpio_keys_drvdata*, %struct.gpio_keys_drvdata** %5, align 8
  %107 = getelementptr inbounds %struct.gpio_keys_drvdata, %struct.gpio_keys_drvdata* %106, i32 0, i32 1
  %108 = load %struct.gpio_button_data*, %struct.gpio_button_data** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %108, i64 %110
  store %struct.gpio_button_data* %111, %struct.gpio_button_data** %14, align 8
  %112 = load %struct.gpio_button_data*, %struct.gpio_button_data** %14, align 8
  %113 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %105
  br label %135

120:                                              ; preds = %105
  %121 = load %struct.gpio_button_data*, %struct.gpio_button_data** %14, align 8
  %122 = getelementptr inbounds %struct.gpio_button_data, %struct.gpio_button_data* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i64*, i64** %10, align 8
  %126 = call i64 @test_bit(i32 %124, i64* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load %struct.gpio_button_data*, %struct.gpio_button_data** %14, align 8
  %130 = call i32 @gpio_keys_disable_button(%struct.gpio_button_data* %129)
  br label %134

131:                                              ; preds = %120
  %132 = load %struct.gpio_button_data*, %struct.gpio_button_data** %14, align 8
  %133 = call i32 @gpio_keys_enable_button(%struct.gpio_button_data* %132)
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %119
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %97

138:                                              ; preds = %97
  %139 = load %struct.gpio_keys_drvdata*, %struct.gpio_keys_drvdata** %5, align 8
  %140 = getelementptr inbounds %struct.gpio_keys_drvdata, %struct.gpio_keys_drvdata* %139, i32 0, i32 0
  %141 = call i32 @mutex_unlock(i32* %140)
  br label %142

142:                                              ; preds = %138, %86, %44, %37
  %143 = load i64*, i64** %10, align 8
  %144 = call i32 @bitmap_free(i64* %143)
  %145 = load i32, i32* %11, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %142, %27
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @get_n_events_by_type(i32) #1

declare dso_local i64* @get_bm_events_by_type(i32, i32) #1

declare dso_local i64* @bitmap_zalloc(i32, i32) #1

declare dso_local i32 @bitmap_parselist(i8*, i64*, i32) #1

declare dso_local i32 @bitmap_subset(i64*, i64*, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpio_keys_disable_button(%struct.gpio_button_data*) #1

declare dso_local i32 @gpio_keys_enable_button(%struct.gpio_button_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bitmap_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
