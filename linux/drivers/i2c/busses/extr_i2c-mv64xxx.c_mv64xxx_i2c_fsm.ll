; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_fsm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_fsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64xxx_i2c_data = type { i64, i32, i32, i8*, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@MV64XXX_I2C_STATE_IDLE = common dso_local global i64 0, align 8
@MV64XXX_I2C_ACTION_SEND_STOP = common dso_local global i8* null, align 8
@MV64XXX_I2C_ACTION_SEND_ADDR_1 = common dso_local global i8* null, align 8
@MV64XXX_I2C_STATE_WAITING_FOR_ADDR_1_ACK = common dso_local global i64 0, align 8
@I2C_M_TEN = common dso_local global i32 0, align 4
@MV64XXX_I2C_ACTION_SEND_ADDR_2 = common dso_local global i8* null, align 8
@MV64XXX_I2C_STATE_WAITING_FOR_ADDR_2_ACK = common dso_local global i8* null, align 8
@MV64XXX_I2C_ACTION_SEND_RESTART = common dso_local global i8* null, align 8
@MV64XXX_I2C_STATE_WAITING_FOR_RESTART = common dso_local global i64 0, align 8
@MV64XXX_I2C_ACTION_SEND_DATA = common dso_local global i8* null, align 8
@MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK = common dso_local global i64 0, align 8
@MV64XXX_I2C_ACTION_CONTINUE = common dso_local global i8* null, align 8
@MV64XXX_I2C_ACTION_RCV_DATA = common dso_local global i8* null, align 8
@MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA = common dso_local global i64 0, align 8
@MV64XXX_I2C_REG_CONTROL_ACK = common dso_local global i32 0, align 4
@MV64XXX_I2C_ACTION_RCV_DATA_STOP = common dso_local global i8* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"mv64xxx_i2c_fsm: Ctlr Error -- state: 0x%x, status: 0x%x, addr: 0x%x, flags: 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv64xxx_i2c_data*, i32)* @mv64xxx_i2c_fsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv64xxx_i2c_fsm(%struct.mv64xxx_i2c_data* %0, i32 %1) #0 {
  %3 = alloca %struct.mv64xxx_i2c_data*, align 8
  %4 = alloca i32, align 4
  store %struct.mv64xxx_i2c_data* %0, %struct.mv64xxx_i2c_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %6 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MV64XXX_I2C_STATE_IDLE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_STOP, align 8
  %12 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %13 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  br label %206

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %178 [
    i32 133, label %16
    i32 134, label %16
    i32 130, label %23
    i32 131, label %41
    i32 132, label %41
    i32 138, label %93
    i32 139, label %111
    i32 136, label %124
    i32 135, label %160
    i32 129, label %167
    i32 128, label %167
    i32 137, label %167
  ]

16:                                               ; preds = %14, %14
  %17 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_ADDR_1, align 8
  %18 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %19 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* @MV64XXX_I2C_STATE_WAITING_FOR_ADDR_1_ACK, align 8
  %21 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %22 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %206

23:                                               ; preds = %14
  %24 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %25 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I2C_M_TEN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_ADDR_2, align 8
  %34 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %35 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** @MV64XXX_I2C_STATE_WAITING_FOR_ADDR_2_ACK, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %39 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %206

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %14, %14, %40
  %42 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %43 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %48 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %46
  %52 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %53 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %51, %41
  %57 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %58 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %63 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61, %56
  %67 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_STOP, align 8
  %68 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %69 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* @MV64XXX_I2C_STATE_IDLE, align 8
  %71 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %72 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %80

73:                                               ; preds = %61
  %74 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_RESTART, align 8
  %75 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %76 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* @MV64XXX_I2C_STATE_WAITING_FOR_RESTART, align 8
  %78 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %79 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %73, %66
  br label %92

81:                                               ; preds = %51, %46
  %82 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_DATA, align 8
  %83 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %84 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load i64, i64* @MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK, align 8
  %86 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %87 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %89 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %81, %80
  br label %206

93:                                               ; preds = %14
  %94 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %95 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %94, i32 0, i32 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @I2C_M_TEN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %93
  %103 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_ADDR_2, align 8
  %104 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %105 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** @MV64XXX_I2C_STATE_WAITING_FOR_ADDR_2_ACK, align 8
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %109 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %206

110:                                              ; preds = %93
  br label %111

111:                                              ; preds = %14, %110
  %112 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %113 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_STOP, align 8
  %118 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %119 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  %120 = load i64, i64* @MV64XXX_I2C_STATE_IDLE, align 8
  %121 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %122 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %206

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %14, %123
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 136
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i8*, i8** @MV64XXX_I2C_ACTION_CONTINUE, align 8
  %129 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %130 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %129, i32 0, i32 3
  store i8* %128, i8** %130, align 8
  br label %139

131:                                              ; preds = %124
  %132 = load i8*, i8** @MV64XXX_I2C_ACTION_RCV_DATA, align 8
  %133 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %134 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  %135 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %136 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %131, %127
  %140 = load i64, i64* @MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA, align 8
  %141 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %142 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %144 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %152, label %147

147:                                              ; preds = %139
  %148 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %149 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %147, %139
  %153 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_ACK, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %156 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %152, %147
  br label %206

160:                                              ; preds = %14
  %161 = load i8*, i8** @MV64XXX_I2C_ACTION_RCV_DATA_STOP, align 8
  %162 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %163 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %162, i32 0, i32 3
  store i8* %161, i8** %163, align 8
  %164 = load i64, i64* @MV64XXX_I2C_STATE_IDLE, align 8
  %165 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %166 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  br label %206

167:                                              ; preds = %14, %14, %14
  %168 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_STOP, align 8
  %169 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %170 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %169, i32 0, i32 3
  store i8* %168, i8** %170, align 8
  %171 = load i64, i64* @MV64XXX_I2C_STATE_IDLE, align 8
  %172 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %173 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  %174 = load i32, i32* @ENXIO, align 4
  %175 = sub nsw i32 0, %174
  %176 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %177 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 4
  br label %206

178:                                              ; preds = %14
  %179 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %180 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %183 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %187 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %186, i32 0, i32 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %192 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %191, i32 0, i32 4
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @dev_err(i32* %181, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %184, i32 %185, i32 %190, i32 %195)
  %197 = load i8*, i8** @MV64XXX_I2C_ACTION_SEND_STOP, align 8
  %198 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %199 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %198, i32 0, i32 3
  store i8* %197, i8** %199, align 8
  %200 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %201 = call i32 @mv64xxx_i2c_hw_init(%struct.mv64xxx_i2c_data* %200)
  %202 = load i32, i32* @EIO, align 4
  %203 = sub nsw i32 0, %202
  %204 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %3, align 8
  %205 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %10, %178, %167, %160, %159, %116, %102, %92, %32, %16
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @mv64xxx_i2c_hw_init(%struct.mv64xxx_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
