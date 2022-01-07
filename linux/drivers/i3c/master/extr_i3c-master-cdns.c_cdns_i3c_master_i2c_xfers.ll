; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_i2c_xfers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_i2c_xfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_dev_desc = type { i32 }
%struct.i2c_msg = type { i64, i32, i32, i32 }
%struct.i3c_master_controller = type { i32 }
%struct.cdns_i3c_master = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.cdns_i3c_xfer = type { i32, i32, %struct.cdns_i3c_cmd* }
%struct.cdns_i3c_cmd = type { i32, i64, i64, i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@CMD0_FIFO_PL_LEN_MAX = common dso_local global i64 0, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XMIT_BURST_WITHOUT_SUBADDR = common dso_local global i32 0, align 4
@I2C_M_TEN = common dso_local global i32 0, align 4
@CMD0_FIFO_IS_10B = common dso_local global i32 0, align 4
@CMD0_FIFO_RNW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_dev_desc*, %struct.i2c_msg*, i32)* @cdns_i3c_master_i2c_xfers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_i3c_master_i2c_xfers(%struct.i2c_dev_desc* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_dev_desc*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i3c_master_controller*, align 8
  %9 = alloca %struct.cdns_i3c_master*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cdns_i3c_xfer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cdns_i3c_cmd*, align 8
  store %struct.i2c_dev_desc* %0, %struct.i2c_dev_desc** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.i2c_dev_desc*, %struct.i2c_dev_desc** %5, align 8
  %17 = call %struct.i3c_master_controller* @i2c_dev_get_master(%struct.i2c_dev_desc* %16)
  store %struct.i3c_master_controller* %17, %struct.i3c_master_controller** %8, align 8
  %18 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %8, align 8
  %19 = call %struct.cdns_i3c_master* @to_cdns_i3c_master(%struct.i3c_master_controller* %18)
  store %struct.cdns_i3c_master* %19, %struct.cdns_i3c_master** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %9, align 8
  %22 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %230

29:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %81, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %84

34:                                               ; preds = %30
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i64 %37
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CMD0_FIFO_PL_LEN_MAX, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @ENOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %230

46:                                               ; preds = %34
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i64 %49
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @I2C_M_RD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %46
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i64 %59
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @DIV_ROUND_UP(i64 %62, i32 4)
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %10, align 4
  br label %80

68:                                               ; preds = %46
  %69 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %69, i64 %71
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @DIV_ROUND_UP(i64 %74, i32 4)
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %77, %75
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %68, %56
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %30

84:                                               ; preds = %30
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %9, align 8
  %87 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ugt i32 %85, %89
  br i1 %90, label %98, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %9, align 8
  %94 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ugt i32 %92, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %91, %84
  %99 = load i32, i32* @ENOTSUPP, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %230

101:                                              ; preds = %91
  %102 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %9, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call %struct.cdns_i3c_xfer* @cdns_i3c_master_alloc_xfer(%struct.cdns_i3c_master* %102, i32 %103)
  store %struct.cdns_i3c_xfer* %104, %struct.cdns_i3c_xfer** %12, align 8
  %105 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %12, align 8
  %106 = icmp ne %struct.cdns_i3c_xfer* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %230

110:                                              ; preds = %101
  store i32 0, i32* %13, align 4
  br label %111

111:                                              ; preds = %207, %110
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %210

115:                                              ; preds = %111
  %116 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %12, align 8
  %117 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %116, i32 0, i32 2
  %118 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %118, i64 %120
  store %struct.cdns_i3c_cmd* %121, %struct.cdns_i3c_cmd** %15, align 8
  %122 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %122, i64 %124
  %126 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @CMD0_FIFO_DEV_ADDR(i32 %127)
  %129 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %129, i64 %131
  %133 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @CMD0_FIFO_PL_LEN(i64 %134)
  %136 = or i32 %128, %135
  %137 = load i32, i32* @XMIT_BURST_WITHOUT_SUBADDR, align 4
  %138 = call i32 @CMD0_FIFO_PRIV_XMIT_MODE(i32 %137)
  %139 = or i32 %136, %138
  %140 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %141 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %142, i64 %144
  %146 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @I2C_M_TEN, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %115
  %152 = load i32, i32* @CMD0_FIFO_IS_10B, align 4
  %153 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %154 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %151, %115
  %158 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %158, i64 %160
  %162 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @I2C_M_RD, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %157
  %168 = load i32, i32* @CMD0_FIFO_RNW, align 4
  %169 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %170 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %173, i64 %175
  %177 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %180 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %179, i32 0, i32 4
  store i32 %178, i32* %180, align 4
  %181 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %181, i64 %183
  %185 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %188 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %187, i32 0, i32 1
  store i64 %186, i64* %188, align 8
  br label %206

189:                                              ; preds = %157
  %190 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %190, i64 %192
  %194 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %197 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 8
  %198 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %198, i64 %200
  %202 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.cdns_i3c_cmd*, %struct.cdns_i3c_cmd** %15, align 8
  %205 = getelementptr inbounds %struct.cdns_i3c_cmd, %struct.cdns_i3c_cmd* %204, i32 0, i32 2
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %189, %167
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %13, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %13, align 4
  br label %111

210:                                              ; preds = %111
  %211 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %9, align 8
  %212 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %12, align 8
  %213 = call i32 @cdns_i3c_master_queue_xfer(%struct.cdns_i3c_master* %211, %struct.cdns_i3c_xfer* %212)
  %214 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %12, align 8
  %215 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %214, i32 0, i32 1
  %216 = call i32 @msecs_to_jiffies(i32 1000)
  %217 = call i32 @wait_for_completion_timeout(i32* %215, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %210
  %220 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %9, align 8
  %221 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %12, align 8
  %222 = call i32 @cdns_i3c_master_unqueue_xfer(%struct.cdns_i3c_master* %220, %struct.cdns_i3c_xfer* %221)
  br label %223

223:                                              ; preds = %219, %210
  %224 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %12, align 8
  %225 = getelementptr inbounds %struct.cdns_i3c_xfer, %struct.cdns_i3c_xfer* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  store i32 %226, i32* %14, align 4
  %227 = load %struct.cdns_i3c_xfer*, %struct.cdns_i3c_xfer** %12, align 8
  %228 = call i32 @cdns_i3c_master_free_xfer(%struct.cdns_i3c_xfer* %227)
  %229 = load i32, i32* %14, align 4
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %223, %107, %98, %43, %26
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local %struct.i3c_master_controller* @i2c_dev_get_master(%struct.i2c_dev_desc*) #1

declare dso_local %struct.cdns_i3c_master* @to_cdns_i3c_master(%struct.i3c_master_controller*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.cdns_i3c_xfer* @cdns_i3c_master_alloc_xfer(%struct.cdns_i3c_master*, i32) #1

declare dso_local i32 @CMD0_FIFO_DEV_ADDR(i32) #1

declare dso_local i32 @CMD0_FIFO_PL_LEN(i64) #1

declare dso_local i32 @CMD0_FIFO_PRIV_XMIT_MODE(i32) #1

declare dso_local i32 @cdns_i3c_master_queue_xfer(%struct.cdns_i3c_master*, %struct.cdns_i3c_xfer*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cdns_i3c_master_unqueue_xfer(%struct.cdns_i3c_master*, %struct.cdns_i3c_xfer*) #1

declare dso_local i32 @cdns_i3c_master_free_xfer(%struct.cdns_i3c_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
