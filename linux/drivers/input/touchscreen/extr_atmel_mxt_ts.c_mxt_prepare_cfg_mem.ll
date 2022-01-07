; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_prepare_cfg_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_prepare_cfg_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.mxt_cfg = type { i64, i64, i64, i32, i32, i32* }
%struct.mxt_object = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%x %x %x%n\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Bad format: failed to parse object\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%hhx%n\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Bad format in T%d at %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Discarding %zu byte(s) in T%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Zeroing %zu byte(s) in T%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Object instances exceeded!\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Bad object: reg:%d, T%d, ofs=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*, %struct.mxt_cfg*)* @mxt_prepare_cfg_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_prepare_cfg_mem(%struct.mxt_data* %0, %struct.mxt_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxt_data*, align 8
  %5 = alloca %struct.mxt_cfg*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.mxt_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %4, align 8
  store %struct.mxt_cfg* %1, %struct.mxt_cfg** %5, align 8
  %17 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %18 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %6, align 8
  br label %21

21:                                               ; preds = %214, %95, %2
  %22 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %26 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %215

29:                                               ; preds = %21
  %30 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %31 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %34 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = call i32 (i64, i8*, i32*, ...) @sscanf(i64 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %12)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %215

41:                                               ; preds = %29
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 3
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %216

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %54 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call %struct.mxt_object* @mxt_get_object(%struct.mxt_data* %57, i32 %58)
  store %struct.mxt_object* %59, %struct.mxt_object** %7, align 8
  %60 = load %struct.mxt_object*, %struct.mxt_object** %7, align 8
  %61 = icmp ne %struct.mxt_object* %60, null
  br i1 %61, label %96, label %62

62:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %92, %62
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %95

67:                                               ; preds = %63
  %68 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %69 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %72 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = call i32 (i64, i8*, i32*, ...) @sscanf(i64 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %16, i32* %12)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 1
  br i1 %77, label %78, label %85

78:                                               ; preds = %67
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %216

85:                                               ; preds = %67
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %89 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  br label %63

95:                                               ; preds = %63
  br label %21

96:                                               ; preds = %50
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.mxt_object*, %struct.mxt_object** %7, align 8
  %99 = call i32 @mxt_obj_size(%struct.mxt_object* %98)
  %100 = icmp ugt i32 %97, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.mxt_object*, %struct.mxt_object** %7, align 8
  %105 = call i32 @mxt_obj_size(%struct.mxt_object* %104)
  %106 = sub i32 %103, %105
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @dev_warn(%struct.device* %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 %107)
  br label %123

109:                                              ; preds = %96
  %110 = load %struct.mxt_object*, %struct.mxt_object** %7, align 8
  %111 = call i32 @mxt_obj_size(%struct.mxt_object* %110)
  %112 = load i32, i32* %10, align 4
  %113 = icmp ugt i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load %struct.device*, %struct.device** %6, align 8
  %116 = load %struct.mxt_object*, %struct.mxt_object** %7, align 8
  %117 = call i32 @mxt_obj_size(%struct.mxt_object* %116)
  %118 = load i32, i32* %10, align 4
  %119 = sub i32 %117, %118
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @dev_warn(%struct.device* %115, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %114, %109
  br label %123

123:                                              ; preds = %122, %101
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.mxt_object*, %struct.mxt_object** %7, align 8
  %126 = call i32 @mxt_obj_instances(%struct.mxt_object* %125)
  %127 = icmp uge i32 %124, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.device*, %struct.device** %6, align 8
  %130 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %216

133:                                              ; preds = %123
  %134 = load %struct.mxt_object*, %struct.mxt_object** %7, align 8
  %135 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mxt_object*, %struct.mxt_object** %7, align 8
  %138 = call i32 @mxt_obj_size(%struct.mxt_object* %137)
  %139 = load i32, i32* %9, align 4
  %140 = mul i32 %138, %139
  %141 = add i32 %136, %140
  store i32 %141, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %142

142:                                              ; preds = %211, %133
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %214

146:                                              ; preds = %142
  %147 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %148 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %151 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %149, %152
  %154 = call i32 (i64, i8*, i32*, ...) @sscanf(i64 %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %16, i32* %12)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 1
  br i1 %156, label %157, label %164

157:                                              ; preds = %146
  %158 = load %struct.device*, %struct.device** %6, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %14, align 4
  %161 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %216

164:                                              ; preds = %146
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %168 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, %166
  store i64 %170, i64* %168, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load %struct.mxt_object*, %struct.mxt_object** %7, align 8
  %173 = call i32 @mxt_obj_size(%struct.mxt_object* %172)
  %174 = icmp sgt i32 %171, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %164
  br label %211

176:                                              ; preds = %164
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %177, %178
  %180 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %181 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = sub nsw i32 %179, %182
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = icmp uge i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %176
  %187 = load i32, i32* %11, align 4
  %188 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %189 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = icmp ult i32 %187, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %186
  %193 = load i32, i32* %16, align 4
  %194 = load %struct.mxt_cfg*, %struct.mxt_cfg** %5, align 8
  %195 = getelementptr inbounds %struct.mxt_cfg, %struct.mxt_cfg* %194, i32 0, i32 5
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %193, i32* %199, align 4
  br label %210

200:                                              ; preds = %186, %176
  %201 = load %struct.device*, %struct.device** %6, align 8
  %202 = load i32, i32* %15, align 4
  %203 = load %struct.mxt_object*, %struct.mxt_object** %7, align 8
  %204 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %11, align 4
  %207 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %201, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %202, i32 %205, i32 %206)
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %3, align 4
  br label %216

210:                                              ; preds = %192
  br label %211

211:                                              ; preds = %210, %175
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %14, align 4
  br label %142

214:                                              ; preds = %142
  br label %21

215:                                              ; preds = %40, %21
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %215, %200, %157, %128, %78, %44
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @sscanf(i64, i8*, i32*, ...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.mxt_object* @mxt_get_object(%struct.mxt_data*, i32) #1

declare dso_local i32 @mxt_obj_size(%struct.mxt_object*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @mxt_obj_instances(%struct.mxt_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
