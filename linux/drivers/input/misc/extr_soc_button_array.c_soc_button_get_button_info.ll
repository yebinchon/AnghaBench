; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_soc_button_array.c_soc_button_get_button_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_soc_button_array.c_soc_button_get_button_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_button_info = type { i32 }
%struct.device = type { i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %union.acpi_object* }
%struct.TYPE_3__ = type { i32, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_DSD\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"ACPI _DSD object not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@btns_desc_uuid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"ACPI Button Descriptors not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Invalid Button Collection Descriptor\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.soc_button_info* (%struct.device*)* @soc_button_get_button_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.soc_button_info* @soc_button_get_button_info(%struct.device* %0) #0 {
  %2 = alloca %struct.soc_button_info*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.acpi_buffer, align 8
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca %struct.soc_button_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %15 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %union.acpi_object*
  store %union.acpi_object* %17, %union.acpi_object** %14, align 8
  %18 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 1
  store i32 0, i32* %18, align 8
  store %union.acpi_object* null, %union.acpi_object** %8, align 8
  store i32 -1, i32* %13, align 4
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @ACPI_HANDLE(%struct.device* %19)
  %21 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %22 = call i32 @acpi_evaluate_object_typed(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %4, i64 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.soc_button_info* @ERR_PTR(i32 %30)
  store %struct.soc_button_info* %31, %struct.soc_button_info** %2, align 8
  br label %209

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %34 = load %union.acpi_object*, %union.acpi_object** %33, align 8
  store %union.acpi_object* %34, %union.acpi_object** %5, align 8
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %94, %32
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 1
  %38 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %39 = bitcast %union.acpi_object* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %97

43:                                               ; preds = %35
  %44 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %union.acpi_object*, %union.acpi_object** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %47, i64 %49
  store %union.acpi_object* %50, %union.acpi_object** %7, align 8
  %51 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %52 = bitcast %union.acpi_object* %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %75, label %56

56:                                               ; preds = %43
  %57 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %58 = bitcast %union.acpi_object* %57 to %struct.TYPE_3__*
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 16
  br i1 %61, label %75, label %62

62:                                               ; preds = %56
  %63 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %64 = bitcast %union.acpi_object* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load %union.acpi_object*, %union.acpi_object** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %66, i64 %69
  %71 = bitcast %union.acpi_object* %70 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %62, %56, %43
  br label %97

76:                                               ; preds = %62
  %77 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %78 = bitcast %union.acpi_object* %77 to %struct.TYPE_3__*
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @btns_desc_uuid, align 4
  %82 = call i64 @memcmp(i32 %80, i32 %81, i32 16)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %86 = bitcast %union.acpi_object* %85 to %struct.TYPE_4__*
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load %union.acpi_object*, %union.acpi_object** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %88, i64 %91
  store %union.acpi_object* %92, %union.acpi_object** %8, align 8
  br label %97

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 2
  store i32 %96, i32* %11, align 4
  br label %35

97:                                               ; preds = %84, %75, %35
  %98 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %99 = icmp ne %union.acpi_object* %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load %struct.device*, %struct.device** %3, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  %105 = call %struct.soc_button_info* @ERR_PTR(i32 %104)
  store %struct.soc_button_info* %105, %struct.soc_button_info** %9, align 8
  br label %204

106:                                              ; preds = %97
  %107 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %108 = bitcast %union.acpi_object* %107 to %struct.TYPE_4__*
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load %union.acpi_object*, %union.acpi_object** %109, align 8
  %111 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %110, i64 0
  store %union.acpi_object* %111, %union.acpi_object** %6, align 8
  %112 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %113 = bitcast %union.acpi_object* %112 to i64*
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %146

117:                                              ; preds = %106
  %118 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %119 = bitcast %union.acpi_object* %118 to %struct.TYPE_4__*
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 5
  br i1 %122, label %123, label %146

123:                                              ; preds = %117
  %124 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %125 = bitcast %union.acpi_object* %124 to %struct.TYPE_4__*
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load %union.acpi_object*, %union.acpi_object** %126, align 8
  %128 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %127, i64 0
  %129 = call i32 @soc_button_get_acpi_object_int(%union.acpi_object* %128)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %123
  %132 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %133 = bitcast %union.acpi_object* %132 to %struct.TYPE_4__*
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load %union.acpi_object*, %union.acpi_object** %134, align 8
  %136 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %135, i64 2
  %137 = call i32 @soc_button_get_acpi_object_int(%union.acpi_object* %136)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %131
  %140 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %141 = bitcast %union.acpi_object* %140 to %struct.TYPE_4__*
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = load %union.acpi_object*, %union.acpi_object** %142, align 8
  %144 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %143, i64 1
  %145 = call i32 @soc_button_get_acpi_object_int(%union.acpi_object* %144)
  store i32 %145, i32* %13, align 4
  br label %146

146:                                              ; preds = %139, %131, %123, %117, %106
  %147 = load i32, i32* %13, align 4
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load %struct.device*, %struct.device** %3, align 8
  %151 = call i32 @dev_err(%struct.device* %150, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %152 = load i32, i32* @ENODEV, align 4
  %153 = sub nsw i32 0, %152
  %154 = call %struct.soc_button_info* @ERR_PTR(i32 %153)
  store %struct.soc_button_info* %154, %struct.soc_button_info** %9, align 8
  br label %204

155:                                              ; preds = %146
  %156 = load %struct.device*, %struct.device** %3, align 8
  %157 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %158 = bitcast %union.acpi_object* %157 to %struct.TYPE_4__*
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @GFP_KERNEL, align 4
  %162 = call %struct.soc_button_info* @devm_kcalloc(%struct.device* %156, i32 %160, i32 4, i32 %161)
  store %struct.soc_button_info* %162, %struct.soc_button_info** %9, align 8
  %163 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %164 = icmp ne %struct.soc_button_info* %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %155
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  %168 = call %struct.soc_button_info* @ERR_PTR(i32 %167)
  store %struct.soc_button_info* %168, %struct.soc_button_info** %9, align 8
  br label %204

169:                                              ; preds = %155
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %170

170:                                              ; preds = %198, %169
  %171 = load i32, i32* %11, align 4
  %172 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %173 = bitcast %union.acpi_object* %172 to %struct.TYPE_4__*
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %171, %175
  br i1 %176, label %177, label %203

177:                                              ; preds = %170
  %178 = load %struct.device*, %struct.device** %3, align 8
  %179 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %180 = bitcast %union.acpi_object* %179 to %struct.TYPE_4__*
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load %union.acpi_object*, %union.acpi_object** %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %182, i64 %184
  %186 = load i32, i32* %13, align 4
  %187 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.soc_button_info, %struct.soc_button_info* %187, i64 %189
  %191 = call i64 @soc_button_parse_btn_desc(%struct.device* %178, %union.acpi_object* %185, i32 %186, %struct.soc_button_info* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %177
  %194 = load i32, i32* @ENODEV, align 4
  %195 = sub nsw i32 0, %194
  %196 = call %struct.soc_button_info* @ERR_PTR(i32 %195)
  store %struct.soc_button_info* %196, %struct.soc_button_info** %9, align 8
  br label %204

197:                                              ; preds = %177
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %170

203:                                              ; preds = %170
  br label %204

204:                                              ; preds = %203, %193, %165, %149, %100
  %205 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %206 = load %union.acpi_object*, %union.acpi_object** %205, align 8
  %207 = call i32 @kfree(%union.acpi_object* %206)
  %208 = load %struct.soc_button_info*, %struct.soc_button_info** %9, align 8
  store %struct.soc_button_info* %208, %struct.soc_button_info** %2, align 8
  br label %209

209:                                              ; preds = %204, %26
  %210 = load %struct.soc_button_info*, %struct.soc_button_info** %2, align 8
  ret %struct.soc_button_info* %210
}

declare dso_local i32 @acpi_evaluate_object_typed(i32, i8*, i32*, %struct.acpi_buffer*, i64) #1

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.soc_button_info* @ERR_PTR(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @soc_button_get_acpi_object_int(%union.acpi_object*) #1

declare dso_local %struct.soc_button_info* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @soc_button_parse_btn_desc(%struct.device*, %union.acpi_object*, i32, %struct.soc_button_info*) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
