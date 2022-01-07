; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_parse_object_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_parse_object_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i64, i32, i64, i32, i64, i64, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.mxt_object = type { i64, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"T%u Start:%u Size:%zu Instances:%zu Report IDs:%u-%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid T44 position\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxt_data*, %struct.mxt_object*)* @mxt_parse_object_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_parse_object_table(%struct.mxt_data* %0, %struct.mxt_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxt_data*, align 8
  %5 = alloca %struct.mxt_object*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mxt_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mxt_data* %0, %struct.mxt_data** %4, align 8
  store %struct.mxt_object* %1, %struct.mxt_object** %5, align 8
  %13 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %14 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %13, i32 0, i32 18
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %6, align 8
  store i32 1, i32* %8, align 4
  %16 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %17 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %191, %2
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %21 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %20, i32 0, i32 17
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %194

26:                                               ; preds = %18
  %27 = load %struct.mxt_object*, %struct.mxt_object** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %27, i64 %29
  store %struct.mxt_object* %30, %struct.mxt_object** %10, align 8
  %31 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %32 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %31, i32 0, i32 0
  %33 = call i32 @le16_to_cpus(i64* %32)
  %34 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %35 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %41 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %44 = call i32 @mxt_obj_instances(%struct.mxt_object* %43)
  %45 = mul nsw i32 %42, %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %51

50:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %38
  %52 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %53 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %52, i32 0, i32 18
  %54 = load %struct.i2c_client*, %struct.i2c_client** %53, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %57 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %60 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %63 = call i32 @mxt_obj_size(%struct.mxt_object* %62)
  %64 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %65 = call i32 @mxt_obj_instances(%struct.mxt_object* %64)
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %58, i64 %61, i32 %63, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %70 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %168 [
    i32 134, label %72
    i32 135, label %103
    i32 133, label %112
    i32 132, label %118
    i32 128, label %124
    i32 130, label %143
    i32 131, label %149
    i32 129, label %153
  ]

72:                                               ; preds = %51
  %73 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %74 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %73, i32 0, i32 17
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 128
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %81 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %80, i32 0, i32 17
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 32
  br i1 %85, label %86, label %91

86:                                               ; preds = %79
  %87 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %88 = call i32 @mxt_obj_size(%struct.mxt_object* %87)
  %89 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %90 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  br label %97

91:                                               ; preds = %79, %72
  %92 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %93 = call i32 @mxt_obj_size(%struct.mxt_object* %92)
  %94 = sub nsw i32 %93, 1
  %95 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %96 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %91, %86
  %98 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %99 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %102 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  br label %168

103:                                              ; preds = %51
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %106 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  %107 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %108 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %111 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %110, i32 0, i32 4
  store i64 %109, i64* %111, align 8
  br label %168

112:                                              ; preds = %51
  %113 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %114 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %117 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %116, i32 0, i32 5
  store i64 %115, i64* %117, align 8
  br label %168

118:                                              ; preds = %51
  %119 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %120 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %123 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %122, i32 0, i32 6
  store i64 %121, i64* %123, align 8
  br label %168

124:                                              ; preds = %51
  %125 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %126 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %125, i32 0, i32 7
  store i32 128, i32* %126, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %129 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %132 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %130, %133
  %135 = sub nsw i32 %134, 1
  %136 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %137 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %136, i32 0, i32 16
  store i32 %135, i32* %137, align 4
  %138 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %139 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %142 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %141, i32 0, i32 9
  store i32 %140, i32* %142, align 8
  br label %168

143:                                              ; preds = %51
  %144 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %145 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %148 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %147, i32 0, i32 10
  store i64 %146, i64* %148, align 8
  br label %168

149:                                              ; preds = %51
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %152 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %151, i32 0, i32 11
  store i32 %150, i32* %152, align 8
  br label %168

153:                                              ; preds = %51
  %154 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %155 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %154, i32 0, i32 7
  store i32 129, i32* %155, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %158 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %157, i32 0, i32 12
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %161 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %160, i32 0, i32 13
  store i32 %159, i32* %161, align 8
  %162 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %163 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %164, 2
  %166 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %167 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %166, i32 0, i32 9
  store i32 %165, i32* %167, align 8
  br label %168

168:                                              ; preds = %51, %153, %149, %143, %124, %118, %112, %103, %97
  %169 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %170 = getelementptr inbounds %struct.mxt_object, %struct.mxt_object* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %173 = call i32 @mxt_obj_size(%struct.mxt_object* %172)
  %174 = load %struct.mxt_object*, %struct.mxt_object** %10, align 8
  %175 = call i32 @mxt_obj_instances(%struct.mxt_object* %174)
  %176 = mul nsw i32 %173, %175
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %171, %177
  %179 = sub nsw i64 %178, 1
  store i64 %179, i64* %9, align 8
  %180 = load i64, i64* %9, align 8
  %181 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %182 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp sge i64 %180, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %168
  %186 = load i64, i64* %9, align 8
  %187 = add nsw i64 %186, 1
  %188 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %189 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %185, %168
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %7, align 4
  br label %18

194:                                              ; preds = %18
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %197 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %196, i32 0, i32 14
  store i32 %195, i32* %197, align 4
  %198 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %199 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %198, i32 0, i32 10
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %217

202:                                              ; preds = %194
  %203 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %204 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %207 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %206, i32 0, i32 10
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %208, 1
  %210 = icmp ne i64 %205, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %202
  %212 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %213 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %212, i32 0, i32 0
  %214 = call i32 @dev_err(i32* %213, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %215 = load i32, i32* @EINVAL, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %3, align 4
  br label %236

217:                                              ; preds = %202, %194
  %218 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %219 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %218, i32 0, i32 14
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %222 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @GFP_KERNEL, align 4
  %225 = call i32 @kcalloc(i32 %220, i32 %223, i32 %224)
  %226 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %227 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %226, i32 0, i32 15
  store i32 %225, i32* %227, align 8
  %228 = load %struct.mxt_data*, %struct.mxt_data** %4, align 8
  %229 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %228, i32 0, i32 15
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %217
  %233 = load i32, i32* @ENOMEM, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %3, align 4
  br label %236

235:                                              ; preds = %217
  store i32 0, i32* %3, align 4
  br label %236

236:                                              ; preds = %235, %232, %211
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i32 @le16_to_cpus(i64*) #1

declare dso_local i32 @mxt_obj_instances(%struct.mxt_object*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mxt_obj_size(%struct.mxt_object*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
