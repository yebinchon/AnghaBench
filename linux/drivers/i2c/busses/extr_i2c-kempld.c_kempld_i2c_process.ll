; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-kempld.c_kempld_i2c_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-kempld.c_kempld_i2c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kempld_i2c_data = type { i64, i32, i64, %struct.i2c_msg*, %struct.kempld_device_data* }
%struct.i2c_msg = type { i32, i32, i32*, i32 }
%struct.kempld_device_data = type { i32 }

@KEMPLD_I2C_STAT = common dso_local global i32 0, align 4
@I2C_STAT_TIP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@STATE_DONE = common dso_local global i64 0, align 8
@STATE_ERROR = common dso_local global i64 0, align 8
@KEMPLD_I2C_CMD = common dso_local global i32 0, align 4
@I2C_CMD_IACK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@I2C_STAT_ARBLOST = common dso_local global i32 0, align 4
@I2C_CMD_STOP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@STATE_INIT = common dso_local global i64 0, align 8
@I2C_STAT_BUSY = common dso_local global i32 0, align 4
@STATE_ADDR = common dso_local global i64 0, align 8
@I2C_M_TEN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@STATE_ADDR10 = common dso_local global i64 0, align 8
@STATE_START = common dso_local global i64 0, align 8
@KEMPLD_I2C_DATA = common dso_local global i32 0, align 4
@I2C_CMD_START = common dso_local global i32 0, align 4
@I2C_CMD_WRITE = common dso_local global i32 0, align 4
@STATE_WRITE = common dso_local global i64 0, align 8
@STATE_READ = common dso_local global i64 0, align 8
@I2C_STAT_NACK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@I2C_CMD_READ_NACK = common dso_local global i32 0, align 4
@I2C_CMD_READ_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kempld_i2c_data*)* @kempld_i2c_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_i2c_process(%struct.kempld_i2c_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kempld_i2c_data*, align 8
  %4 = alloca %struct.kempld_device_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  store %struct.kempld_i2c_data* %0, %struct.kempld_i2c_data** %3, align 8
  %8 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %9 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %8, i32 0, i32 4
  %10 = load %struct.kempld_device_data*, %struct.kempld_device_data** %9, align 8
  store %struct.kempld_device_data* %10, %struct.kempld_device_data** %4, align 8
  %11 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %12 = load i32, i32* @KEMPLD_I2C_STAT, align 4
  %13 = call i8* @kempld_read8(%struct.kempld_device_data* %11, i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %16 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %15, i32 0, i32 3
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %16, align 8
  store %struct.i2c_msg* %17, %struct.i2c_msg** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @I2C_STAT_TIP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %324

25:                                               ; preds = %1
  %26 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %27 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @STATE_DONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %33 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @STATE_ERROR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31, %25
  %38 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %39 = load i32, i32* @KEMPLD_I2C_CMD, align 4
  %40 = load i32, i32* @I2C_CMD_IACK, align 4
  %41 = call i32 @kempld_write8(%struct.kempld_device_data* %38, i32 %39, i32 %40)
  %42 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %43 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @STATE_ERROR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %324

50:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %324

51:                                               ; preds = %31
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @I2C_STAT_ARBLOST, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i64, i64* @STATE_ERROR, align 8
  %58 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %59 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %61 = load i32, i32* @KEMPLD_I2C_CMD, align 4
  %62 = load i32, i32* @I2C_CMD_STOP, align 4
  %63 = call i32 @kempld_write8(%struct.kempld_device_data* %60, i32 %61, i32 %62)
  %64 = load i32, i32* @EAGAIN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %324

66:                                               ; preds = %51
  %67 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %68 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @STATE_INIT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @I2C_STAT_BUSY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %324

80:                                               ; preds = %72
  %81 = load i64, i64* @STATE_ADDR, align 8
  %82 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %83 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %80, %66
  %85 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %86 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @STATE_ADDR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %140

90:                                               ; preds = %84
  %91 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %92 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %91, i32 0, i32 3
  %93 = load %struct.i2c_msg*, %struct.i2c_msg** %92, align 8
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @I2C_M_TEN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %90
  %100 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %101 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %100, i32 0, i32 3
  %102 = load %struct.i2c_msg*, %struct.i2c_msg** %101, align 8
  %103 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 7
  %106 = and i32 %105, 6
  %107 = or i32 240, %106
  store i32 %107, i32* %7, align 4
  %108 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %109 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %108, i32 0, i32 3
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %109, align 8
  %111 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @I2C_M_RD, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 1, i32 0
  %118 = load i32, i32* %7, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %7, align 4
  %120 = load i64, i64* @STATE_ADDR10, align 8
  %121 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %122 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  br label %131

123:                                              ; preds = %90
  %124 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %125 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %124, i32 0, i32 3
  %126 = load %struct.i2c_msg*, %struct.i2c_msg** %125, align 8
  %127 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i64, i64* @STATE_START, align 8
  %129 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %130 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %123, %99
  %132 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %133 = load i32, i32* @KEMPLD_I2C_DATA, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @kempld_write8(%struct.kempld_device_data* %132, i32 %133, i32 %134)
  %136 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %137 = load i32, i32* @KEMPLD_I2C_CMD, align 4
  %138 = load i32, i32* @I2C_CMD_START, align 4
  %139 = call i32 @kempld_write8(%struct.kempld_device_data* %136, i32 %137, i32 %138)
  store i32 0, i32* %2, align 4
  br label %324

140:                                              ; preds = %84
  %141 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %142 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @STATE_ADDR10, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %163

146:                                              ; preds = %140
  %147 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %148 = load i32, i32* @KEMPLD_I2C_DATA, align 4
  %149 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %150 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %149, i32 0, i32 3
  %151 = load %struct.i2c_msg*, %struct.i2c_msg** %150, align 8
  %152 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 255
  %155 = call i32 @kempld_write8(%struct.kempld_device_data* %147, i32 %148, i32 %154)
  %156 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %157 = load i32, i32* @KEMPLD_I2C_CMD, align 4
  %158 = load i32, i32* @I2C_CMD_WRITE, align 4
  %159 = call i32 @kempld_write8(%struct.kempld_device_data* %156, i32 %157, i32 %158)
  %160 = load i64, i64* @STATE_START, align 8
  %161 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %162 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  store i32 0, i32* %2, align 4
  br label %324

163:                                              ; preds = %140
  %164 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %165 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @STATE_START, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %175, label %169

169:                                              ; preds = %163
  %170 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %171 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @STATE_WRITE, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %205

175:                                              ; preds = %169, %163
  %176 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %177 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @I2C_M_RD, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %175
  %183 = load i64, i64* @STATE_READ, align 8
  br label %186

184:                                              ; preds = %175
  %185 = load i64, i64* @STATE_WRITE, align 8
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i64 [ %183, %182 ], [ %185, %184 ]
  %188 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %189 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @I2C_STAT_NACK, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %186
  %195 = load i64, i64* @STATE_ERROR, align 8
  %196 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %197 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  %198 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %199 = load i32, i32* @KEMPLD_I2C_CMD, align 4
  %200 = load i32, i32* @I2C_CMD_STOP, align 4
  %201 = call i32 @kempld_write8(%struct.kempld_device_data* %198, i32 %199, i32 %200)
  %202 = load i32, i32* @ENXIO, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %2, align 4
  br label %324

204:                                              ; preds = %186
  br label %219

205:                                              ; preds = %169
  %206 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %207 = load i32, i32* @KEMPLD_I2C_DATA, align 4
  %208 = call i8* @kempld_read8(%struct.kempld_device_data* %206, i32 %207)
  %209 = ptrtoint i8* %208 to i32
  %210 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %211 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %214 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %214, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %212, i64 %217
  store i32 %209, i32* %218, align 4
  br label %219

219:                                              ; preds = %205, %204
  %220 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %221 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %224 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = icmp sge i32 %222, %225
  br i1 %226, label %227, label %281

227:                                              ; preds = %219
  %228 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %229 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, -1
  store i64 %231, i64* %229, align 8
  %232 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %233 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %232, i32 0, i32 3
  %234 = load %struct.i2c_msg*, %struct.i2c_msg** %233, align 8
  %235 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %234, i32 1
  store %struct.i2c_msg* %235, %struct.i2c_msg** %233, align 8
  %236 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %237 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %236, i32 0, i32 1
  store i32 0, i32* %237, align 8
  %238 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %239 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %238, i32 0, i32 3
  %240 = load %struct.i2c_msg*, %struct.i2c_msg** %239, align 8
  store %struct.i2c_msg* %240, %struct.i2c_msg** %6, align 8
  %241 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %242 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %272

245:                                              ; preds = %227
  %246 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %247 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @I2C_M_NOSTART, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %245
  %253 = load i64, i64* @STATE_ADDR, align 8
  %254 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %255 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %254, i32 0, i32 0
  store i64 %253, i64* %255, align 8
  store i32 0, i32* %2, align 4
  br label %324

256:                                              ; preds = %245
  %257 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %258 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @I2C_M_RD, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %256
  %264 = load i64, i64* @STATE_READ, align 8
  br label %267

265:                                              ; preds = %256
  %266 = load i64, i64* @STATE_WRITE, align 8
  br label %267

267:                                              ; preds = %265, %263
  %268 = phi i64 [ %264, %263 ], [ %266, %265 ]
  %269 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %270 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %269, i32 0, i32 0
  store i64 %268, i64* %270, align 8
  br label %271

271:                                              ; preds = %267
  br label %280

272:                                              ; preds = %227
  %273 = load i64, i64* @STATE_DONE, align 8
  %274 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %275 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %274, i32 0, i32 0
  store i64 %273, i64* %275, align 8
  %276 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %277 = load i32, i32* @KEMPLD_I2C_CMD, align 4
  %278 = load i32, i32* @I2C_CMD_STOP, align 4
  %279 = call i32 @kempld_write8(%struct.kempld_device_data* %276, i32 %277, i32 %278)
  store i32 0, i32* %2, align 4
  br label %324

280:                                              ; preds = %271
  br label %281

281:                                              ; preds = %280, %219
  %282 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %283 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @STATE_READ, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %305

287:                                              ; preds = %281
  %288 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %289 = load i32, i32* @KEMPLD_I2C_CMD, align 4
  %290 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %291 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %294 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = sub nsw i32 %295, 1
  %297 = icmp eq i32 %292, %296
  br i1 %297, label %298, label %300

298:                                              ; preds = %287
  %299 = load i32, i32* @I2C_CMD_READ_NACK, align 4
  br label %302

300:                                              ; preds = %287
  %301 = load i32, i32* @I2C_CMD_READ_ACK, align 4
  br label %302

302:                                              ; preds = %300, %298
  %303 = phi i32 [ %299, %298 ], [ %301, %300 ]
  %304 = call i32 @kempld_write8(%struct.kempld_device_data* %288, i32 %289, i32 %303)
  br label %323

305:                                              ; preds = %281
  %306 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %307 = load i32, i32* @KEMPLD_I2C_DATA, align 4
  %308 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %309 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %308, i32 0, i32 2
  %310 = load i32*, i32** %309, align 8
  %311 = load %struct.kempld_i2c_data*, %struct.kempld_i2c_data** %3, align 8
  %312 = getelementptr inbounds %struct.kempld_i2c_data, %struct.kempld_i2c_data* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %312, align 8
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds i32, i32* %310, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @kempld_write8(%struct.kempld_device_data* %306, i32 %307, i32 %317)
  %319 = load %struct.kempld_device_data*, %struct.kempld_device_data** %4, align 8
  %320 = load i32, i32* @KEMPLD_I2C_CMD, align 4
  %321 = load i32, i32* @I2C_CMD_WRITE, align 4
  %322 = call i32 @kempld_write8(%struct.kempld_device_data* %319, i32 %320, i32 %321)
  br label %323

323:                                              ; preds = %305, %302
  store i32 0, i32* %2, align 4
  br label %324

324:                                              ; preds = %323, %272, %252, %194, %146, %131, %77, %56, %50, %47, %22
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local i8* @kempld_read8(%struct.kempld_device_data*, i32) #1

declare dso_local i32 @kempld_write8(%struct.kempld_device_data*, i32, i32) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
