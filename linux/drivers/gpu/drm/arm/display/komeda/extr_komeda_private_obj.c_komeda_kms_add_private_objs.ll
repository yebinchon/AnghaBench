; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_private_obj.c_komeda_kms_add_private_objs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_private_obj.c_komeda_kms_add_private_objs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_kms_dev = type { i32 }
%struct.komeda_dev = type { i32, %struct.komeda_pipeline** }
%struct.komeda_pipeline = type { i32, i32, i32, i32, i64, i64, i32, i32*, i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @komeda_kms_add_private_objs(%struct.komeda_kms_dev* %0, %struct.komeda_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.komeda_kms_dev*, align 8
  %5 = alloca %struct.komeda_dev*, align 8
  %6 = alloca %struct.komeda_pipeline*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.komeda_kms_dev* %0, %struct.komeda_kms_dev** %4, align 8
  store %struct.komeda_dev* %1, %struct.komeda_dev** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %160, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %13 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %163

16:                                               ; preds = %10
  %17 = load %struct.komeda_dev*, %struct.komeda_dev** %5, align 8
  %18 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %17, i32 0, i32 1
  %19 = load %struct.komeda_pipeline**, %struct.komeda_pipeline*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.komeda_pipeline*, %struct.komeda_pipeline** %19, i64 %21
  %23 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %22, align 8
  store %struct.komeda_pipeline* %23, %struct.komeda_pipeline** %6, align 8
  %24 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %25 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %26 = call i32 @komeda_pipeline_obj_add(%struct.komeda_kms_dev* %24, %struct.komeda_pipeline* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %164

31:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %35 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %40 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %41 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %40, i32 0, i32 9
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @komeda_layer_obj_add(%struct.komeda_kms_dev* %39, i64 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %164

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %32

56:                                               ; preds = %32
  %57 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %58 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %63 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %64 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @komeda_layer_obj_add(%struct.komeda_kms_dev* %62, i64 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %164

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %56
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %94, %72
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %76 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %73
  %80 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %81 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %82 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %81, i32 0, i32 7
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @komeda_scaler_obj_add(%struct.komeda_kms_dev* %80, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %164

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %73

97:                                               ; preds = %73
  %98 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %99 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %100 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @komeda_compiz_obj_add(%struct.komeda_kms_dev* %98, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %3, align 4
  br label %164

107:                                              ; preds = %97
  %108 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %109 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %114 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %115 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @komeda_splitter_obj_add(%struct.komeda_kms_dev* %113, i64 %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %164

122:                                              ; preds = %112
  br label %123

123:                                              ; preds = %122, %107
  %124 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %125 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %123
  %129 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %130 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %131 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @komeda_merger_obj_add(%struct.komeda_kms_dev* %129, i64 %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %164

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %138, %123
  %140 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %141 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %142 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @komeda_improc_obj_add(%struct.komeda_kms_dev* %140, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %3, align 4
  br label %164

149:                                              ; preds = %139
  %150 = load %struct.komeda_kms_dev*, %struct.komeda_kms_dev** %4, align 8
  %151 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %152 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @komeda_timing_ctrlr_obj_add(%struct.komeda_kms_dev* %150, i32 %153)
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %3, align 4
  br label %164

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %10

163:                                              ; preds = %10
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %157, %147, %136, %120, %105, %91, %69, %50, %29
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @komeda_pipeline_obj_add(%struct.komeda_kms_dev*, %struct.komeda_pipeline*) #1

declare dso_local i32 @komeda_layer_obj_add(%struct.komeda_kms_dev*, i64) #1

declare dso_local i32 @komeda_scaler_obj_add(%struct.komeda_kms_dev*, i32) #1

declare dso_local i32 @komeda_compiz_obj_add(%struct.komeda_kms_dev*, i32) #1

declare dso_local i32 @komeda_splitter_obj_add(%struct.komeda_kms_dev*, i64) #1

declare dso_local i32 @komeda_merger_obj_add(%struct.komeda_kms_dev*, i64) #1

declare dso_local i32 @komeda_improc_obj_add(%struct.komeda_kms_dev*, i32) #1

declare dso_local i32 @komeda_timing_ctrlr_obj_add(%struct.komeda_kms_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
