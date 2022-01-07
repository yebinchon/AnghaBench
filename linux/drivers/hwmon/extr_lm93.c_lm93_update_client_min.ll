; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_lm93_update_client_min.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_lm93_update_client_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm93_data = type { %struct.TYPE_6__, i32, i8***, i8**, i8**, %struct.TYPE_5__*, i8**, %struct.TYPE_4__*, i8** }
%struct.TYPE_6__ = type { i8**, i8** }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"starting device update (block data disabled)\0A\00", align 1
@LM93_REG_HOST_ERROR_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lm93_data*, %struct.i2c_client*)* @lm93_update_client_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lm93_update_client_min(%struct.lm93_data* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca %struct.lm93_data*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.lm93_data* %0, %struct.lm93_data** %3, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %4, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %47, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @LM93_REG_IN(i32 %16)
  %18 = call i8* @lm93_read_byte(%struct.i2c_client* %15, i64 %17)
  %19 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %20 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %19, i32 0, i32 8
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  store i8* %18, i8** %24, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @LM93_REG_IN_MIN(i32 %26)
  %28 = call i8* @lm93_read_byte(%struct.i2c_client* %25, i64 %27)
  %29 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %30 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %29, i32 0, i32 7
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i8* %28, i8** %35, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @LM93_REG_IN_MAX(i32 %37)
  %39 = call i8* @lm93_read_byte(%struct.i2c_client* %36, i64 %38)
  %40 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %41 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %40, i32 0, i32 7
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i8* %39, i8** %46, align 8
  br label %47

47:                                               ; preds = %14
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %11

50:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @LM93_REG_TEMP(i32 %56)
  %58 = call i8* @lm93_read_byte(%struct.i2c_client* %55, i64 %57)
  %59 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %60 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %59, i32 0, i32 6
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %58, i8** %64, align 8
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %51

68:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %95, %68
  %70 = load i32, i32* %5, align 4
  %71 = icmp slt i32 %70, 2
  br i1 %71, label %72, label %98

72:                                               ; preds = %69
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @LM93_REG_PROCHOT_CUR(i32 %74)
  %76 = call i8* @lm93_read_byte(%struct.i2c_client* %73, i64 %75)
  %77 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %78 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %77, i32 0, i32 5
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  store i8* %76, i8** %83, align 8
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @LM93_REG_PROCHOT_AVG(i32 %85)
  %87 = call i8* @lm93_read_byte(%struct.i2c_client* %84, i64 %86)
  %88 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %89 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %88, i32 0, i32 5
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i8* %87, i8** %94, align 8
  br label %95

95:                                               ; preds = %72
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %69

98:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %123, %98
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %102, label %126

102:                                              ; preds = %99
  %103 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @LM93_REG_FAN(i32 %104)
  %106 = call i8* @lm93_read_word(%struct.i2c_client* %103, i32 %105)
  %107 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %108 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %107, i32 0, i32 4
  %109 = load i8**, i8*** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  store i8* %106, i8** %112, align 8
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @LM93_REG_FAN_MIN(i32 %114)
  %116 = call i8* @lm93_read_word(%struct.i2c_client* %113, i32 %115)
  %117 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %118 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %117, i32 0, i32 3
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  store i8* %116, i8** %122, align 8
  br label %123

123:                                              ; preds = %102
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %99

126:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %154, %126
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %128, 2
  br i1 %129, label %130, label %157

130:                                              ; preds = %127
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %150, %130
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 4
  br i1 %133, label %134, label %153

134:                                              ; preds = %131
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i64 @LM93_REG_PWM_CTL(i32 %136, i32 %137)
  %139 = call i8* @lm93_read_byte(%struct.i2c_client* %135, i64 %138)
  %140 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %141 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %140, i32 0, i32 2
  %142 = load i8***, i8**** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8**, i8*** %142, i64 %144
  %146 = load i8**, i8*** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  store i8* %139, i8** %149, align 8
  br label %150

150:                                              ; preds = %134
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %131

153:                                              ; preds = %131
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %127

157:                                              ; preds = %127
  store i32 0, i32* %5, align 4
  %158 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %159 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %158, i32 0, i32 1
  %160 = bitcast i32* %159 to i8**
  store i8** %160, i8*** %7, align 8
  br label %161

161:                                              ; preds = %175, %157
  %162 = load i32, i32* %5, align 4
  %163 = icmp slt i32 %162, 8
  br i1 %163, label %164, label %178

164:                                              ; preds = %161
  %165 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %166 = load i64, i64* @LM93_REG_HOST_ERROR_1, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %166, %168
  %170 = call i8* @lm93_read_byte(%struct.i2c_client* %165, i64 %169)
  %171 = load i8**, i8*** %7, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  store i8* %170, i8** %174, align 8
  br label %175

175:                                              ; preds = %164
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %161

178:                                              ; preds = %161
  store i32 0, i32* %5, align 4
  br label %179

179:                                              ; preds = %194, %178
  %180 = load i32, i32* %5, align 4
  %181 = icmp slt i32 %180, 4
  br i1 %181, label %182, label %197

182:                                              ; preds = %179
  %183 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %184 = load i32, i32* %5, align 4
  %185 = call i64 @LM93_REG_TEMP_BASE(i32 %184)
  %186 = call i8* @lm93_read_byte(%struct.i2c_client* %183, i64 %185)
  %187 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %188 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i8**, i8*** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  store i8* %186, i8** %193, align 8
  br label %194

194:                                              ; preds = %182
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %5, align 4
  br label %179

197:                                              ; preds = %179
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %213, %197
  %199 = load i32, i32* %5, align 4
  %200 = icmp slt i32 %199, 12
  br i1 %200, label %201, label %216

201:                                              ; preds = %198
  %202 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %203 = load i32, i32* %5, align 4
  %204 = call i64 @LM93_REG_TEMP_OFFSET(i32 %203)
  %205 = call i8* @lm93_read_byte(%struct.i2c_client* %202, i64 %204)
  %206 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %207 = getelementptr inbounds %struct.lm93_data, %struct.lm93_data* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i8**, i8*** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %209, i64 %211
  store i8* %205, i8** %212, align 8
  br label %213

213:                                              ; preds = %201
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %5, align 4
  br label %198

216:                                              ; preds = %198
  %217 = load %struct.lm93_data*, %struct.lm93_data** %3, align 8
  %218 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %219 = call i32 @lm93_update_client_common(%struct.lm93_data* %217, %struct.i2c_client* %218)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i8* @lm93_read_byte(%struct.i2c_client*, i64) #1

declare dso_local i64 @LM93_REG_IN(i32) #1

declare dso_local i64 @LM93_REG_IN_MIN(i32) #1

declare dso_local i64 @LM93_REG_IN_MAX(i32) #1

declare dso_local i64 @LM93_REG_TEMP(i32) #1

declare dso_local i64 @LM93_REG_PROCHOT_CUR(i32) #1

declare dso_local i64 @LM93_REG_PROCHOT_AVG(i32) #1

declare dso_local i8* @lm93_read_word(%struct.i2c_client*, i32) #1

declare dso_local i32 @LM93_REG_FAN(i32) #1

declare dso_local i32 @LM93_REG_FAN_MIN(i32) #1

declare dso_local i64 @LM93_REG_PWM_CTL(i32, i32) #1

declare dso_local i64 @LM93_REG_TEMP_BASE(i32) #1

declare dso_local i64 @LM93_REG_TEMP_OFFSET(i32) #1

declare dso_local i32 @lm93_update_client_common(%struct.lm93_data*, %struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
