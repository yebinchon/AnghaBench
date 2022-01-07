; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-img-scb.c_img_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32 }
%struct.img_i2c = type { i64, i32, i32, i32, i32, i32, %struct.i2c_msg }

@MODE_SUSPEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"refusing to service transaction in suspended state\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MODE_FATAL = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@SCB_INT_CLEAR_REG = common dso_local global i32 0, align 4
@SCB_CLEAR_REG = common dso_local global i32 0, align 4
@IMG_I2C_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"i2c transfer timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @img_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.img_i2c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.i2c_msg*, align 8
  %14 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %16 = call %struct.img_i2c* @i2c_get_adapdata(%struct.i2c_adapter* %15)
  store %struct.img_i2c* %16, %struct.img_i2c** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %18 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MODE_SUSPEND, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %225

26:                                               ; preds = %3
  %27 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %28 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MODE_FATAL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %225

35:                                               ; preds = %26
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %81, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %36
  %41 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i64 %43
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %40
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i64 %51
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @I2C_M_RD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %225

61:                                               ; preds = %48, %40
  %62 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %62, i64 %64
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %70, i64 %72
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69, %61
  store i32 1, i32* %9, align 4
  br label %80

80:                                               ; preds = %79, %69
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %36

84:                                               ; preds = %36
  %85 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %86 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pm_runtime_get_sync(i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %225

94:                                               ; preds = %84
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %199, %94
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %202

99:                                               ; preds = %95
  %100 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %100, i64 %102
  store %struct.i2c_msg* %103, %struct.i2c_msg** %13, align 8
  %104 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %105 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %104, i32 0, i32 5
  %106 = load i64, i64* %14, align 8
  %107 = call i32 @spin_lock_irqsave(i32* %105, i64 %106)
  %108 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %109 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %108, i32 0, i32 6
  %110 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  %111 = bitcast %struct.i2c_msg* %109 to i8*
  %112 = bitcast %struct.i2c_msg* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 %112, i64 8, i1 false)
  %113 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %114 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %113, i32 0, i32 1
  store i32 0, i32* %114, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %7, align 4
  %117 = sub nsw i32 %116, 1
  %118 = icmp eq i32 %115, %117
  %119 = zext i1 %118 to i32
  %120 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %121 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  %122 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %123 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %122, i32 0, i32 4
  %124 = call i32 @reinit_completion(i32* %123)
  %125 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %126 = load i32, i32* @SCB_INT_CLEAR_REG, align 4
  %127 = call i32 @img_i2c_writel(%struct.img_i2c* %125, i32 %126, i32 -1)
  %128 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %129 = load i32, i32* @SCB_CLEAR_REG, align 4
  %130 = call i32 @img_i2c_writel(%struct.img_i2c* %128, i32 %129, i32 -1)
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %99
  %134 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %135 = call i32 @img_i2c_atomic_start(%struct.img_i2c* %134)
  br label %168

136:                                              ; preds = %99
  %137 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %138 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %139 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = call i32 @img_i2c_transaction_halt(%struct.img_i2c* %137, i32 %143)
  %145 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  %146 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @I2C_M_RD, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %136
  %152 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %153 = call i32 @img_i2c_read(%struct.img_i2c* %152)
  br label %157

154:                                              ; preds = %136
  %155 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %156 = call i32 @img_i2c_write(%struct.img_i2c* %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %159 = call i32 @img_i2c_transaction_halt(%struct.img_i2c* %158, i32 0)
  %160 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %161 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %162 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = call i32 @img_i2c_transaction_halt(%struct.img_i2c* %160, i32 %166)
  br label %168

168:                                              ; preds = %157, %133
  %169 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %170 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %169, i32 0, i32 5
  %171 = load i64, i64* %14, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* %170, i64 %171)
  %173 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %174 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %173, i32 0, i32 4
  %175 = load i32, i32* @IMG_I2C_TIMEOUT, align 4
  %176 = call i64 @wait_for_completion_timeout(i32* %174, i32 %175)
  store i64 %176, i64* %12, align 8
  %177 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %178 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %177, i32 0, i32 3
  %179 = call i32 @del_timer_sync(i32* %178)
  %180 = load i64, i64* %12, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %168
  %183 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %184 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @dev_err(i32 %186, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %188 = load i32, i32* @ETIMEDOUT, align 4
  %189 = sub nsw i32 0, %188
  %190 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %191 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 8
  br label %202

192:                                              ; preds = %168
  %193 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %194 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %202

198:                                              ; preds = %192
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %10, align 4
  br label %95

202:                                              ; preds = %197, %182, %95
  %203 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %204 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @pm_runtime_mark_last_busy(i32 %206)
  %208 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %209 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @pm_runtime_put_autosuspend(i32 %211)
  %213 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %214 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %202
  %218 = load %struct.img_i2c*, %struct.img_i2c** %8, align 8
  %219 = getelementptr inbounds %struct.img_i2c, %struct.img_i2c* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  br label %223

221:                                              ; preds = %202
  %222 = load i32, i32* %7, align 4
  br label %223

223:                                              ; preds = %221, %217
  %224 = phi i32 [ %220, %217 ], [ %222, %221 ]
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %223, %92, %58, %32, %22
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local %struct.img_i2c* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @img_i2c_writel(%struct.img_i2c*, i32, i32) #1

declare dso_local i32 @img_i2c_atomic_start(%struct.img_i2c*) #1

declare dso_local i32 @img_i2c_transaction_halt(%struct.img_i2c*, i32) #1

declare dso_local i32 @img_i2c_read(%struct.img_i2c*) #1

declare dso_local i32 @img_i2c_write(%struct.img_i2c*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
