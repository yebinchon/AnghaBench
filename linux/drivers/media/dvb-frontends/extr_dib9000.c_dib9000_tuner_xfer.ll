; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_tuner_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_tuner_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i64 }
%struct.dib9000_state = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"TunerITF: read busy\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"TunerITF: read failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"TunerITF: read more data than expected\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"TunerITF: write busy\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"TunerITF: write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dib9000_tuner_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_tuner_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib9000_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %13 = call %struct.dib9000_state* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.dib9000_state* %13, %struct.dib9000_state** %7, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %220, %3
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %223

18:                                               ; preds = %14
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 %21
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @I2C_M_RD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %122

28:                                               ; preds = %18
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i64 %31
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 16
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 16, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %28
  %39 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %40 = call i32 @dib9000_read_word(%struct.dib9000_state* %39, i32 790)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  %45 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %46 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i64 %48
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @dib9000_write_word(%struct.dib9000_state* %45, i32 784, i32 %52)
  %54 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sdiv i32 %55, 2
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @dib9000_write_word(%struct.dib9000_state* %54, i32 787, i32 %57)
  %59 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %60 = call i32 @dib9000_write_word(%struct.dib9000_state* %59, i32 786, i32 1)
  store i32 1000, i32* %8, align 4
  br label %61

61:                                               ; preds = %72, %44
  %62 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %63 = call i32 @dib9000_read_word(%struct.dib9000_state* %62, i32 790)
  %64 = load i32, i32* %9, align 4
  %65 = sdiv i32 %64, 2
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %67, %61
  %71 = phi i1 [ false, %61 ], [ %69, %67 ]
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %8, align 4
  br label %61

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %75
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %112, %80
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %115

85:                                               ; preds = %81
  %86 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %87 = call i32 @dib9000_read_word(%struct.dib9000_state* %86, i32 785)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = ashr i32 %88, 8
  %90 = and i32 %89, 255
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i64 %93
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %90, i32* %99, align 4
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %100, 255
  %102 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %102, i64 %104
  %106 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  store i32 %101, i32* %111, align 4
  br label %112

112:                                              ; preds = %85
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 2
  store i32 %114, i32* %8, align 4
  br label %81

115:                                              ; preds = %81
  %116 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %117 = call i32 @dib9000_read_word(%struct.dib9000_state* %116, i32 790)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = call i32 @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %115
  br label %219

122:                                              ; preds = %18
  store i32 1000, i32* %8, align 4
  br label %123

123:                                              ; preds = %132, %122
  %124 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %125 = call i32 @dib9000_read_word(%struct.dib9000_state* %124, i32 789)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br label %130

130:                                              ; preds = %127, %123
  %131 = phi i1 [ false, %123 ], [ %129, %127 ]
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %8, align 4
  br label %123

135:                                              ; preds = %130
  %136 = load i32, i32* %8, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %135
  %141 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %141, i64 %143
  %145 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp sgt i32 %147, 16
  br i1 %148, label %149, label %150

149:                                              ; preds = %140
  store i32 16, i32* %9, align 4
  br label %150

150:                                              ; preds = %149, %140
  store i32 0, i32* %8, align 4
  br label %151

151:                                              ; preds = %181, %150
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %151
  %156 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %157 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %157, i64 %159
  %161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 8
  %168 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %168, i64 %170
  %172 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %167, %178
  %180 = call i32 @dib9000_write_word(%struct.dib9000_state* %156, i32 785, i32 %179)
  br label %181

181:                                              ; preds = %155
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 2
  store i32 %183, i32* %8, align 4
  br label %151

184:                                              ; preds = %151
  %185 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %186 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %186, i64 %188
  %190 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = call i32 @dib9000_write_word(%struct.dib9000_state* %185, i32 784, i32 %192)
  %194 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sdiv i32 %195, 2
  %197 = sub nsw i32 %196, 1
  %198 = call i32 @dib9000_write_word(%struct.dib9000_state* %194, i32 787, i32 %197)
  %199 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %200 = call i32 @dib9000_write_word(%struct.dib9000_state* %199, i32 786, i32 0)
  store i32 1000, i32* %8, align 4
  br label %201

201:                                              ; preds = %210, %184
  %202 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %203 = call i32 @dib9000_read_word(%struct.dib9000_state* %202, i32 791)
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load i32, i32* %8, align 4
  %207 = icmp ne i32 %206, 0
  br label %208

208:                                              ; preds = %205, %201
  %209 = phi i1 [ false, %201 ], [ %207, %205 ]
  br i1 %209, label %210, label %213

210:                                              ; preds = %208
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %8, align 4
  br label %201

213:                                              ; preds = %208
  %214 = load i32, i32* %8, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %218

218:                                              ; preds = %216, %213
  br label %219

219:                                              ; preds = %218, %121
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %11, align 4
  br label %14

223:                                              ; preds = %14
  %224 = load i32, i32* %6, align 4
  ret i32 %224
}

declare dso_local %struct.dib9000_state* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dib9000_read_word(%struct.dib9000_state*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib9000_write_word(%struct.dib9000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
