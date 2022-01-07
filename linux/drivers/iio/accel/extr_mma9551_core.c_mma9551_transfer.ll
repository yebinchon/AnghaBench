; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551_core.c_mma9551_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551_core.c_mma9551_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.mma9551_mbox_request = type { i32, i32, i32, i32, i32*, i64 }
%struct.mma9551_mbox_response = type { i32, i32, i32, i32, i32* }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"register offset too large\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MMA9551_MAILBOX_CTRL_REGS = common dso_local global i32 0, align 4
@MMA9551_CMD_WRITE_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"i2c write failed\0A\00", align 1
@MMA9551_I2C_READ_RETRIES = common dso_local global i32 0, align 4
@MMA9551_I2C_READ_DELAY = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"i2c read failed\0A\00", align 1
@MMA9551_RESPONSE_COCO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"timed out while waiting for command response\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"app_id mismatch in response got %02x expected %02x\0A\00", align 1
@MMA9551_MCI_ERROR_NONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"read returned error %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"output length mismatch got %d expected %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i32, i32*, i32, i32*, i32)* @mma9551_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9551_transfer(%struct.i2c_client* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mma9551_mbox_request, align 8
  %19 = alloca %struct.mma9551_mbox_response, align 8
  %20 = alloca %struct.i2c_msg, align 8
  %21 = alloca %struct.i2c_msg, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp sge i32 %26, 4096
  br i1 %27, label %28, label %34

28:                                               ; preds = %8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %190

34:                                               ; preds = %8
  %35 = load i32, i32* @MMA9551_MAILBOX_CTRL_REGS, align 4
  %36 = add nsw i32 1, %35
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %22, align 4
  %39 = getelementptr inbounds %struct.mma9551_mbox_request, %struct.mma9551_mbox_request* %18, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds %struct.mma9551_mbox_request, %struct.mma9551_mbox_request* %18, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = ashr i32 %43, 8
  %45 = or i32 %42, %44
  %46 = getelementptr inbounds %struct.mma9551_mbox_request, %struct.mma9551_mbox_request* %18, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %13, align 4
  %48 = getelementptr inbounds %struct.mma9551_mbox_request, %struct.mma9551_mbox_request* %18, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @MMA9551_CMD_WRITE_CONFIG, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %34
  %53 = load i32, i32* %15, align 4
  %54 = getelementptr inbounds %struct.mma9551_mbox_request, %struct.mma9551_mbox_request* %18, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  br label %58

55:                                               ; preds = %34
  %56 = load i32, i32* %17, align 4
  %57 = getelementptr inbounds %struct.mma9551_mbox_request, %struct.mma9551_mbox_request* %18, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.mma9551_mbox_request, %struct.mma9551_mbox_request* %18, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @memcpy(i32* %63, i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 3
  store i32 %70, i32* %71, align 8
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 2
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* %22, align 4
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  %75 = bitcast %struct.mma9551_mbox_request* %18 to i32*
  %76 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 1
  store i32* %75, i32** %76, align 8
  %77 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @i2c_transfer(i32 %79, %struct.i2c_msg* %21, i32 1)
  store i32 %80, i32* %24, align 4
  %81 = load i32, i32* %24, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %67
  %84 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* %24, align 4
  store i32 %87, i32* %9, align 4
  br label %190

88:                                               ; preds = %67
  %89 = load i32, i32* @MMA9551_I2C_READ_RETRIES, align 4
  store i32 %89, i32* %25, align 4
  br label %90

90:                                               ; preds = %121, %88
  %91 = load i32, i32* @MMA9551_I2C_READ_DELAY, align 4
  %92 = call i32 @udelay(i32 %91)
  %93 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 3
  store i32 %95, i32* %96, align 8
  %97 = load i64, i64* @I2C_M_RD, align 8
  %98 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 2
  store i64 %97, i64* %98, align 8
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  store i32 24, i32* %99, align 8
  %100 = bitcast %struct.mma9551_mbox_response* %19 to i32*
  %101 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 1
  store i32* %100, i32** %101, align 8
  %102 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @i2c_transfer(i32 %104, %struct.i2c_msg* %20, i32 1)
  store i32 %105, i32* %24, align 4
  %106 = load i32, i32* %24, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %90
  %109 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 0
  %111 = call i32 (i32*, i8*, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* %24, align 4
  store i32 %112, i32* %9, align 4
  br label %190

113:                                              ; preds = %90
  %114 = getelementptr inbounds %struct.mma9551_mbox_response, %struct.mma9551_mbox_response* %19, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @MMA9551_RESPONSE_COCO, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %125

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %25, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %25, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %90, label %125

125:                                              ; preds = %121, %119
  %126 = load i32, i32* %25, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %130 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %129, i32 0, i32 0
  %131 = call i32 (i32*, i8*, ...) @dev_err(i32* %130, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %132 = load i32, i32* @ETIMEDOUT, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %9, align 4
  br label %190

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.mma9551_mbox_response, %struct.mma9551_mbox_response* %19, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %141 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.mma9551_mbox_response, %struct.mma9551_mbox_response* %19, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i32 (i32*, i8*, ...) @dev_err(i32* %141, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %143, i32 %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %9, align 4
  br label %190

148:                                              ; preds = %134
  %149 = getelementptr inbounds %struct.mma9551_mbox_response, %struct.mma9551_mbox_response* %19, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @MMA9551_RESPONSE_COCO, align 4
  %152 = xor i32 %151, -1
  %153 = and i32 %150, %152
  store i32 %153, i32* %23, align 4
  %154 = load i32, i32* %23, align 4
  %155 = load i32, i32* @MMA9551_MCI_ERROR_NONE, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %148
  %158 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %159 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %158, i32 0, i32 0
  %160 = load i32, i32* %23, align 4
  %161 = call i32 (i32*, i8*, ...) @dev_err(i32* %159, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %9, align 4
  br label %190

164:                                              ; preds = %148
  %165 = getelementptr inbounds %struct.mma9551_mbox_response, %struct.mma9551_mbox_response* %19, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds %struct.mma9551_mbox_response, %struct.mma9551_mbox_response* %19, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %166, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %164
  %171 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %172 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.mma9551_mbox_response, %struct.mma9551_mbox_response* %19, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds %struct.mma9551_mbox_response, %struct.mma9551_mbox_response* %19, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32*, i8*, ...) @dev_err(i32* %172, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %174, i32 %176)
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %9, align 4
  br label %190

180:                                              ; preds = %164
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32*, i32** %16, align 8
  %185 = getelementptr inbounds %struct.mma9551_mbox_response, %struct.mma9551_mbox_response* %19, i32 0, i32 4
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %17, align 4
  %188 = call i32 @memcpy(i32* %184, i32* %186, i32 %187)
  br label %189

189:                                              ; preds = %183, %180
  store i32 0, i32* %9, align 4
  br label %190

190:                                              ; preds = %189, %170, %157, %139, %128, %108, %83, %28
  %191 = load i32, i32* %9, align 4
  ret i32 %191
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
