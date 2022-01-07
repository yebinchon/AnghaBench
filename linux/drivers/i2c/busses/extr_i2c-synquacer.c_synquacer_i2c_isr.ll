; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-synquacer.c_synquacer_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synquacer_i2c = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i8*, i32 }

@SYNQUACER_I2C_REG_BCR = common dso_local global i64 0, align 8
@SYNQUACER_I2C_REG_BSR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"bsr:0x%02x, bcr:0x%02x\0A\00", align 1
@SYNQUACER_I2C_BCR_BER = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"bus error\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@SYNQUACER_I2C_BSR_AL = common dso_local global i8 0, align 1
@SYNQUACER_I2C_BCR_MSS = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"arbitration lost\0A\00", align 1
@SYNQUACER_I2C_BSR_LRB = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"ack was not received\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"WRITE: No Ack\0A\00", align 1
@SYNQUACER_I2C_REG_DAR = common dso_local global i64 0, align 8
@SYNQUACER_I2C_BCR_BEIE = common dso_local global i8 0, align 1
@SYNQUACER_I2C_BCR_INTE = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"WRITE: Next Message\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"restart error (%d)\0A\00", align 1
@SYNQUACER_I2C_BSR_FBT = common dso_local global i8 0, align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"address:0x%02x. ignore it.\0A\00", align 1
@SYNQUACER_I2C_BCR_ACK = common dso_local global i8 0, align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"READ: Send Stop\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"READ: Next Transfer\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"called in err STATE (%d)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @synquacer_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synquacer_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.synquacer_i2c*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.synquacer_i2c*
  store %struct.synquacer_i2c* %11, %struct.synquacer_i2c** %5, align 8
  %12 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %13 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SYNQUACER_I2C_REG_BCR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call zeroext i8 @readb(i64 %16)
  store i8 %17, i8* %8, align 1
  %18 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %19 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SYNQUACER_I2C_REG_BSR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call zeroext i8 @readb(i64 %22)
  store i8 %23, i8* %7, align 1
  %24 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %25 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i8, i8* %7, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 (i32, i8*, ...) @dev_dbg(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @SYNQUACER_I2C_BCR_BER, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %2
  %39 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %40 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @synquacer_i2c_stop(%struct.synquacer_i2c* %43, i32 %45)
  br label %355

47:                                               ; preds = %2
  %48 = load i8, i8* %7, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @SYNQUACER_I2C_BSR_AL, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load i8, i8* %8, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @SYNQUACER_I2C_BCR_MSS, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %54, %47
  %62 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %63 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, ...) @dev_dbg(i32 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = sub nsw i32 0, %67
  %69 = call i32 @synquacer_i2c_stop(%struct.synquacer_i2c* %66, i32 %68)
  br label %355

70:                                               ; preds = %54
  %71 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %72 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %346 [
    i32 129, label %74
    i32 128, label %126
    i32 130, label %222
  ]

74:                                               ; preds = %70
  %75 = load i8, i8* %7, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @SYNQUACER_I2C_BSR_LRB, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %83 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, ...) @dev_dbg(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %87 = load i32, i32* @EAGAIN, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i32 @synquacer_i2c_stop(%struct.synquacer_i2c* %86, i32 %88)
  br label %355

90:                                               ; preds = %74
  %91 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %92 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @I2C_M_RD, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %101 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %100, i32 0, i32 0
  store i32 130, i32* %101, align 8
  br label %105

102:                                              ; preds = %90
  %103 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %104 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %103, i32 0, i32 0
  store i32 128, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %107 = call i32 @is_lastmsg(%struct.synquacer_i2c* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %111 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %110, i32 0, i32 3
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %118 = call i32 @synquacer_i2c_stop(%struct.synquacer_i2c* %117, i32 0)
  br label %355

119:                                              ; preds = %109, %105
  %120 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %121 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 130
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %256

125:                                              ; preds = %119
  br label %126

126:                                              ; preds = %70, %125
  %127 = load i8, i8* %7, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* @SYNQUACER_I2C_BSR_LRB, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %126
  %134 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %135 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i32, i8*, ...) @dev_dbg(i32 %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %138 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %139 = load i32, i32* @EAGAIN, align 4
  %140 = sub nsw i32 0, %139
  %141 = call i32 @synquacer_i2c_stop(%struct.synquacer_i2c* %138, i32 %140)
  br label %355

142:                                              ; preds = %126
  %143 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %144 = call i32 @is_msgend(%struct.synquacer_i2c* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %180, label %146

146:                                              ; preds = %142
  %147 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %148 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %147, i32 0, i32 3
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %153 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %151, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %160 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %159, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SYNQUACER_I2C_REG_DAR, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writeb(i8 zeroext %158, i64 %163)
  %165 = load i8, i8* @SYNQUACER_I2C_BCR_BEIE, align 1
  %166 = zext i8 %165 to i32
  %167 = load i8, i8* @SYNQUACER_I2C_BCR_MSS, align 1
  %168 = zext i8 %167 to i32
  %169 = or i32 %166, %168
  %170 = load i8, i8* @SYNQUACER_I2C_BCR_INTE, align 1
  %171 = zext i8 %170 to i32
  %172 = or i32 %169, %171
  %173 = trunc i32 %172 to i8
  %174 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %175 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @SYNQUACER_I2C_REG_BCR, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @writeb(i8 zeroext %173, i64 %178)
  br label %354

180:                                              ; preds = %142
  %181 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %182 = call i32 @is_lastmsg(%struct.synquacer_i2c* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %186 = call i32 @synquacer_i2c_stop(%struct.synquacer_i2c* %185, i32 0)
  br label %354

187:                                              ; preds = %180
  %188 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %189 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 (i32, i8*, ...) @dev_dbg(i32 %190, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %192 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %193 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %192, i32 0, i32 5
  store i32 0, i32* %193, align 4
  %194 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %195 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 8
  %198 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %199 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %198, i32 0, i32 3
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 1
  store %struct.TYPE_2__* %201, %struct.TYPE_2__** %199, align 8
  %202 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %203 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %204 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %203, i32 0, i32 3
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = call i32 @synquacer_i2c_master_start(%struct.synquacer_i2c* %202, %struct.TYPE_2__* %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %187
  %210 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %211 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = call i32 (i32, i8*, ...) @dev_dbg(i32 %212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %213)
  %215 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %216 = load i32, i32* @EAGAIN, align 4
  %217 = sub nsw i32 0, %216
  %218 = call i32 @synquacer_i2c_stop(%struct.synquacer_i2c* %215, i32 %217)
  br label %354

219:                                              ; preds = %187
  %220 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %221 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %220, i32 0, i32 0
  store i32 129, i32* %221, align 8
  br label %354

222:                                              ; preds = %70
  %223 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %224 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %223, i32 0, i32 6
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @SYNQUACER_I2C_REG_DAR, align 8
  %227 = add nsw i64 %225, %226
  %228 = call zeroext i8 @readb(i64 %227)
  store i8 %228, i8* %6, align 1
  %229 = load i8, i8* %7, align 1
  %230 = zext i8 %229 to i32
  %231 = load i8, i8* @SYNQUACER_I2C_BSR_FBT, align 1
  %232 = zext i8 %231 to i32
  %233 = and i32 %230, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %248, label %235

235:                                              ; preds = %222
  %236 = load i8, i8* %6, align 1
  %237 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %238 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %237, i32 0, i32 3
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %243 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 4
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i8, i8* %241, i64 %246
  store i8 %236, i8* %247, align 1
  br label %255

248:                                              ; preds = %222
  %249 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %250 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i8, i8* %6, align 1
  %253 = zext i8 %252 to i32
  %254 = call i32 (i32, i8*, ...) @dev_dbg(i32 %251, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %253)
  br label %255

255:                                              ; preds = %248, %235
  br label %256

256:                                              ; preds = %255, %124
  %257 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %258 = call i32 @is_msglast(%struct.synquacer_i2c* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %276

260:                                              ; preds = %256
  %261 = load i8, i8* @SYNQUACER_I2C_BCR_MSS, align 1
  %262 = zext i8 %261 to i32
  %263 = load i8, i8* @SYNQUACER_I2C_BCR_BEIE, align 1
  %264 = zext i8 %263 to i32
  %265 = or i32 %262, %264
  %266 = load i8, i8* @SYNQUACER_I2C_BCR_INTE, align 1
  %267 = zext i8 %266 to i32
  %268 = or i32 %265, %267
  %269 = trunc i32 %268 to i8
  %270 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %271 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %270, i32 0, i32 6
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* @SYNQUACER_I2C_REG_BCR, align 8
  %274 = add nsw i64 %272, %273
  %275 = call i32 @writeb(i8 zeroext %269, i64 %274)
  br label %354

276:                                              ; preds = %256
  %277 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %278 = call i32 @is_msgend(%struct.synquacer_i2c* %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %299, label %280

280:                                              ; preds = %276
  %281 = load i8, i8* @SYNQUACER_I2C_BCR_MSS, align 1
  %282 = zext i8 %281 to i32
  %283 = load i8, i8* @SYNQUACER_I2C_BCR_BEIE, align 1
  %284 = zext i8 %283 to i32
  %285 = or i32 %282, %284
  %286 = load i8, i8* @SYNQUACER_I2C_BCR_INTE, align 1
  %287 = zext i8 %286 to i32
  %288 = or i32 %285, %287
  %289 = load i8, i8* @SYNQUACER_I2C_BCR_ACK, align 1
  %290 = zext i8 %289 to i32
  %291 = or i32 %288, %290
  %292 = trunc i32 %291 to i8
  %293 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %294 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %293, i32 0, i32 6
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @SYNQUACER_I2C_REG_BCR, align 8
  %297 = add nsw i64 %295, %296
  %298 = call i32 @writeb(i8 zeroext %292, i64 %297)
  br label %354

299:                                              ; preds = %276
  %300 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %301 = call i32 @is_lastmsg(%struct.synquacer_i2c* %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %310

303:                                              ; preds = %299
  %304 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %305 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = call i32 (i32, i8*, ...) @dev_dbg(i32 %306, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %308 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %309 = call i32 @synquacer_i2c_stop(%struct.synquacer_i2c* %308, i32 0)
  br label %354

310:                                              ; preds = %299
  %311 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %312 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = call i32 (i32, i8*, ...) @dev_dbg(i32 %313, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %315 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %316 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %315, i32 0, i32 5
  store i32 0, i32* %316, align 4
  %317 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %318 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %318, align 8
  %321 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %322 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %321, i32 0, i32 3
  %323 = load %struct.TYPE_2__*, %struct.TYPE_2__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %323, i32 1
  store %struct.TYPE_2__* %324, %struct.TYPE_2__** %322, align 8
  %325 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %326 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %327 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %326, i32 0, i32 3
  %328 = load %struct.TYPE_2__*, %struct.TYPE_2__** %327, align 8
  %329 = call i32 @synquacer_i2c_master_start(%struct.synquacer_i2c* %325, %struct.TYPE_2__* %328)
  store i32 %329, i32* %9, align 4
  %330 = load i32, i32* %9, align 4
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %342

332:                                              ; preds = %310
  %333 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %334 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* %9, align 4
  %337 = call i32 (i32, i8*, ...) @dev_dbg(i32 %335, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %336)
  %338 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %339 = load i32, i32* @EAGAIN, align 4
  %340 = sub nsw i32 0, %339
  %341 = call i32 @synquacer_i2c_stop(%struct.synquacer_i2c* %338, i32 %340)
  br label %345

342:                                              ; preds = %310
  %343 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %344 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %343, i32 0, i32 0
  store i32 129, i32* %344, align 8
  br label %345

345:                                              ; preds = %342, %332
  br label %354

346:                                              ; preds = %70
  %347 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %348 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %351 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = call i32 (i32, i8*, ...) @dev_err(i32 %349, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %352)
  br label %354

354:                                              ; preds = %346, %345, %303, %280, %260, %219, %209, %184, %146
  br label %355

355:                                              ; preds = %354, %133, %116, %81, %61, %38
  %356 = load %struct.synquacer_i2c*, %struct.synquacer_i2c** %5, align 8
  %357 = getelementptr inbounds %struct.synquacer_i2c, %struct.synquacer_i2c* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @WAIT_PCLK(i32 10, i32 %358)
  %360 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %360
}

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @synquacer_i2c_stop(%struct.synquacer_i2c*, i32) #1

declare dso_local i32 @is_lastmsg(%struct.synquacer_i2c*) #1

declare dso_local i32 @is_msgend(%struct.synquacer_i2c*) #1

declare dso_local i32 @writeb(i8 zeroext, i64) #1

declare dso_local i32 @synquacer_i2c_master_start(%struct.synquacer_i2c*, %struct.TYPE_2__*) #1

declare dso_local i32 @is_msglast(%struct.synquacer_i2c*) #1

declare dso_local i32 @WAIT_PCLK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
