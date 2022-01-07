; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_write_i2c_default_retimer_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_write_i2c_default_retimer_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [106 x i8] c"retimer writes default setting to slave_address = 0x%x,\09\09offset = 0x%x, reg_val = 0x%x, i2c_success = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"retimer write to slave_addr = 0x%x,\09\09offset = 0x%x, reg_val = 0x%x, i2c_success = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"retimer write to slave_addr = 0x%x,\09\09offset = 0x%x, reg_val= 0x%x, i2c_success = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"retimer write to slave_addr = 0x%x,\09\09\09offset = 0x%x, reg_val = 0x%x, i2c_success = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [86 x i8] c"retimer write to slave_addr = 0x%x,\09\09\09offset = 0x%x, reg_val= 0x%x, i2c_success = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [111 x i8] c"retimer write default setting to slave_addr = 0x%x,\09\09\09offset = 0x%x, reg_val= 0x%x, i2c_success = %d end here\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*, i32, i32)* @write_i2c_default_retimer_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_i2c_default_retimer_setting(%struct.pipe_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 93, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DC_LOGGER_INIT(i32 %16)
  %18 = bitcast [2 x i32]* %8 to i32**
  %19 = call i32 @memset(i32** %18, i32 0, i32 8)
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 10, i32* %20, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 19, i32* %21, align 4
  %22 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %25 = call i32 @i2c_write(%struct.pipe_ctx* %22, i32 %23, i32* %24, i32 8)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = call i32 @RETIMER_REDRIVER_INFO(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28, i32 %30, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ASSERT(i32 %39)
  br label %41

41:                                               ; preds = %38, %3
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 10, i32* %42, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 23, i32* %43, align 4
  %44 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %47 = call i32 @i2c_write(%struct.pipe_ctx* %44, i32 %45, i32* %46, i32 8)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  %57 = call i32 @RETIMER_REDRIVER_INFO(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %50, i32 %52, i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %41
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @ASSERT(i32 %61)
  br label %63

63:                                               ; preds = %60, %41
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 11, i32* %64, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 218, i32 216
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %68, i32* %69, align 4
  %70 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %73 = call i32 @i2c_write(%struct.pipe_ctx* %70, i32 %71, i32* %72, i32 8)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %7, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 0
  %83 = call i32 @RETIMER_REDRIVER_INFO(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %76, i32 %78, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %63
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @ASSERT(i32 %87)
  br label %89

89:                                               ; preds = %86, %63
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 10, i32* %90, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 23, i32* %91, align 4
  %92 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %93 = load i32, i32* %7, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %95 = call i32 @i2c_write(%struct.pipe_ctx* %92, i32 %93, i32* %94, i32 8)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 0
  %105 = call i32 @RETIMER_REDRIVER_INFO(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %98, i32 %100, i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %89
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @ASSERT(i32 %109)
  br label %111

111:                                              ; preds = %108, %89
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 12, i32* %112, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 29, i32 145
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %116, i32* %117, align 4
  %118 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %119 = load i32, i32* %7, align 4
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %121 = call i32 @i2c_write(%struct.pipe_ctx* %118, i32 %119, i32* %120, i32 8)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %7, align 4
  %123 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 1, i32 0
  %131 = call i32 @RETIMER_REDRIVER_INFO(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %122, i32 %124, i32 %126, i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %111
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @ASSERT(i32 %135)
  br label %137

137:                                              ; preds = %134, %111
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 10, i32* %138, align 4
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 23, i32* %139, align 4
  %140 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %141 = load i32, i32* %7, align 4
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %143 = call i32 @i2c_write(%struct.pipe_ctx* %140, i32 %141, i32* %142, i32 8)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %7, align 4
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 1, i32 0
  %153 = call i32 @RETIMER_REDRIVER_INFO(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %144, i32 %146, i32 %148, i32 %152)
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %137
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @ASSERT(i32 %157)
  br label %159

159:                                              ; preds = %156, %137
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %229

162:                                              ; preds = %159
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 255, i32* %163, align 4
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 1, i32* %164, align 4
  %165 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %166 = load i32, i32* %7, align 4
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %168 = call i32 @i2c_write(%struct.pipe_ctx* %165, i32 %166, i32* %167, i32 8)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %7, align 4
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 1, i32 0
  %178 = call i32 @RETIMER_REDRIVER_INFO(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i32 %169, i32 %171, i32 %173, i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %162
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @ASSERT(i32 %182)
  br label %184

184:                                              ; preds = %181, %162
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %185, align 4
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 35, i32* %186, align 4
  %187 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %188 = load i32, i32* %7, align 4
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %190 = call i32 @i2c_write(%struct.pipe_ctx* %187, i32 %188, i32* %189, i32 8)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %7, align 4
  %192 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 1, i32 0
  %200 = call i32 @RETIMER_REDRIVER_INFO(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i32 %191, i32 %193, i32 %195, i32 %199)
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %184
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @ASSERT(i32 %204)
  br label %206

206:                                              ; preds = %203, %184
  %207 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 255, i32* %207, align 4
  %208 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %208, align 4
  %209 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %210 = load i32, i32* %7, align 4
  %211 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %212 = call i32 @i2c_write(%struct.pipe_ctx* %209, i32 %210, i32* %211, i32 8)
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %7, align 4
  %214 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 1, i32 0
  %222 = call i32 @RETIMER_REDRIVER_INFO(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.5, i64 0, i64 0), i32 %213, i32 %215, i32 %217, i32 %221)
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %206
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @ASSERT(i32 %226)
  br label %228

228:                                              ; preds = %225, %206
  br label %229

229:                                              ; preds = %228, %159
  ret void
}

declare dso_local i32 @DC_LOGGER_INIT(i32) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @i2c_write(%struct.pipe_ctx*, i32, i32*, i32) #1

declare dso_local i32 @RETIMER_REDRIVER_INFO(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
