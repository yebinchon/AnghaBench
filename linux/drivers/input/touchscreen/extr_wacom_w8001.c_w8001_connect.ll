; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_w8001_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_w8001_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8* }
%struct.serio_driver = type { i32 }
%struct.w8001 = type { i8*, i8*, %struct.input_dev*, %struct.input_dev*, i32, i32, i32, %struct.serio* }
%struct.input_dev = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Wacom Serial\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c" Pen\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" Finger\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @w8001_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w8001_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.w8001*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.w8001* @kzalloc(i32 56, i32 %13)
  store %struct.w8001* %14, %struct.w8001** %6, align 8
  %15 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %15, %struct.input_dev** %7, align 8
  %16 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %16, %struct.input_dev** %8, align 8
  %17 = load %struct.w8001*, %struct.w8001** %6, align 8
  %18 = icmp ne %struct.w8001* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %21 = icmp ne %struct.input_dev* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %24 = icmp ne %struct.input_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %19, %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %171

28:                                               ; preds = %22
  %29 = load %struct.serio*, %struct.serio** %4, align 8
  %30 = load %struct.w8001*, %struct.w8001** %6, align 8
  %31 = getelementptr inbounds %struct.w8001, %struct.w8001* %30, i32 0, i32 7
  store %struct.serio* %29, %struct.serio** %31, align 8
  %32 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %33 = load %struct.w8001*, %struct.w8001** %6, align 8
  %34 = getelementptr inbounds %struct.w8001, %struct.w8001* %33, i32 0, i32 2
  store %struct.input_dev* %32, %struct.input_dev** %34, align 8
  %35 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %36 = load %struct.w8001*, %struct.w8001** %6, align 8
  %37 = getelementptr inbounds %struct.w8001, %struct.w8001* %36, i32 0, i32 3
  store %struct.input_dev* %35, %struct.input_dev** %37, align 8
  %38 = load %struct.w8001*, %struct.w8001** %6, align 8
  %39 = getelementptr inbounds %struct.w8001, %struct.w8001* %38, i32 0, i32 6
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.w8001*, %struct.w8001** %6, align 8
  %42 = getelementptr inbounds %struct.w8001, %struct.w8001* %41, i32 0, i32 5
  %43 = call i32 @init_completion(i32* %42)
  %44 = load %struct.w8001*, %struct.w8001** %6, align 8
  %45 = getelementptr inbounds %struct.w8001, %struct.w8001* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.serio*, %struct.serio** %4, align 8
  %48 = getelementptr inbounds %struct.serio, %struct.serio* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @snprintf(i32 %46, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load %struct.serio*, %struct.serio** %4, align 8
  %52 = load %struct.w8001*, %struct.w8001** %6, align 8
  %53 = call i32 @serio_set_drvdata(%struct.serio* %51, %struct.w8001* %52)
  %54 = load %struct.serio*, %struct.serio** %4, align 8
  %55 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %56 = call i32 @serio_open(%struct.serio* %54, %struct.serio_driver* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %28
  br label %168

60:                                               ; preds = %28
  %61 = load %struct.w8001*, %struct.w8001** %6, align 8
  %62 = call i32 @w8001_detect(%struct.w8001* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %165

66:                                               ; preds = %60
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %68 = call i32 @strlcpy(i8* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 64)
  %69 = load %struct.w8001*, %struct.w8001** %6, align 8
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %71 = call i32 @w8001_setup_pen(%struct.w8001* %69, i8* %70, i32 64)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.w8001*, %struct.w8001** %6, align 8
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %74 = call i32 @w8001_setup_touch(%struct.w8001* %72, i8* %73, i32 64)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @ENXIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  br label %165

83:                                               ; preds = %77, %66
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %113, label %86

86:                                               ; preds = %83
  %87 = load %struct.w8001*, %struct.w8001** %6, align 8
  %88 = getelementptr inbounds %struct.w8001, %struct.w8001* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %91 = call i32 @strlcpy(i8* %89, i8* %90, i32 8)
  %92 = load %struct.w8001*, %struct.w8001** %6, align 8
  %93 = getelementptr inbounds %struct.w8001, %struct.w8001* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @strlcat(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %96 = load %struct.w8001*, %struct.w8001** %6, align 8
  %97 = getelementptr inbounds %struct.w8001, %struct.w8001* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %100 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %102 = load %struct.w8001*, %struct.w8001** %6, align 8
  %103 = load %struct.serio*, %struct.serio** %4, align 8
  %104 = call i32 @w8001_set_devdata(%struct.input_dev* %101, %struct.w8001* %102, %struct.serio* %103)
  %105 = load %struct.w8001*, %struct.w8001** %6, align 8
  %106 = getelementptr inbounds %struct.w8001, %struct.w8001* %105, i32 0, i32 2
  %107 = load %struct.input_dev*, %struct.input_dev** %106, align 8
  %108 = call i32 @input_register_device(%struct.input_dev* %107)
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %86
  br label %165

112:                                              ; preds = %86
  br label %118

113:                                              ; preds = %83
  %114 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %115 = call i32 @input_free_device(%struct.input_dev* %114)
  store %struct.input_dev* null, %struct.input_dev** %7, align 8
  %116 = load %struct.w8001*, %struct.w8001** %6, align 8
  %117 = getelementptr inbounds %struct.w8001, %struct.w8001* %116, i32 0, i32 2
  store %struct.input_dev* null, %struct.input_dev** %117, align 8
  br label %118

118:                                              ; preds = %113, %112
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %148, label %121

121:                                              ; preds = %118
  %122 = load %struct.w8001*, %struct.w8001** %6, align 8
  %123 = getelementptr inbounds %struct.w8001, %struct.w8001* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %126 = call i32 @strlcpy(i8* %124, i8* %125, i32 8)
  %127 = load %struct.w8001*, %struct.w8001** %6, align 8
  %128 = getelementptr inbounds %struct.w8001, %struct.w8001* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @strlcat(i8* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %131 = load %struct.w8001*, %struct.w8001** %6, align 8
  %132 = getelementptr inbounds %struct.w8001, %struct.w8001* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %135 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %137 = load %struct.w8001*, %struct.w8001** %6, align 8
  %138 = load %struct.serio*, %struct.serio** %4, align 8
  %139 = call i32 @w8001_set_devdata(%struct.input_dev* %136, %struct.w8001* %137, %struct.serio* %138)
  %140 = load %struct.w8001*, %struct.w8001** %6, align 8
  %141 = getelementptr inbounds %struct.w8001, %struct.w8001* %140, i32 0, i32 3
  %142 = load %struct.input_dev*, %struct.input_dev** %141, align 8
  %143 = call i32 @input_register_device(%struct.input_dev* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %121
  br label %154

147:                                              ; preds = %121
  br label %153

148:                                              ; preds = %118
  %149 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %150 = call i32 @input_free_device(%struct.input_dev* %149)
  store %struct.input_dev* null, %struct.input_dev** %8, align 8
  %151 = load %struct.w8001*, %struct.w8001** %6, align 8
  %152 = getelementptr inbounds %struct.w8001, %struct.w8001* %151, i32 0, i32 3
  store %struct.input_dev* null, %struct.input_dev** %152, align 8
  br label %153

153:                                              ; preds = %148, %147
  store i32 0, i32* %3, align 4
  br label %179

154:                                              ; preds = %146
  %155 = load %struct.w8001*, %struct.w8001** %6, align 8
  %156 = getelementptr inbounds %struct.w8001, %struct.w8001* %155, i32 0, i32 2
  %157 = load %struct.input_dev*, %struct.input_dev** %156, align 8
  %158 = icmp ne %struct.input_dev* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load %struct.w8001*, %struct.w8001** %6, align 8
  %161 = getelementptr inbounds %struct.w8001, %struct.w8001* %160, i32 0, i32 2
  %162 = load %struct.input_dev*, %struct.input_dev** %161, align 8
  %163 = call i32 @input_unregister_device(%struct.input_dev* %162)
  br label %164

164:                                              ; preds = %159, %154
  br label %165

165:                                              ; preds = %164, %111, %80, %65
  %166 = load %struct.serio*, %struct.serio** %4, align 8
  %167 = call i32 @serio_close(%struct.serio* %166)
  br label %168

168:                                              ; preds = %165, %59
  %169 = load %struct.serio*, %struct.serio** %4, align 8
  %170 = call i32 @serio_set_drvdata(%struct.serio* %169, %struct.w8001* null)
  br label %171

171:                                              ; preds = %168, %25
  %172 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %173 = call i32 @input_free_device(%struct.input_dev* %172)
  %174 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %175 = call i32 @input_free_device(%struct.input_dev* %174)
  %176 = load %struct.w8001*, %struct.w8001** %6, align 8
  %177 = call i32 @kfree(%struct.w8001* %176)
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %171, %153
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.w8001* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.w8001*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @w8001_detect(%struct.w8001*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @w8001_setup_pen(%struct.w8001*, i8*, i32) #1

declare dso_local i32 @w8001_setup_touch(%struct.w8001*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @w8001_set_devdata(%struct.input_dev*, %struct.w8001*, %struct.serio*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @kfree(%struct.w8001*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
