; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_tx_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_tx_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_pin = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32, i8*, i8*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32*, i32 }

@CEC_TX_STATUS_NACK = common dso_local global i8* null, align 8
@CEC_TX_STATUS_LOW_DRIVE = common dso_local global i8* null, align 8
@CEC_TX_STATUS_OK = common dso_local global i8* null, align 8
@CEC_ST_TX_LOW_DRIVE = common dso_local global i32 0, align 4
@CEC_TX_STATUS_ARB_LOST = common dso_local global i8* null, align 8
@CEC_TIM_DATA_BIT_SAMPLE = common dso_local global i32 0, align 4
@CEC_ST_RX_DATA_POST_SAMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cec_pin*, i8*)* @cec_pin_tx_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cec_pin_tx_states(%struct.cec_pin* %0, i8* %1) #0 {
  %3 = alloca %struct.cec_pin*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cec_pin* %0, %struct.cec_pin** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %13 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %539 [
    i32 129, label %15
    i32 131, label %23
    i32 130, label %44
    i32 145, label %49
    i32 143, label %49
    i32 144, label %49
    i32 151, label %76
    i32 149, label %76
    i32 150, label %76
    i32 147, label %76
    i32 141, label %76
    i32 146, label %76
    i32 139, label %105
    i32 135, label %135
    i32 132, label %135
    i32 133, label %135
    i32 134, label %135
    i32 148, label %311
    i32 140, label %311
    i32 138, label %376
    i32 142, label %381
    i32 136, label %531
    i32 137, label %536
  ]

