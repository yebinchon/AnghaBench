; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mpc.c_mpc_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mpc.c_mpc_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }
%struct.mpc_i2c = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@MPC_I2C_SR = common dso_local global i64 0, align 8
@CSR_MBB = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Interrupted\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@CSR_MCF = common dso_local global i32 0, align 4
@CSR_RXAK = common dso_local global i32 0, align 4
@CSR_MAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Doing %s %d bytes to 0x%02x - %d of %d messages\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@I2C_M_RECV_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @mpc_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mpc_i2c*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %16 = load i64, i64* @jiffies, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %18 = call %struct.mpc_i2c* @i2c_get_adapdata(%struct.i2c_adapter* %17)
  store %struct.mpc_i2c* %18, %struct.mpc_i2c** %12, align 8
  %19 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %20 = call i32 @mpc_i2c_start(%struct.mpc_i2c* %19)
  br label %21

21:                                               ; preds = %86, %3
  %22 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %23 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MPC_I2C_SR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readb(i64 %26)
  %28 = load i32, i32* @CSR_MBB, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %88

31:                                               ; preds = %21
  %32 = load i32, i32* @current, align 4
  %33 = call i64 @signal_pending(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %37 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, ...) @dev_dbg(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %41 = call i32 @writeccr(%struct.mpc_i2c* %40, i32 0)
  %42 = load i32, i32* @EINTR, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %243

44:                                               ; preds = %31
  %45 = load i64, i64* @jiffies, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @HZ, align 8
  %48 = add i64 %46, %47
  %49 = call i64 @time_after(i64 %45, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %44
  %52 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %53 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MPC_I2C_SR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @readb(i64 %56)
  store i32 %57, i32* %13, align 4
  %58 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %59 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, ...) @dev_dbg(i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @CSR_MCF, align 4
  %64 = load i32, i32* @CSR_MBB, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @CSR_RXAK, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %62, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %51
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @CSR_MAL, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %76 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MPC_I2C_SR, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writeb(i32 %74, i64 %79)
  %81 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %82 = call i32 @mpc_i2c_fixup(%struct.mpc_i2c* %81)
  br label %83

83:                                               ; preds = %70, %51
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %243

86:                                               ; preds = %44
  %87 = call i32 (...) @schedule()
  br label %21

88:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %173, %88
  %90 = load i32, i32* %10, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %93, %94
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi i1 [ false, %89 ], [ %95, %92 ]
  br i1 %97, label %98, label %176

98:                                               ; preds = %96
  %99 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %99, i64 %101
  store %struct.i2c_msg* %102, %struct.i2c_msg** %8, align 8
  %103 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %104 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @I2C_M_RD, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %114 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %115 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %118 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* %7, align 4
  %123 = call i32 (i32, i8*, ...) @dev_dbg(i32 %105, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %113, i32 %116, i32 %119, i32 %121, i32 %122)
  %124 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %125 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @I2C_M_RD, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %159

130:                                              ; preds = %98
  %131 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %132 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %135 = and i32 %133, %134
  store i32 %135, i32* %14, align 4
  %136 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %137 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %138 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %144 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i32 @mpc_read(%struct.mpc_i2c* %136, i32 %139, i32 %142, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %130
  %152 = load i32, i32* %10, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %157 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %154, %151, %130
  br label %172

159:                                              ; preds = %98
  %160 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %161 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %162 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %165 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %168 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @mpc_write(%struct.mpc_i2c* %160, i32 %163, i32 %166, i32 %169, i32 %170)
  store i32 %171, i32* %10, align 4
  br label %172

172:                                              ; preds = %159, %158
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %89

176:                                              ; preds = %96
  %177 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %178 = call i32 @mpc_i2c_stop(%struct.mpc_i2c* %177)
  %179 = load i64, i64* @jiffies, align 8
  store i64 %179, i64* %11, align 8
  br label %180

180:                                              ; preds = %232, %176
  %181 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %182 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @MPC_I2C_SR, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @readb(i64 %185)
  %187 = load i32, i32* @CSR_MBB, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %234

190:                                              ; preds = %180
  %191 = load i64, i64* @jiffies, align 8
  %192 = load i64, i64* %11, align 8
  %193 = load i64, i64* @HZ, align 8
  %194 = add i64 %192, %193
  %195 = call i64 @time_after(i64 %191, i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %232

197:                                              ; preds = %190
  %198 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %199 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @MPC_I2C_SR, align 8
  %202 = add nsw i64 %200, %201
  %203 = call i32 @readb(i64 %202)
  store i32 %203, i32* %15, align 4
  %204 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %205 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i32, i8*, ...) @dev_dbg(i32 %206, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %208 = load i32, i32* %15, align 4
  %209 = load i32, i32* @CSR_MCF, align 4
  %210 = load i32, i32* @CSR_MBB, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @CSR_RXAK, align 4
  %213 = or i32 %211, %212
  %214 = and i32 %208, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %197
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* @CSR_MAL, align 4
  %219 = xor i32 %218, -1
  %220 = and i32 %217, %219
  %221 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %222 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @MPC_I2C_SR, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writeb(i32 %220, i64 %225)
  %227 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %228 = call i32 @mpc_i2c_fixup(%struct.mpc_i2c* %227)
  br label %229

229:                                              ; preds = %216, %197
  %230 = load i32, i32* @EIO, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %4, align 4
  br label %243

232:                                              ; preds = %190
  %233 = call i32 (...) @cond_resched()
  br label %180

234:                                              ; preds = %180
  %235 = load i32, i32* %10, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %234
  %238 = load i32, i32* %10, align 4
  br label %241

239:                                              ; preds = %234
  %240 = load i32, i32* %7, align 4
  br label %241

241:                                              ; preds = %239, %237
  %242 = phi i32 [ %238, %237 ], [ %240, %239 ]
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %241, %229, %83, %35
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local %struct.mpc_i2c* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mpc_i2c_start(%struct.mpc_i2c*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @writeccr(%struct.mpc_i2c*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @mpc_i2c_fixup(%struct.mpc_i2c*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mpc_read(%struct.mpc_i2c*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mpc_write(%struct.mpc_i2c*, i32, i32, i32, i32) #1

declare dso_local i32 @mpc_i2c_stop(%struct.mpc_i2c*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
