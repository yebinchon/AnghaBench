; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_p8_i2c.c_p8_i2c_occ_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_p8_i2c.c_p8_i2c_occ_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.occ = type { %struct.occ_response }
%struct.occ_response = type { i32, i32 }
%struct.p8_i2c_occ = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@OCC_TIMEOUT_MS = common dso_local global i32 0, align 4
@OCC_CMD_IN_PRG_WAIT_MS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@OCB_ADDR = common dso_local global i32 0, align 4
@OCC_SRAM_ADDR_CMD = common dso_local global i32 0, align 4
@OCB_DATA3 = common dso_local global i32 0, align 4
@OCB_DATA1 = common dso_local global i32 0, align 4
@OCC_DATA_ATTN = common dso_local global i32 0, align 4
@OCC_SRAM_ADDR_RESP = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@OCC_RESP_DATA_BYTES = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.occ*, i32*)* @p8_i2c_occ_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p8_i2c_occ_send_cmd(%struct.occ* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.occ*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.p8_i2c_occ*, align 8
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca %struct.occ_response*, align 8
  store %struct.occ* %0, %struct.occ** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32, i32* @OCC_TIMEOUT_MS, align 4
  %16 = call i8* @msecs_to_jiffies(i32 %15)
  %17 = ptrtoint i8* %16 to i64
  store i64 %17, i64* %10, align 8
  %18 = load i32, i32* @OCC_CMD_IN_PRG_WAIT_MS, align 4
  %19 = call i8* @msecs_to_jiffies(i32 %18)
  %20 = ptrtoint i8* %19 to i64
  store i64 %20, i64* %11, align 8
  %21 = load %struct.occ*, %struct.occ** %4, align 8
  %22 = call %struct.p8_i2c_occ* @to_p8_i2c_occ(%struct.occ* %21)
  store %struct.p8_i2c_occ* %22, %struct.p8_i2c_occ** %12, align 8
  %23 = load %struct.p8_i2c_occ*, %struct.p8_i2c_occ** %12, align 8
  %24 = getelementptr inbounds %struct.p8_i2c_occ, %struct.p8_i2c_occ* %23, i32 0, i32 0
  %25 = load %struct.i2c_client*, %struct.i2c_client** %24, align 8
  store %struct.i2c_client* %25, %struct.i2c_client** %13, align 8
  %26 = load %struct.occ*, %struct.occ** %4, align 8
  %27 = getelementptr inbounds %struct.occ, %struct.occ* %26, i32 0, i32 0
  store %struct.occ_response* %27, %struct.occ_response** %14, align 8
  %28 = load i64, i64* @jiffies, align 8
  store i64 %28, i64* %8, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %30 = load i32, i32* @OCB_ADDR, align 4
  %31 = load i32, i32* @OCC_SRAM_ADDR_CMD, align 4
  %32 = call i32 @p8_i2c_occ_putscom_u32(%struct.i2c_client* %29, i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %155

37:                                               ; preds = %2
  %38 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %39 = load i32, i32* @OCB_DATA3, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @p8_i2c_occ_putscom_be(%struct.i2c_client* %38, i32 %39, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %155

46:                                               ; preds = %37
  %47 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %48 = load i32, i32* @OCB_DATA1, align 4
  %49 = load i32, i32* @OCC_DATA_ATTN, align 4
  %50 = call i32 @p8_i2c_occ_putscom_u32(%struct.i2c_client* %47, i32 %48, i32 %49, i32 0)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %155

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %96, %55
  %57 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %58 = load i32, i32* @OCB_ADDR, align 4
  %59 = load i32, i32* @OCC_SRAM_ADDR_RESP, align 4
  %60 = call i32 @p8_i2c_occ_putscom_u32(%struct.i2c_client* %57, i32 %58, i32 %59, i32 0)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %155

65:                                               ; preds = %56
  %66 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %67 = load i32, i32* @OCB_DATA3, align 4
  %68 = load %struct.occ_response*, %struct.occ_response** %14, align 8
  %69 = bitcast %struct.occ_response* %68 to i32*
  %70 = call i32 @p8_i2c_occ_getscom(%struct.i2c_client* %66, i32 %67, i32* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %155

75:                                               ; preds = %65
  %76 = load %struct.occ_response*, %struct.occ_response** %14, align 8
  %77 = getelementptr inbounds %struct.occ_response, %struct.occ_response* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 137
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load i32, i32* @EALREADY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  %83 = load i64, i64* @jiffies, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %10, align 8
  %86 = add i64 %84, %85
  %87 = call i64 @time_after(i64 %83, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %99

90:                                               ; preds = %80
  %91 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %92 = call i32 @set_current_state(i32 %91)
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @schedule_timeout(i64 %93)
  br label %95

95:                                               ; preds = %90, %75
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %56, label %99

99:                                               ; preds = %96, %89
  %100 = load %struct.occ_response*, %struct.occ_response** %14, align 8
  %101 = getelementptr inbounds %struct.occ_response, %struct.occ_response* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %113 [
    i32 137, label %103
    i32 128, label %106
    i32 138, label %107
    i32 136, label %107
    i32 130, label %107
    i32 139, label %107
    i32 129, label %110
    i32 140, label %110
    i32 135, label %110
    i32 133, label %110
    i32 131, label %110
    i32 132, label %110
    i32 134, label %110
  ]

103:                                              ; preds = %99
  %104 = load i32, i32* @ETIMEDOUT, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %7, align 4
  br label %116

106:                                              ; preds = %99
  store i32 0, i32* %7, align 4
  br label %116

107:                                              ; preds = %99, %99, %99, %99
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %7, align 4
  br label %116

110:                                              ; preds = %99, %99, %99, %99, %99, %99, %99
  %111 = load i32, i32* @EREMOTEIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %7, align 4
  br label %116

113:                                              ; preds = %99
  %114 = load i32, i32* @EPROTO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %113, %110, %107, %106, %103
  %117 = load i32, i32* %7, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %3, align 4
  br label %155

121:                                              ; preds = %116
  %122 = load %struct.occ_response*, %struct.occ_response** %14, align 8
  %123 = getelementptr inbounds %struct.occ_response, %struct.occ_response* %122, i32 0, i32 1
  %124 = call i32 @get_unaligned_be16(i32* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @OCC_RESP_DATA_BYTES, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32, i32* @EMSGSIZE, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %155

131:                                              ; preds = %121
  store i32 8, i32* %6, align 4
  br label %132

132:                                              ; preds = %151, %131
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 7
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %139 = load i32, i32* @OCB_DATA3, align 4
  %140 = load %struct.occ_response*, %struct.occ_response** %14, align 8
  %141 = bitcast %struct.occ_response* %140 to i32*
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = call i32 @p8_i2c_occ_getscom(%struct.i2c_client* %138, i32 %139, i32* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %137
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %3, align 4
  br label %155

150:                                              ; preds = %137
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 8
  store i32 %153, i32* %6, align 4
  br label %132

154:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %148, %128, %119, %73, %63, %53, %44, %35
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i8* @msecs_to_jiffies(i32) #1

declare dso_local %struct.p8_i2c_occ* @to_p8_i2c_occ(%struct.occ*) #1

declare dso_local i32 @p8_i2c_occ_putscom_u32(%struct.i2c_client*, i32, i32, i32) #1

declare dso_local i32 @p8_i2c_occ_putscom_be(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @p8_i2c_occ_getscom(%struct.i2c_client*, i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i64) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