15:                                               ; preds = %2
  %16 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %17 = call i32 @cec_pin_read(%struct.cec_pin* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %21 = call i32 @cec_pin_to_idle(%struct.cec_pin* %20)
  br label %22

22:                                               ; preds = %19, %15
  br label %540

23:                                               ; preds = %2
  %24 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %25 = call i32 @tx_short_start(%struct.cec_pin* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %29 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %28, i32 0, i32 0
  store i32 132, i32* %29, align 8
  br label %41

30:                                               ; preds = %23
  %31 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %32 = call i32 @tx_long_start(%struct.cec_pin* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %36 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %35, i32 0, i32 0
  store i32 133, i32* %36, align 8
  br label %40

37:                                               ; preds = %30
  %38 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %39 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %38, i32 0, i32 0
  store i32 135, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %27
  %42 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %43 = call i32 @cec_pin_high(%struct.cec_pin* %42)
  br label %540

44:                                               ; preds = %2
  %45 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %46 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %45, i32 0, i32 0
  store i32 134, i32* %46, align 8
  %47 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %48 = call i32 @cec_pin_high(%struct.cec_pin* %47)
  br label %540

49:                                               ; preds = %2, %2, %2
  %50 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %51 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %49
  %55 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %56 = call i32 @cec_pin_to_idle(%struct.cec_pin* %55)
  %57 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %58 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %61 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %60, i32 0, i32 13
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %540

65:                                               ; preds = %54
  %66 = load i8*, i8** %4, align 8
  %67 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %68 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %67, i32 0, i32 12
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @CEC_TX_STATUS_NACK, align 8
  %70 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %71 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %70, i32 0, i32 11
  store i8* %69, i8** %71, align 8
  %72 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %73 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %72, i32 0, i32 10
  %74 = call i32 @wake_up_interruptible(i32* %73)
  br label %540

75:                                               ; preds = %49
  br label %76

76:                                               ; preds = %2, %2, %2, %2, %2, %2, %75
  %77 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %78 = call i32 @cec_pin_read(%struct.cec_pin* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %104, label %80

80:                                               ; preds = %76
  %81 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %82 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %81, i32 0, i32 13
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %80
  %86 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %87 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %90 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %89, i32 0, i32 0
  store i32 129, i32* %90, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %93 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %92, i32 0, i32 12
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** @CEC_TX_STATUS_LOW_DRIVE, align 8
  %95 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %96 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %95, i32 0, i32 11
  store i8* %94, i8** %96, align 8
  %97 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %98 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %97, i32 0, i32 14
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %102 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %101, i32 0, i32 10
  %103 = call i32 @wake_up_interruptible(i32* %102)
  br label %540

104:                                              ; preds = %80, %76
  br label %105

105:                                              ; preds = %2, %104
  %106 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %107 = call i32 @tx_last_bit(%struct.cec_pin* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %105
  %110 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %111 = call i32 @cec_pin_to_idle(%struct.cec_pin* %110)
  %112 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %113 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  %115 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %116 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %115, i32 0, i32 13
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  br label %540

120:                                              ; preds = %109
  %121 = load i8*, i8** %4, align 8
  %122 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %123 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %122, i32 0, i32 12
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** @CEC_TX_STATUS_OK, align 8
  %125 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %126 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %125, i32 0, i32 11
  store i8* %124, i8** %126, align 8
  %127 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %128 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %127, i32 0, i32 10
  %129 = call i32 @wake_up_interruptible(i32* %128)
  br label %540

130:                                              ; preds = %105
  %131 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %132 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %2, %2, %2, %2, %130
  %136 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %137 = call i32 @tx_low_drive(%struct.cec_pin* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %167

139:                                              ; preds = %135
  %140 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %141 = call i32 @cec_pin_low(%struct.cec_pin* %140)
  %142 = load i32, i32* @CEC_ST_TX_LOW_DRIVE, align 4
  %143 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %144 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %146 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  %148 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %149 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %148, i32 0, i32 13
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %139
  br label %540

153:                                              ; preds = %139
  %154 = load i8*, i8** %4, align 8
  %155 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %156 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %155, i32 0, i32 12
  store i8* %154, i8** %156, align 8
  %157 = load i8*, i8** @CEC_TX_STATUS_LOW_DRIVE, align 8
  %158 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %159 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %158, i32 0, i32 11
  store i8* %157, i8** %159, align 8
  %160 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %161 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %160, i32 0, i32 14
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  %164 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %165 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %164, i32 0, i32 10
  %166 = call i32 @wake_up_interruptible(i32* %165)
  br label %540

167:                                              ; preds = %135
  %168 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %169 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = sdiv i32 %170, 10
  %172 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %173 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %172, i32 0, i32 6
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %177 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = add i32 %175, %178
  %180 = icmp uge i32 %171, %179
  br i1 %180, label %181, label %202

181:                                              ; preds = %167
  %182 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %183 = call i32 @cec_pin_to_idle(%struct.cec_pin* %182)
  %184 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %185 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  store i32 0, i32* %186, align 8
  %187 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %188 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %187, i32 0, i32 13
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  br label %540

192:                                              ; preds = %181
  %193 = load i8*, i8** %4, align 8
  %194 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %195 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %194, i32 0, i32 12
  store i8* %193, i8** %195, align 8
  %196 = load i8*, i8** @CEC_TX_STATUS_OK, align 8
  %197 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %198 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %197, i32 0, i32 11
  store i8* %196, i8** %198, align 8
  %199 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %200 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %199, i32 0, i32 10
  %201 = call i32 @wake_up_interruptible(i32* %200)
  br label %540

202:                                              ; preds = %167
  %203 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %204 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = srem i32 %205, 10
  switch i32 %206, label %207 [
    i32 128, label %243
    i32 152, label %298
  ]

207:                                              ; preds = %202
  %208 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %209 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = sdiv i32 %210, 10
  store i32 %211, i32* %8, align 4
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %215 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %214, i32 0, i32 6
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ult i32 %213, %217
  br i1 %218, label %219, label %228

219:                                              ; preds = %207
  %220 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %221 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %8, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %9, align 4
  br label %228

228:                                              ; preds = %219, %207
  %229 = load i32, i32* %9, align 4
  %230 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %231 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = srem i32 %232, 10
  %234 = sub nsw i32 7, %233
  %235 = shl i32 1, %234
  %236 = and i32 %229, %235
  store i32 %236, i32* %5, align 4
  %237 = load i32, i32* %5, align 4
  %238 = icmp ne i32 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i32 140, i32 148
  %241 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %242 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  br label %301

243:                                              ; preds = %202
  %244 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %245 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %244, i32 0, i32 6
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %249 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = add i32 %247, %250
  store i32 %251, i32* %10, align 4
  %252 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %253 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = sdiv i32 %254, 10
  store i32 %255, i32* %11, align 4
  %256 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %257 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %243
  %261 = load i32, i32* %11, align 4
  %262 = load i32, i32* %10, align 4
  %263 = sub i32 %262, 1
  %264 = icmp eq i32 %261, %263
  br label %265

265:                                              ; preds = %260, %243
  %266 = phi i1 [ false, %243 ], [ %264, %260 ]
  %267 = zext i1 %266 to i32
  store i32 %267, i32* %5, align 4
  %268 = load i32, i32* %10, align 4
  %269 = icmp ugt i32 %268, 1
  br i1 %269, label %270, label %282

270:                                              ; preds = %265
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* %10, align 4
  %273 = sub i32 %272, 2
  %274 = icmp eq i32 %271, %273
  br i1 %274, label %275, label %282

275:                                              ; preds = %270
  %276 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %277 = call i32 @tx_early_eom(%struct.cec_pin* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %275
  store i32 1, i32* %5, align 4
  %280 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %281 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %280, i32 0, i32 4
  store i32 1, i32* %281, align 8
  br label %291

282:                                              ; preds = %275, %270, %265
  %283 = load i32, i32* %5, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %282
  %286 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %287 = call i32 @tx_no_eom(%struct.cec_pin* %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %285
  store i32 0, i32* %5, align 4
  br label %290

290:                                              ; preds = %289, %285, %282
  br label %291

291:                                              ; preds = %290, %279
  %292 = load i32, i32* %5, align 4
  %293 = icmp ne i32 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i32 140, i32 148
  %296 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %297 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %296, i32 0, i32 0
  store i32 %295, i32* %297, align 8
  br label %301

298:                                              ; preds = %202
  %299 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %300 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %299, i32 0, i32 0
  store i32 140, i32* %300, align 8
  br label %301

301:                                              ; preds = %298, %291, %228
  %302 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %303 = call i32 @tx_custom_bit(%struct.cec_pin* %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %307 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %306, i32 0, i32 0
  store i32 138, i32* %307, align 8
  br label %308

308:                                              ; preds = %305, %301
  %309 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %310 = call i32 @cec_pin_low(%struct.cec_pin* %309)
  br label %540

311:                                              ; preds = %2, %2
  %312 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %313 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp eq i32 %314, 140
  %316 = zext i1 %315 to i32
  store i32 %316, i32* %5, align 4
  %317 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %318 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = srem i32 %319, 10
  %321 = icmp eq i32 %320, 152
  %322 = zext i1 %321 to i32
  store i32 %322, i32* %6, align 4
  %323 = load i32, i32* %5, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %336

325:                                              ; preds = %311
  %326 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %327 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = icmp slt i32 %328, 4
  br i1 %329, label %333, label %330

330:                                              ; preds = %325
  %331 = load i32, i32* %6, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %330, %325
  %334 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %335 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %334, i32 0, i32 0
  store i32 142, i32* %335, align 8
  br label %373

336:                                              ; preds = %330, %311
  %337 = load i32, i32* %6, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %350, label %339

339:                                              ; preds = %336
  %340 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %341 = call i32 @tx_short_bit(%struct.cec_pin* %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %350

343:                                              ; preds = %339
  %344 = load i32, i32* %5, align 4
  %345 = icmp ne i32 %344, 0
  %346 = zext i1 %345 to i64
  %347 = select i1 %345, i32 141, i32 149
  %348 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %349 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %348, i32 0, i32 0
  store i32 %347, i32* %349, align 8
  br label %372

350:                                              ; preds = %339, %336
  %351 = load i32, i32* %6, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %364, label %353

353:                                              ; preds = %350
  %354 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %355 = call i32 @tx_long_bit(%struct.cec_pin* %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %364

357:                                              ; preds = %353
  %358 = load i32, i32* %5, align 4
  %359 = icmp ne i32 %358, 0
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i32 146, i32 150
  %362 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %363 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %362, i32 0, i32 0
  store i32 %361, i32* %363, align 8
  br label %371

364:                                              ; preds = %353, %350
  %365 = load i32, i32* %5, align 4
  %366 = icmp ne i32 %365, 0
  %367 = zext i1 %366 to i64
  %368 = select i1 %366, i32 147, i32 151
  %369 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %370 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %369, i32 0, i32 0
  store i32 %368, i32* %370, align 8
  br label %371

371:                                              ; preds = %364, %357
  br label %372

372:                                              ; preds = %371, %343
  br label %373

373:                                              ; preds = %372, %333
  %374 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %375 = call i32 @cec_pin_high(%struct.cec_pin* %374)
  br label %540

376:                                              ; preds = %2
  %377 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %378 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %377, i32 0, i32 0
  store i32 139, i32* %378, align 8
  %379 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %380 = call i32 @cec_pin_high(%struct.cec_pin* %379)
  br label %540

381:                                              ; preds = %2
  %382 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %383 = call i32 @cec_pin_read(%struct.cec_pin* %382)
  store i32 %383, i32* %5, align 4
  %384 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %385 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = srem i32 %386, 10
  %388 = icmp eq i32 %387, 152
  %389 = zext i1 %388 to i32
  store i32 %389, i32* %6, align 4
  %390 = load i32, i32* %5, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %463, label %392

392:                                              ; preds = %381
  %393 = load i32, i32* %6, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %463, label %395

395:                                              ; preds = %392
  %396 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %397 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %396, i32 0, i32 13
  %398 = load i32, i32* %397, align 8
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %463, label %400

400:                                              ; preds = %395
  %401 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %402 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %401, i32 0, i32 6
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i32 0, i32 0
  store i32 0, i32* %403, align 8
  %404 = load i8*, i8** %4, align 8
  %405 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %406 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %405, i32 0, i32 12
  store i8* %404, i8** %406, align 8
  %407 = load i8*, i8** @CEC_TX_STATUS_ARB_LOST, align 8
  %408 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %409 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %408, i32 0, i32 11
  store i8* %407, i8** %409, align 8
  %410 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %411 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %410, i32 0, i32 10
  %412 = call i32 @wake_up_interruptible(i32* %411)
  %413 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %414 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %413, i32 0, i32 2
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %417 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %416, i32 0, i32 5
  store i32 %415, i32* %417, align 4
  %418 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %419 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %418, i32 0, i32 2
  store i32 0, i32* %419, align 8
  %420 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %421 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %420, i32 0, i32 9
  %422 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %421, i32 0, i32 0
  %423 = load i32*, i32** %422, align 8
  %424 = call i32 @memset(i32* %423, i32 0, i32 8)
  %425 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %426 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %425, i32 0, i32 6
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 1
  %428 = load i32*, i32** %427, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 0
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %432 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %431, i32 0, i32 9
  %433 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %432, i32 0, i32 0
  %434 = load i32*, i32** %433, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 0
  store i32 %430, i32* %435, align 4
  %436 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %437 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %436, i32 0, i32 5
  %438 = load i32, i32* %437, align 4
  %439 = sub nsw i32 8, %438
  %440 = shl i32 255, %439
  %441 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %442 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %441, i32 0, i32 9
  %443 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %442, i32 0, i32 0
  %444 = load i32*, i32** %443, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 0
  %446 = load i32, i32* %445, align 4
  %447 = and i32 %446, %440
  store i32 %447, i32* %445, align 4
  %448 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %449 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %448, i32 0, i32 9
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 1
  store i32 0, i32* %450, align 8
  %451 = load i8*, i8** %4, align 8
  %452 = load i32, i32* @CEC_TIM_DATA_BIT_SAMPLE, align 4
  %453 = call i32 @ktime_sub_us(i8* %451, i32 %452)
  %454 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %455 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %454, i32 0, i32 8
  store i32 %453, i32* %455, align 4
  %456 = load i32, i32* @CEC_ST_RX_DATA_POST_SAMPLE, align 4
  %457 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %458 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %457, i32 0, i32 0
  store i32 %456, i32* %458, align 8
  %459 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %460 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %459, i32 0, i32 5
  %461 = load i32, i32* %460, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %460, align 4
  br label %540

463:                                              ; preds = %395, %392, %381
  %464 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %465 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %464, i32 0, i32 0
  store i32 145, i32* %465, align 8
  %466 = load i32, i32* %6, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %475, label %468

468:                                              ; preds = %463
  %469 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %470 = call i32 @tx_short_bit(%struct.cec_pin* %469)
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %468
  %473 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %474 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %473, i32 0, i32 0
  store i32 143, i32* %474, align 8
  br label %486

475:                                              ; preds = %468, %463
  %476 = load i32, i32* %6, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %485, label %478

478:                                              ; preds = %475
  %479 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %480 = call i32 @tx_long_bit(%struct.cec_pin* %479)
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %485

482:                                              ; preds = %478
  %483 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %484 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %483, i32 0, i32 0
  store i32 144, i32* %484, align 8
  br label %485

485:                                              ; preds = %482, %478, %475
  br label %486

486:                                              ; preds = %485, %472
  %487 = load i32, i32* %6, align 4
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %490, label %489

489:                                              ; preds = %486
  br label %540

490:                                              ; preds = %486
  %491 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %492 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %491, i32 0, i32 6
  %493 = call i32 @cec_msg_is_broadcast(%struct.TYPE_4__* %492)
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %497

495:                                              ; preds = %490
  %496 = load i32, i32* %5, align 4
  br label %502

497:                                              ; preds = %490
  %498 = load i32, i32* %5, align 4
  %499 = icmp ne i32 %498, 0
  %500 = xor i1 %499, true
  %501 = zext i1 %500 to i32
  br label %502

502:                                              ; preds = %497, %495
  %503 = phi i32 [ %496, %495 ], [ %501, %497 ]
  store i32 %503, i32* %7, align 4
  %504 = load i32, i32* %7, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %530, label %506

506:                                              ; preds = %502
  %507 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %508 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %507, i32 0, i32 7
  %509 = load i32, i32* %508, align 8
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %522

511:                                              ; preds = %506
  %512 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %513 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %512, i32 0, i32 2
  %514 = load i32, i32* %513, align 8
  %515 = sdiv i32 %514, 10
  %516 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %517 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %516, i32 0, i32 6
  %518 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = sub i32 %519, 1
  %521 = icmp eq i32 %515, %520
  br i1 %521, label %522, label %530

522:                                              ; preds = %511, %506
  %523 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %524 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %523, i32 0, i32 4
  %525 = load i32, i32* %524, align 8
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %530, label %527

527:                                              ; preds = %522
  %528 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %529 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %528, i32 0, i32 1
  store i32 1, i32* %529, align 4
  br label %530

530:                                              ; preds = %527, %522, %511, %502
  br label %540

531:                                              ; preds = %2
  %532 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %533 = call i32 @cec_pin_high(%struct.cec_pin* %532)
  %534 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %535 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %534, i32 0, i32 0
  store i32 137, i32* %535, align 8
  br label %540

536:                                              ; preds = %2
  %537 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %538 = call i32 @cec_pin_to_idle(%struct.cec_pin* %537)
  br label %540

539:                                              ; preds = %2
  br label %540

540:                                              ; preds = %539, %536, %531, %530, %489, %400, %376, %373, %308, %192, %191, %153, %152, %120, %119, %85, %65, %64, %44, %41, %22
  ret void
}

declare dso_local i32 @cec_pin_read(%struct.cec_pin*) #1

declare dso_local i32 @cec_pin_to_idle(%struct.cec_pin*) #1

declare dso_local i32 @tx_short_start(%struct.cec_pin*) #1

declare dso_local i32 @tx_long_start(%struct.cec_pin*) #1

declare dso_local i32 @cec_pin_high(%struct.cec_pin*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tx_last_bit(%struct.cec_pin*) #1

declare dso_local i32 @tx_low_drive(%struct.cec_pin*) #1

declare dso_local i32 @cec_pin_low(%struct.cec_pin*) #1

declare dso_local i32 @tx_early_eom(%struct.cec_pin*) #1

declare dso_local i32 @tx_no_eom(%struct.cec_pin*) #1

declare dso_local i32 @tx_custom_bit(%struct.cec_pin*) #1

declare dso_local i32 @tx_short_bit(%struct.cec_pin*) #1

declare dso_local i32 @tx_long_bit(%struct.cec_pin*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ktime_sub_us(i8*, i32) #1

declare dso_local i32 @cec_msg_is_broadcast(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
