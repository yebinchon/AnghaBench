; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.dw_hdmi = type { i32, %struct.dw_hdmi_i2c* }
%struct.dw_hdmi_i2c = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"xfer: num: %d, addr: %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"unsupported transfer %d/%d, no data\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@HDMI_IH_MUTE_I2CM_STAT0 = common dso_local global i32 0, align 4
@HDMI_I2CM_SLAVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"xfer: num: %d/%d, len: %d, flags: %#x\0A\00", align 1
@DDC_SEGMENT_ADDR = common dso_local global i32 0, align 4
@HDMI_I2CM_SEGADDR = common dso_local global i32 0, align 4
@HDMI_I2CM_SEGPTR = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@HDMI_IH_I2CM_STAT0_ERROR = common dso_local global i32 0, align 4
@HDMI_IH_I2CM_STAT0_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dw_hdmi_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dw_hdmi*, align 8
  %9 = alloca %struct.dw_hdmi_i2c*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %14 = call %struct.dw_hdmi* @i2c_get_adapdata(%struct.i2c_adapter* %13)
  store %struct.dw_hdmi* %14, %struct.dw_hdmi** %8, align 8
  %15 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  %16 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %15, i32 0, i32 1
  %17 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %16, align 8
  store %struct.dw_hdmi_i2c* %17, %struct.dw_hdmi_i2c** %9, align 8
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i64 0
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  %23 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %51, %3
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i64 %35
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  %42 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %191

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %9, align 8
  %56 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %55, i32 0, i32 2
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  %59 = load i32, i32* @HDMI_IH_MUTE_I2CM_STAT0, align 4
  %60 = call i32 @hdmi_writeb(%struct.dw_hdmi* %58, i32 0, i32 %59)
  %61 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @HDMI_I2CM_SLAVE, align 4
  %64 = call i32 @hdmi_writeb(%struct.dw_hdmi* %61, i32 %62, i32 %63)
  %65 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %9, align 8
  %66 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %65, i32 0, i32 0
  store i32 0, i32* %66, align 4
  %67 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %9, align 8
  %68 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %172, %54
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %175

73:                                               ; preds = %69
  %74 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  %75 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %80, i64 %82
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %86, i64 %88
  %90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79, i32 %85, i32 %91)
  %93 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %93, i64 %95
  %97 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @DDC_SEGMENT_ADDR, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %126

101:                                              ; preds = %73
  %102 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %102, i64 %104
  %106 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %126

109:                                              ; preds = %101
  %110 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %9, align 8
  %111 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %110, i32 0, i32 1
  store i32 1, i32* %111, align 4
  %112 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  %113 = load i32, i32* @DDC_SEGMENT_ADDR, align 4
  %114 = load i32, i32* @HDMI_I2CM_SEGADDR, align 4
  %115 = call i32 @hdmi_writeb(%struct.dw_hdmi* %112, i32 %113, i32 %114)
  %116 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  %117 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i64 %119
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @HDMI_I2CM_SEGPTR, align 4
  %125 = call i32 @hdmi_writeb(%struct.dw_hdmi* %116, i32 %123, i32 %124)
  br label %167

126:                                              ; preds = %101, %73
  %127 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %127, i64 %129
  %131 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @I2C_M_RD, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %126
  %137 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  %138 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %138, i64 %140
  %142 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %144, i64 %146
  %148 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dw_hdmi_i2c_read(%struct.dw_hdmi* %137, i32* %143, i32 %149)
  store i32 %150, i32* %12, align 4
  br label %166

151:                                              ; preds = %126
  %152 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  %153 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %153, i64 %155
  %157 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %159, i64 %161
  %163 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @dw_hdmi_i2c_write(%struct.dw_hdmi* %152, i32* %158, i32 %164)
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %151, %136
  br label %167

167:                                              ; preds = %166, %109
  %168 = load i32, i32* %12, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %175

171:                                              ; preds = %167
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %69

175:                                              ; preds = %170, %69
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %12, align 4
  br label %180

180:                                              ; preds = %178, %175
  %181 = load %struct.dw_hdmi*, %struct.dw_hdmi** %8, align 8
  %182 = load i32, i32* @HDMI_IH_I2CM_STAT0_ERROR, align 4
  %183 = load i32, i32* @HDMI_IH_I2CM_STAT0_DONE, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @HDMI_IH_MUTE_I2CM_STAT0, align 4
  %186 = call i32 @hdmi_writeb(%struct.dw_hdmi* %181, i32 %184, i32 %185)
  %187 = load %struct.dw_hdmi_i2c*, %struct.dw_hdmi_i2c** %9, align 8
  %188 = getelementptr inbounds %struct.dw_hdmi_i2c, %struct.dw_hdmi_i2c* %187, i32 0, i32 2
  %189 = call i32 @mutex_unlock(i32* %188)
  %190 = load i32, i32* %12, align 4
  store i32 %190, i32* %4, align 4
  br label %191

191:                                              ; preds = %180, %40
  %192 = load i32, i32* %4, align 4
  ret i32 %192
}

declare dso_local %struct.dw_hdmi* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

declare dso_local i32 @dw_hdmi_i2c_read(%struct.dw_hdmi*, i32*, i32) #1

declare dso_local i32 @dw_hdmi_i2c_write(%struct.dw_hdmi*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
