; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_gp2ap020a00f.c_gp2ap020a00f_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gp2ap020a00f_data = type { i32, i32 }

@GP2AP020A00F_OPMODE_SHUTDOWN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GP2AP020A00F_OPMODE_READ_RAW_CLEAR = common dso_local global i32 0, align 4
@GP2AP020A00F_OPMODE_READ_RAW_IR = common dso_local global i32 0, align 4
@GP2AP020A00F_OPMODE_READ_RAW_PROXIMITY = common dso_local global i32 0, align 4
@GP2AP020A00F_OPMODE_PROX_DETECT = common dso_local global i32 0, align 4
@GP2AP020A00F_OPMODE_ALS = common dso_local global i32 0, align 4
@GP2AP020A00F_ADD_MODE = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_ALS_CLEAR_TRIGGER = common dso_local global i32 0, align 4
@GP2AP020A00F_SUBTRACT_MODE = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_ALS_IR_TRIGGER = common dso_local global i32 0, align 4
@GP2AP020A00F_OPMODE_PS = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_PROX_TRIGGER = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_ALS_RISING_EV = common dso_local global i32 0, align 4
@GP2AP020A00F_THRESH_TH = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_ALS_FALLING_EV = common dso_local global i32 0, align 4
@GP2AP020A00F_THRESH_TL = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_PROX_RISING_EV = common dso_local global i32 0, align 4
@GP2AP020A00F_THRESH_PH = common dso_local global i32 0, align 4
@GP2AP020A00F_FLAG_PROX_FALLING_EV = common dso_local global i32 0, align 4
@GP2AP020A00F_THRESH_PL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gp2ap020a00f_data*, i32)* @gp2ap020a00f_exec_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2ap020a00f_exec_cmd(%struct.gp2ap020a00f_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gp2ap020a00f_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gp2ap020a00f_data* %0, %struct.gp2ap020a00f_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %410 [
    i32 136, label %8
    i32 135, label %21
    i32 134, label %34
    i32 132, label %47
    i32 133, label %70
    i32 130, label %84
    i32 131, label %107
    i32 128, label %121
    i32 129, label %139
    i32 143, label %148
    i32 144, label %186
    i32 141, label %215
    i32 142, label %253
    i32 139, label %282
    i32 140, label %323
    i32 137, label %346
    i32 138, label %387
  ]

8:                                                ; preds = %2
  %9 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %10 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GP2AP020A00F_OPMODE_SHUTDOWN, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %412

17:                                               ; preds = %8
  %18 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %19 = load i32, i32* @GP2AP020A00F_OPMODE_READ_RAW_CLEAR, align 4
  %20 = call i32 @gp2ap020a00f_set_operation_mode(%struct.gp2ap020a00f_data* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  br label %410

21:                                               ; preds = %2
  %22 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %23 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GP2AP020A00F_OPMODE_SHUTDOWN, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %412

30:                                               ; preds = %21
  %31 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %32 = load i32, i32* @GP2AP020A00F_OPMODE_READ_RAW_IR, align 4
  %33 = call i32 @gp2ap020a00f_set_operation_mode(%struct.gp2ap020a00f_data* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %410

34:                                               ; preds = %2
  %35 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %36 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GP2AP020A00F_OPMODE_SHUTDOWN, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %412

43:                                               ; preds = %34
  %44 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %45 = load i32, i32* @GP2AP020A00F_OPMODE_READ_RAW_PROXIMITY, align 4
  %46 = call i32 @gp2ap020a00f_set_operation_mode(%struct.gp2ap020a00f_data* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %410

47:                                               ; preds = %2
  %48 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %49 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GP2AP020A00F_OPMODE_PROX_DETECT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %412

56:                                               ; preds = %47
  %57 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %58 = call i32 @gp2ap020a00f_als_enabled(%struct.gp2ap020a00f_data* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %62 = load i32, i32* @GP2AP020A00F_OPMODE_ALS, align 4
  %63 = load i32, i32* @GP2AP020A00F_ADD_MODE, align 4
  %64 = call i32 @gp2ap020a00f_alter_opmode(%struct.gp2ap020a00f_data* %61, i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = load i32, i32* @GP2AP020A00F_FLAG_ALS_CLEAR_TRIGGER, align 4
  %67 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %68 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %67, i32 0, i32 0
  %69 = call i32 @set_bit(i32 %66, i32* %68)
  br label %410

70:                                               ; preds = %2
  %71 = load i32, i32* @GP2AP020A00F_FLAG_ALS_CLEAR_TRIGGER, align 4
  %72 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %73 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %72, i32 0, i32 0
  %74 = call i32 @clear_bit(i32 %71, i32* %73)
  %75 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %76 = call i32 @gp2ap020a00f_als_enabled(%struct.gp2ap020a00f_data* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %410

79:                                               ; preds = %70
  %80 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %81 = load i32, i32* @GP2AP020A00F_OPMODE_ALS, align 4
  %82 = load i32, i32* @GP2AP020A00F_SUBTRACT_MODE, align 4
  %83 = call i32 @gp2ap020a00f_alter_opmode(%struct.gp2ap020a00f_data* %80, i32 %81, i32 %82)
  store i32 %83, i32* %6, align 4
  br label %410

84:                                               ; preds = %2
  %85 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %86 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @GP2AP020A00F_OPMODE_PROX_DETECT, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @EBUSY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %412

93:                                               ; preds = %84
  %94 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %95 = call i32 @gp2ap020a00f_als_enabled(%struct.gp2ap020a00f_data* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %99 = load i32, i32* @GP2AP020A00F_OPMODE_ALS, align 4
  %100 = load i32, i32* @GP2AP020A00F_ADD_MODE, align 4
  %101 = call i32 @gp2ap020a00f_alter_opmode(%struct.gp2ap020a00f_data* %98, i32 %99, i32 %100)
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %97, %93
  %103 = load i32, i32* @GP2AP020A00F_FLAG_ALS_IR_TRIGGER, align 4
  %104 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %105 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %104, i32 0, i32 0
  %106 = call i32 @set_bit(i32 %103, i32* %105)
  br label %410

107:                                              ; preds = %2
  %108 = load i32, i32* @GP2AP020A00F_FLAG_ALS_IR_TRIGGER, align 4
  %109 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %110 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %109, i32 0, i32 0
  %111 = call i32 @clear_bit(i32 %108, i32* %110)
  %112 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %113 = call i32 @gp2ap020a00f_als_enabled(%struct.gp2ap020a00f_data* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %410

116:                                              ; preds = %107
  %117 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %118 = load i32, i32* @GP2AP020A00F_OPMODE_ALS, align 4
  %119 = load i32, i32* @GP2AP020A00F_SUBTRACT_MODE, align 4
  %120 = call i32 @gp2ap020a00f_alter_opmode(%struct.gp2ap020a00f_data* %117, i32 %118, i32 %119)
  store i32 %120, i32* %6, align 4
  br label %410

121:                                              ; preds = %2
  %122 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %123 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @GP2AP020A00F_OPMODE_PROX_DETECT, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* @EBUSY, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %412

130:                                              ; preds = %121
  %131 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %132 = load i32, i32* @GP2AP020A00F_OPMODE_PS, align 4
  %133 = load i32, i32* @GP2AP020A00F_ADD_MODE, align 4
  %134 = call i32 @gp2ap020a00f_alter_opmode(%struct.gp2ap020a00f_data* %131, i32 %132, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* @GP2AP020A00F_FLAG_PROX_TRIGGER, align 4
  %136 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %137 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %136, i32 0, i32 0
  %138 = call i32 @set_bit(i32 %135, i32* %137)
  br label %410

139:                                              ; preds = %2
  %140 = load i32, i32* @GP2AP020A00F_FLAG_PROX_TRIGGER, align 4
  %141 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %142 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %141, i32 0, i32 0
  %143 = call i32 @clear_bit(i32 %140, i32* %142)
  %144 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %145 = load i32, i32* @GP2AP020A00F_OPMODE_PS, align 4
  %146 = load i32, i32* @GP2AP020A00F_SUBTRACT_MODE, align 4
  %147 = call i32 @gp2ap020a00f_alter_opmode(%struct.gp2ap020a00f_data* %144, i32 %145, i32 %146)
  store i32 %147, i32* %6, align 4
  br label %410

148:                                              ; preds = %2
  %149 = load i32, i32* @GP2AP020A00F_FLAG_ALS_RISING_EV, align 4
  %150 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %151 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %150, i32 0, i32 0
  %152 = call i32 @test_bit(i32 %149, i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i32 0, i32* %3, align 4
  br label %412

155:                                              ; preds = %148
  %156 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %157 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @GP2AP020A00F_OPMODE_PROX_DETECT, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i32, i32* @EBUSY, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %412

164:                                              ; preds = %155
  %165 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %166 = call i32 @gp2ap020a00f_als_enabled(%struct.gp2ap020a00f_data* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %178, label %168

168:                                              ; preds = %164
  %169 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %170 = load i32, i32* @GP2AP020A00F_OPMODE_ALS, align 4
  %171 = load i32, i32* @GP2AP020A00F_ADD_MODE, align 4
  %172 = call i32 @gp2ap020a00f_alter_opmode(%struct.gp2ap020a00f_data* %169, i32 %170, i32 %171)
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %168
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %3, align 4
  br label %412

177:                                              ; preds = %168
  br label %178

178:                                              ; preds = %177, %164
  %179 = load i32, i32* @GP2AP020A00F_FLAG_ALS_RISING_EV, align 4
  %180 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %181 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %180, i32 0, i32 0
  %182 = call i32 @set_bit(i32 %179, i32* %181)
  %183 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %184 = load i32, i32* @GP2AP020A00F_THRESH_TH, align 4
  %185 = call i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data* %183, i32 %184, i32 1)
  store i32 %185, i32* %6, align 4
  br label %410

186:                                              ; preds = %2
  %187 = load i32, i32* @GP2AP020A00F_FLAG_ALS_RISING_EV, align 4
  %188 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %189 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %188, i32 0, i32 0
  %190 = call i32 @test_bit(i32 %187, i32* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %412

193:                                              ; preds = %186
  %194 = load i32, i32* @GP2AP020A00F_FLAG_ALS_RISING_EV, align 4
  %195 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %196 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %195, i32 0, i32 0
  %197 = call i32 @clear_bit(i32 %194, i32* %196)
  %198 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %199 = call i32 @gp2ap020a00f_als_enabled(%struct.gp2ap020a00f_data* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %211, label %201

201:                                              ; preds = %193
  %202 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %203 = load i32, i32* @GP2AP020A00F_OPMODE_ALS, align 4
  %204 = load i32, i32* @GP2AP020A00F_SUBTRACT_MODE, align 4
  %205 = call i32 @gp2ap020a00f_alter_opmode(%struct.gp2ap020a00f_data* %202, i32 %203, i32 %204)
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %201
  %209 = load i32, i32* %6, align 4
  store i32 %209, i32* %3, align 4
  br label %412

210:                                              ; preds = %201
  br label %211

211:                                              ; preds = %210, %193
  %212 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %213 = load i32, i32* @GP2AP020A00F_THRESH_TH, align 4
  %214 = call i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data* %212, i32 %213, i32 0)
  store i32 %214, i32* %6, align 4
  br label %410

215:                                              ; preds = %2
  %216 = load i32, i32* @GP2AP020A00F_FLAG_ALS_FALLING_EV, align 4
  %217 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %218 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %217, i32 0, i32 0
  %219 = call i32 @test_bit(i32 %216, i32* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  store i32 0, i32* %3, align 4
  br label %412

222:                                              ; preds = %215
  %223 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %224 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @GP2AP020A00F_OPMODE_PROX_DETECT, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = load i32, i32* @EBUSY, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %3, align 4
  br label %412

231:                                              ; preds = %222
  %232 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %233 = call i32 @gp2ap020a00f_als_enabled(%struct.gp2ap020a00f_data* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %245, label %235

235:                                              ; preds = %231
  %236 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %237 = load i32, i32* @GP2AP020A00F_OPMODE_ALS, align 4
  %238 = load i32, i32* @GP2AP020A00F_ADD_MODE, align 4
  %239 = call i32 @gp2ap020a00f_alter_opmode(%struct.gp2ap020a00f_data* %236, i32 %237, i32 %238)
  store i32 %239, i32* %6, align 4
  %240 = load i32, i32* %6, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %235
  %243 = load i32, i32* %6, align 4
  store i32 %243, i32* %3, align 4
  br label %412

244:                                              ; preds = %235
  br label %245

245:                                              ; preds = %244, %231
  %246 = load i32, i32* @GP2AP020A00F_FLAG_ALS_FALLING_EV, align 4
  %247 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %248 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %247, i32 0, i32 0
  %249 = call i32 @set_bit(i32 %246, i32* %248)
  %250 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %251 = load i32, i32* @GP2AP020A00F_THRESH_TL, align 4
  %252 = call i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data* %250, i32 %251, i32 1)
  store i32 %252, i32* %6, align 4
  br label %410

253:                                              ; preds = %2
  %254 = load i32, i32* @GP2AP020A00F_FLAG_ALS_FALLING_EV, align 4
  %255 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %256 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %255, i32 0, i32 0
  %257 = call i32 @test_bit(i32 %254, i32* %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %253
  store i32 0, i32* %3, align 4
  br label %412

260:                                              ; preds = %253
  %261 = load i32, i32* @GP2AP020A00F_FLAG_ALS_FALLING_EV, align 4
  %262 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %263 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %262, i32 0, i32 0
  %264 = call i32 @clear_bit(i32 %261, i32* %263)
  %265 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %266 = call i32 @gp2ap020a00f_als_enabled(%struct.gp2ap020a00f_data* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %278, label %268

268:                                              ; preds = %260
  %269 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %270 = load i32, i32* @GP2AP020A00F_OPMODE_ALS, align 4
  %271 = load i32, i32* @GP2AP020A00F_SUBTRACT_MODE, align 4
  %272 = call i32 @gp2ap020a00f_alter_opmode(%struct.gp2ap020a00f_data* %269, i32 %270, i32 %271)
  store i32 %272, i32* %6, align 4
  %273 = load i32, i32* %6, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %268
  %276 = load i32, i32* %6, align 4
  store i32 %276, i32* %3, align 4
  br label %412

277:                                              ; preds = %268
  br label %278

278:                                              ; preds = %277, %260
  %279 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %280 = load i32, i32* @GP2AP020A00F_THRESH_TL, align 4
  %281 = call i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data* %279, i32 %280, i32 0)
  store i32 %281, i32* %6, align 4
  br label %410

282:                                              ; preds = %2
  %283 = load i32, i32* @GP2AP020A00F_FLAG_PROX_RISING_EV, align 4
  %284 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %285 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %284, i32 0, i32 0
  %286 = call i32 @test_bit(i32 %283, i32* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %282
  store i32 0, i32* %3, align 4
  br label %412

289:                                              ; preds = %282
  %290 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %291 = call i32 @gp2ap020a00f_als_enabled(%struct.gp2ap020a00f_data* %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %299, label %293

293:                                              ; preds = %289
  %294 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %295 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @GP2AP020A00F_OPMODE_PS, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %293, %289
  %300 = load i32, i32* @EBUSY, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %3, align 4
  br label %412

302:                                              ; preds = %293
  %303 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %304 = call i32 @gp2ap020a00f_prox_detect_enabled(%struct.gp2ap020a00f_data* %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %315, label %306

306:                                              ; preds = %302
  %307 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %308 = load i32, i32* @GP2AP020A00F_OPMODE_PROX_DETECT, align 4
  %309 = call i32 @gp2ap020a00f_set_operation_mode(%struct.gp2ap020a00f_data* %307, i32 %308)
  store i32 %309, i32* %6, align 4
  %310 = load i32, i32* %6, align 4
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %306
  %313 = load i32, i32* %6, align 4
  store i32 %313, i32* %3, align 4
  br label %412

314:                                              ; preds = %306
  br label %315

315:                                              ; preds = %314, %302
  %316 = load i32, i32* @GP2AP020A00F_FLAG_PROX_RISING_EV, align 4
  %317 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %318 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %317, i32 0, i32 0
  %319 = call i32 @set_bit(i32 %316, i32* %318)
  %320 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %321 = load i32, i32* @GP2AP020A00F_THRESH_PH, align 4
  %322 = call i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data* %320, i32 %321, i32 1)
  store i32 %322, i32* %6, align 4
  br label %410

323:                                              ; preds = %2
  %324 = load i32, i32* @GP2AP020A00F_FLAG_PROX_RISING_EV, align 4
  %325 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %326 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %325, i32 0, i32 0
  %327 = call i32 @test_bit(i32 %324, i32* %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %323
  store i32 0, i32* %3, align 4
  br label %412

330:                                              ; preds = %323
  %331 = load i32, i32* @GP2AP020A00F_FLAG_PROX_RISING_EV, align 4
  %332 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %333 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %332, i32 0, i32 0
  %334 = call i32 @clear_bit(i32 %331, i32* %333)
  %335 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %336 = load i32, i32* @GP2AP020A00F_OPMODE_SHUTDOWN, align 4
  %337 = call i32 @gp2ap020a00f_set_operation_mode(%struct.gp2ap020a00f_data* %335, i32 %336)
  store i32 %337, i32* %6, align 4
  %338 = load i32, i32* %6, align 4
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %330
  %341 = load i32, i32* %6, align 4
  store i32 %341, i32* %3, align 4
  br label %412

342:                                              ; preds = %330
  %343 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %344 = load i32, i32* @GP2AP020A00F_THRESH_PH, align 4
  %345 = call i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data* %343, i32 %344, i32 0)
  store i32 %345, i32* %6, align 4
  br label %410

346:                                              ; preds = %2
  %347 = load i32, i32* @GP2AP020A00F_FLAG_PROX_FALLING_EV, align 4
  %348 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %349 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %348, i32 0, i32 0
  %350 = call i32 @test_bit(i32 %347, i32* %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %346
  store i32 0, i32* %3, align 4
  br label %412

353:                                              ; preds = %346
  %354 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %355 = call i32 @gp2ap020a00f_als_enabled(%struct.gp2ap020a00f_data* %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %363, label %357

357:                                              ; preds = %353
  %358 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %359 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @GP2AP020A00F_OPMODE_PS, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %366

363:                                              ; preds = %357, %353
  %364 = load i32, i32* @EBUSY, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %3, align 4
  br label %412

366:                                              ; preds = %357
  %367 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %368 = call i32 @gp2ap020a00f_prox_detect_enabled(%struct.gp2ap020a00f_data* %367)
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %379, label %370

370:                                              ; preds = %366
  %371 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %372 = load i32, i32* @GP2AP020A00F_OPMODE_PROX_DETECT, align 4
  %373 = call i32 @gp2ap020a00f_set_operation_mode(%struct.gp2ap020a00f_data* %371, i32 %372)
  store i32 %373, i32* %6, align 4
  %374 = load i32, i32* %6, align 4
  %375 = icmp slt i32 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %370
  %377 = load i32, i32* %6, align 4
  store i32 %377, i32* %3, align 4
  br label %412

378:                                              ; preds = %370
  br label %379

379:                                              ; preds = %378, %366
  %380 = load i32, i32* @GP2AP020A00F_FLAG_PROX_FALLING_EV, align 4
  %381 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %382 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %381, i32 0, i32 0
  %383 = call i32 @set_bit(i32 %380, i32* %382)
  %384 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %385 = load i32, i32* @GP2AP020A00F_THRESH_PL, align 4
  %386 = call i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data* %384, i32 %385, i32 1)
  store i32 %386, i32* %6, align 4
  br label %410

387:                                              ; preds = %2
  %388 = load i32, i32* @GP2AP020A00F_FLAG_PROX_FALLING_EV, align 4
  %389 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %390 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %389, i32 0, i32 0
  %391 = call i32 @test_bit(i32 %388, i32* %390)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %394, label %393

393:                                              ; preds = %387
  store i32 0, i32* %3, align 4
  br label %412

394:                                              ; preds = %387
  %395 = load i32, i32* @GP2AP020A00F_FLAG_PROX_FALLING_EV, align 4
  %396 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %397 = getelementptr inbounds %struct.gp2ap020a00f_data, %struct.gp2ap020a00f_data* %396, i32 0, i32 0
  %398 = call i32 @clear_bit(i32 %395, i32* %397)
  %399 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %400 = load i32, i32* @GP2AP020A00F_OPMODE_SHUTDOWN, align 4
  %401 = call i32 @gp2ap020a00f_set_operation_mode(%struct.gp2ap020a00f_data* %399, i32 %400)
  store i32 %401, i32* %6, align 4
  %402 = load i32, i32* %6, align 4
  %403 = icmp slt i32 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %394
  %405 = load i32, i32* %6, align 4
  store i32 %405, i32* %3, align 4
  br label %412

406:                                              ; preds = %394
  %407 = load %struct.gp2ap020a00f_data*, %struct.gp2ap020a00f_data** %4, align 8
  %408 = load i32, i32* @GP2AP020A00F_THRESH_PL, align 4
  %409 = call i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data* %407, i32 %408, i32 0)
  store i32 %409, i32* %6, align 4
  br label %410

410:                                              ; preds = %2, %406, %379, %342, %315, %278, %245, %211, %178, %139, %130, %116, %115, %102, %79, %78, %65, %43, %30, %17
  %411 = load i32, i32* %6, align 4
  store i32 %411, i32* %3, align 4
  br label %412

412:                                              ; preds = %410, %404, %393, %376, %363, %352, %340, %329, %312, %299, %288, %275, %259, %242, %228, %221, %208, %192, %175, %161, %154, %127, %90, %53, %40, %27, %14
  %413 = load i32, i32* %3, align 4
  ret i32 %413
}

declare dso_local i32 @gp2ap020a00f_set_operation_mode(%struct.gp2ap020a00f_data*, i32) #1

declare dso_local i32 @gp2ap020a00f_als_enabled(%struct.gp2ap020a00f_data*) #1

declare dso_local i32 @gp2ap020a00f_alter_opmode(%struct.gp2ap020a00f_data*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @gp2ap020a00f_write_event_threshold(%struct.gp2ap020a00f_data*, i32, i32) #1

declare dso_local i32 @gp2ap020a00f_prox_detect_enabled(%struct.gp2ap020a00f_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
