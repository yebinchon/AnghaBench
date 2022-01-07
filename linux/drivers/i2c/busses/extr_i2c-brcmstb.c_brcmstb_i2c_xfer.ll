; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.brcmstb_i2c_dev = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"msg# %d/%d flg %x buf %x len %d\0A\00", align 1
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@COND_START_STOP = common dso_local global i32 0, align 4
@COND_RESTART = common dso_local global i32 0, align 4
@COND_NOSTOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"NACK for addr %2.2x msg#%d rc = %d\0A\00", align 1
@COND_NOSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @brcmstb_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmstb_i2c_dev*, align 8
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %18 = call %struct.brcmstb_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %17)
  store %struct.brcmstb_i2c_dev* %18, %struct.brcmstb_i2c_dev** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %7, align 8
  %20 = call i32 @brcmstb_i2c_get_xfersz(%struct.brcmstb_i2c_dev* %19)
  store i32 %20, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %169, %3
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %172

25:                                               ; preds = %21
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 %28
  store %struct.i2c_msg* %29, %struct.i2c_msg** %8, align 8
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %13, align 4
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %12, align 8
  %36 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %7, align 8
  %37 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %25
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  br label %56

55:                                               ; preds = %25
  br label %56

56:                                               ; preds = %55, %49
  %57 = phi i32 [ %54, %49 ], [ 48, %55 ]
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %41, i32 %44, i32 %57, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %56
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i64 %70
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @I2C_M_NOSTART, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, i32* @COND_START_STOP, align 4
  %79 = xor i32 %78, -1
  store i32 %79, i32* %15, align 4
  br label %84

80:                                               ; preds = %66, %56
  %81 = load i32, i32* @COND_RESTART, align 4
  %82 = load i32, i32* @COND_NOSTOP, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %80, %77
  %85 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %7, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @brcmstb_set_i2c_start_stop(%struct.brcmstb_i2c_dev* %85, i32 %86)
  %88 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @I2C_M_NOSTART, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %84
  %95 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %7, align 8
  %96 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %97 = call i32 @brcmstb_i2c_do_addr(%struct.brcmstb_i2c_dev* %95, %struct.i2c_msg* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %94
  %101 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %7, align 8
  %102 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %105 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107, i32 %108)
  br label %174

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110, %84
  %112 = load i32, i32* %15, align 4
  store i32 %112, i32* %16, align 4
  br label %113

113:                                              ; preds = %157, %111
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %168

116:                                              ; preds = %113
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @min(i32 %117, i32 %118)
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %116
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, 1
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* @COND_RESTART, align 4
  %131 = load i32, i32* @COND_NOSTOP, align 4
  %132 = or i32 %130, %131
  %133 = xor i32 %132, -1
  %134 = and i32 %129, %133
  store i32 %134, i32* %16, align 4
  br label %137

135:                                              ; preds = %123
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %16, align 4
  br label %137

137:                                              ; preds = %135, %128
  br label %145

138:                                              ; preds = %116
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* @COND_RESTART, align 4
  %141 = xor i32 %140, -1
  %142 = and i32 %139, %141
  %143 = load i32, i32* @COND_NOSTOP, align 4
  %144 = or i32 %142, %143
  store i32 %144, i32* %16, align 4
  br label %145

145:                                              ; preds = %138, %137
  %146 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %7, align 8
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @brcmstb_set_i2c_start_stop(%struct.brcmstb_i2c_dev* %146, i32 %147)
  %149 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %7, align 8
  %150 = load i32*, i32** %12, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %153 = call i32 @brcmstb_i2c_xfer_bsc_data(%struct.brcmstb_i2c_dev* %149, i32* %150, i32 %151, %struct.i2c_msg* %152)
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %145
  br label %174

157:                                              ; preds = %145
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %13, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32*, i32** %12, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %12, align 8
  %165 = load i32, i32* @COND_NOSTART, align 4
  %166 = load i32, i32* @COND_NOSTOP, align 4
  %167 = or i32 %165, %166
  store i32 %167, i32* %16, align 4
  br label %113

168:                                              ; preds = %113
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %21

172:                                              ; preds = %21
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %172, %156, %100
  %175 = load i32, i32* %9, align 4
  ret i32 %175
}

declare dso_local %struct.brcmstb_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @brcmstb_i2c_get_xfersz(%struct.brcmstb_i2c_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @brcmstb_set_i2c_start_stop(%struct.brcmstb_i2c_dev*, i32) #1

declare dso_local i32 @brcmstb_i2c_do_addr(%struct.brcmstb_i2c_dev*, %struct.i2c_msg*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @brcmstb_i2c_xfer_bsc_data(%struct.brcmstb_i2c_dev*, i32*, i32, %struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
