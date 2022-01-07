; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_output_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_gth.c_intel_th_output_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32 }
%struct.gth_device = type { %struct.TYPE_8__, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i8*, %struct.attribute** }
%struct.attribute = type { i8*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.output_attribute = type { i32, i32, %struct.gth_device*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.attribute, i32, i32 }

@TH_POSSIBLE_OUTPUTS = common dso_local global i32 0, align 4
@output_parms = common dso_local global %struct.TYPE_9__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%d_%s\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@output_attr_show = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@output_attr_store = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"outputs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gth_device*)* @intel_th_output_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_th_output_attributes(%struct.gth_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gth_device*, align 8
  %4 = alloca %struct.output_attribute*, align 8
  %5 = alloca %struct.attribute**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.gth_device* %0, %struct.gth_device** %3, align 8
  %13 = load i32, i32* @TH_POSSIBLE_OUTPUTS, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @output_parms, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = mul nsw i32 %16, %17
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %10, align 4
  %20 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %21 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @devm_kcalloc(%struct.TYPE_10__* %22, i32 %23, i32 8, i32 %24)
  %26 = bitcast i8* %25 to %struct.attribute**
  store %struct.attribute** %26, %struct.attribute*** %5, align 8
  %27 = load %struct.attribute**, %struct.attribute*** %5, align 8
  %28 = icmp ne %struct.attribute** %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %196

32:                                               ; preds = %1
  %33 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %34 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @devm_kcalloc(%struct.TYPE_10__* %35, i32 %36, i32 40, i32 %37)
  %39 = bitcast i8* %38 to %struct.output_attribute*
  store %struct.output_attribute* %39, %struct.output_attribute** %4, align 8
  %40 = load %struct.output_attribute*, %struct.output_attribute** %4, align 8
  %41 = icmp ne %struct.output_attribute* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %196

45:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %178, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %181

50:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %174, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %177

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %9, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %11, align 4
  %61 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %62 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @output_parms, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @devm_kasprintf(%struct.TYPE_10__* %63, i32 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %71)
  store i8* %72, i8** %12, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %55
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %196

78:                                               ; preds = %55
  %79 = load i8*, i8** %12, align 8
  %80 = load %struct.output_attribute*, %struct.output_attribute** %4, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %80, i64 %82
  %84 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.attribute, %struct.attribute* %85, i32 0, i32 0
  store i8* %79, i8** %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** @output_parms, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %78
  %95 = load i32, i32* @S_IRUGO, align 4
  %96 = load %struct.output_attribute*, %struct.output_attribute** %4, align 8
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %96, i64 %98
  %100 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.attribute, %struct.attribute* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %95
  store i32 %104, i32* %102, align 8
  %105 = load i32, i32* @output_attr_show, align 4
  %106 = load %struct.output_attribute*, %struct.output_attribute** %4, align 8
  %107 = load i32, i32* %11, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %106, i64 %108
  %110 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  store i32 %105, i32* %111, align 4
  br label %112

112:                                              ; preds = %94, %78
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** @output_parms, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %138

120:                                              ; preds = %112
  %121 = load i32, i32* @S_IWUSR, align 4
  %122 = load %struct.output_attribute*, %struct.output_attribute** %4, align 8
  %123 = load i32, i32* %11, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %122, i64 %124
  %126 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.attribute, %struct.attribute* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %121
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* @output_attr_store, align 4
  %132 = load %struct.output_attribute*, %struct.output_attribute** %4, align 8
  %133 = load i32, i32* %11, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %132, i64 %134
  %136 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  store i32 %131, i32* %137, align 8
  br label %138

138:                                              ; preds = %120, %112
  %139 = load %struct.output_attribute*, %struct.output_attribute** %4, align 8
  %140 = load i32, i32* %11, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %139, i64 %141
  %143 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = call i32 @sysfs_attr_init(%struct.attribute* %144)
  %146 = load %struct.output_attribute*, %struct.output_attribute** %4, align 8
  %147 = load i32, i32* %11, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %146, i64 %148
  %150 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load %struct.attribute**, %struct.attribute*** %5, align 8
  %153 = load i32, i32* %11, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.attribute*, %struct.attribute** %152, i64 %154
  store %struct.attribute* %151, %struct.attribute** %155, align 8
  %156 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %157 = load %struct.output_attribute*, %struct.output_attribute** %4, align 8
  %158 = load i32, i32* %11, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %157, i64 %159
  %161 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %160, i32 0, i32 2
  store %struct.gth_device* %156, %struct.gth_device** %161, align 8
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.output_attribute*, %struct.output_attribute** %4, align 8
  %164 = load i32, i32* %11, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %163, i64 %165
  %167 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %166, i32 0, i32 0
  store i32 %162, i32* %167, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.output_attribute*, %struct.output_attribute** %4, align 8
  %170 = load i32, i32* %11, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %169, i64 %171
  %173 = getelementptr inbounds %struct.output_attribute, %struct.output_attribute* %172, i32 0, i32 1
  store i32 %168, i32* %173, align 4
  br label %174

174:                                              ; preds = %138
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %51

177:                                              ; preds = %51
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  br label %46

181:                                              ; preds = %46
  %182 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %183 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %184, align 8
  %185 = load %struct.attribute**, %struct.attribute*** %5, align 8
  %186 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %187 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  store %struct.attribute** %185, %struct.attribute*** %188, align 8
  %189 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %190 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %189, i32 0, i32 1
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load %struct.gth_device*, %struct.gth_device** %3, align 8
  %194 = getelementptr inbounds %struct.gth_device, %struct.gth_device* %193, i32 0, i32 0
  %195 = call i32 @sysfs_create_group(i32* %192, %struct.TYPE_8__* %194)
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %181, %75, %42, %29
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i8* @devm_kasprintf(%struct.TYPE_10__*, i32, i8*, i32, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.attribute*) #1

declare dso_local i32 @sysfs_create_group(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
