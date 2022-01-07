; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_check_for_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_check_for_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.i2c_adapter_quirks* }
%struct.i2c_adapter_quirks = type { i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i32, i64, i32 }

@I2C_AQ_COMB = common dso_local global i32 0, align 4
@I2C_AQ_COMB_WRITE_FIRST = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"1st comb msg must be write\00", align 1
@I2C_AQ_COMB_READ_SECOND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"2nd comb msg must be read\00", align 1
@I2C_AQ_COMB_SAME_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"comb msg only to same addr\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"msg too long\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"too many messages\00", align 1
@I2C_AQ_NO_ZERO_LEN_READ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"no zero length\00", align 1
@I2C_AQ_NO_ZERO_LEN_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @i2c_check_for_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_check_for_quirks(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter_quirks*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %13, i32 0, i32 0
  %15 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %14, align 8
  store %struct.i2c_adapter_quirks* %15, %struct.i2c_adapter_quirks** %8, align 8
  %16 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %8, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  store i32 1, i32* %11, align 4
  %19 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %8, align 8
  %20 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @I2C_AQ_COMB, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %122

25:                                               ; preds = %3
  store i32 2, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %121

28:                                               ; preds = %25
  %29 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %8, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @I2C_AQ_COMB_WRITE_FIRST, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i64 0
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @I2C_M_RD, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %45 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i64 0
  %47 = call i32 @i2c_quirk_error(%struct.i2c_adapter* %44, %struct.i2c_msg* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %47, i32* %4, align 4
  br label %228

48:                                               ; preds = %35, %28
  %49 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %8, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I2C_AQ_COMB_READ_SECOND, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %56, i64 1
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @I2C_M_RD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %55
  %64 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %65 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i64 1
  %67 = call i32 @i2c_quirk_error(%struct.i2c_adapter* %64, %struct.i2c_msg* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %67, i32* %4, align 4
  br label %228

68:                                               ; preds = %55, %48
  %69 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %8, align 8
  %70 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @I2C_AQ_COMB_SAME_ADDR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %68
  %76 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i64 0
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %81 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i64 1
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %79, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %87 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %87, i64 0
  %89 = call i32 @i2c_quirk_error(%struct.i2c_adapter* %86, %struct.i2c_msg* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 %89, i32* %4, align 4
  br label %228

90:                                               ; preds = %75, %68
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i64 0
  %93 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %8, align 8
  %96 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @i2c_quirk_exceeded(i32 %94, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %90
  %101 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %102 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %103 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %102, i64 0
  %104 = call i32 @i2c_quirk_error(%struct.i2c_adapter* %101, %struct.i2c_msg* %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %104, i32* %4, align 4
  br label %228

105:                                              ; preds = %90
  %106 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i64 1
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %8, align 8
  %111 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @i2c_quirk_exceeded(i32 %109, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %105
  %116 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %117 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %118 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i64 1
  %119 = call i32 @i2c_quirk_error(%struct.i2c_adapter* %116, %struct.i2c_msg* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %119, i32* %4, align 4
  br label %228

120:                                              ; preds = %105
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %120, %25
  br label %122

122:                                              ; preds = %121, %3
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i64 @i2c_quirk_exceeded(i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %129 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %130 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %129, i64 0
  %131 = call i32 @i2c_quirk_error(%struct.i2c_adapter* %128, %struct.i2c_msg* %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 %131, i32* %4, align 4
  br label %228

132:                                              ; preds = %122
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %224, %132
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %227

137:                                              ; preds = %133
  %138 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %138, i64 %140
  %142 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %12, align 4
  %144 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %144, i64 %146
  %148 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @I2C_M_RD, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %188

153:                                              ; preds = %137
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %153
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %8, align 8
  %159 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @i2c_quirk_exceeded(i32 %157, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %156
  %164 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %165 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %165, i64 %167
  %169 = call i32 @i2c_quirk_error(%struct.i2c_adapter* %164, %struct.i2c_msg* %168, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %169, i32* %4, align 4
  br label %228

170:                                              ; preds = %156, %153
  %171 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %8, align 8
  %172 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @I2C_AQ_NO_ZERO_LEN_READ, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %170
  %178 = load i32, i32* %12, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %182 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %182, i64 %184
  %186 = call i32 @i2c_quirk_error(%struct.i2c_adapter* %181, %struct.i2c_msg* %185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 %186, i32* %4, align 4
  br label %228

187:                                              ; preds = %177, %170
  br label %223

188:                                              ; preds = %137
  %189 = load i32, i32* %11, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %205

191:                                              ; preds = %188
  %192 = load i32, i32* %12, align 4
  %193 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %8, align 8
  %194 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = call i64 @i2c_quirk_exceeded(i32 %192, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %191
  %199 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %200 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %200, i64 %202
  %204 = call i32 @i2c_quirk_error(%struct.i2c_adapter* %199, %struct.i2c_msg* %203, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %204, i32* %4, align 4
  br label %228

205:                                              ; preds = %191, %188
  %206 = load %struct.i2c_adapter_quirks*, %struct.i2c_adapter_quirks** %8, align 8
  %207 = getelementptr inbounds %struct.i2c_adapter_quirks, %struct.i2c_adapter_quirks* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @I2C_AQ_NO_ZERO_LEN_WRITE, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %205
  %213 = load i32, i32* %12, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %212
  %216 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %217 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %217, i64 %219
  %221 = call i32 @i2c_quirk_error(%struct.i2c_adapter* %216, %struct.i2c_msg* %220, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 %221, i32* %4, align 4
  br label %228

222:                                              ; preds = %212, %205
  br label %223

223:                                              ; preds = %222, %187
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  br label %133

227:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %228

228:                                              ; preds = %227, %215, %198, %180, %163, %127, %115, %100, %85, %63, %43
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local i32 @i2c_quirk_error(%struct.i2c_adapter*, %struct.i2c_msg*, i8*) #1

declare dso_local i64 @i2c_quirk_exceeded(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
