; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_do_8051_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_do_8051_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32, i64 }

@DC8051 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"type %d, data 0x%012llx\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Previous 8051 host command timed out, skipping command %u\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@HCMD_WRITE_LCB_CSR = common dso_local global i64 0, align 8
@DC_DC8051_CFG_EXT_DEV_0 = common dso_local global i32 0, align 4
@DC_DC8051_CFG_EXT_DEV_0_COMPLETED_SMASK = common dso_local global i32 0, align 4
@DC_DC8051_CFG_EXT_DEV_0_RETURN_CODE_SHIFT = common dso_local global i32 0, align 4
@DC_DC8051_CFG_EXT_DEV_0_RSP_DATA_SHIFT = common dso_local global i32 0, align 4
@DC_DC8051_CFG_HOST_CMD_0_REQ_TYPE_MASK = common dso_local global i32 0, align 4
@DC_DC8051_CFG_HOST_CMD_0_REQ_TYPE_SHIFT = common dso_local global i32 0, align 4
@DC_DC8051_CFG_HOST_CMD_0_REQ_DATA_MASK = common dso_local global i32 0, align 4
@DC_DC8051_CFG_HOST_CMD_0_REQ_DATA_SHIFT = common dso_local global i32 0, align 4
@DC_DC8051_CFG_HOST_CMD_0 = common dso_local global i32 0, align 4
@DC_DC8051_CFG_HOST_CMD_0_REQ_NEW_SMASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@DC8051_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@DC_DC8051_CFG_HOST_CMD_1 = common dso_local global i32 0, align 4
@DC_DC8051_CFG_HOST_CMD_1_COMPLETED_SMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"8051 host command %u timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@DC_DC8051_CFG_HOST_CMD_1_RSP_DATA_SHIFT = common dso_local global i32 0, align 4
@DC_DC8051_CFG_HOST_CMD_1_RSP_DATA_MASK = common dso_local global i32 0, align 4
@HCMD_READ_LCB_CSR = common dso_local global i64 0, align 8
@DC_DC8051_CFG_EXT_DEV_1 = common dso_local global i32 0, align 4
@DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_SMASK = common dso_local global i32 0, align 4
@DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_SHIFT = common dso_local global i32 0, align 4
@DC_DC8051_CFG_HOST_CMD_1_RETURN_CODE_SHIFT = common dso_local global i32 0, align 4
@DC_DC8051_CFG_HOST_CMD_1_RETURN_CODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i64, i32, i32*)* @do_8051_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_8051_command(%struct.hfi1_devdata* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* @DC8051, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @hfi1_cdbg(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %14, i32 %15)
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %21 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  br label %184

27:                                               ; preds = %4
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %29 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %34 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @dd_dev_err(%struct.hfi1_devdata* %38, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @ENXIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %184

43:                                               ; preds = %32
  %44 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %45 = call i32 @_dc_shutdown(%struct.hfi1_devdata* %44)
  %46 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %47 = call i32 @_dc_start(%struct.hfi1_devdata* %46)
  br label %48

48:                                               ; preds = %43, %27
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @HCMD_WRITE_LCB_CSR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %48
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = and i64 %55, 1099511627775
  %57 = shl i64 %56, 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = or i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %63 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_0, align 4
  %64 = call i32 @read_csr(%struct.hfi1_devdata* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_0_COMPLETED_SMASK, align 4
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 40
  %71 = and i32 %70, 255
  %72 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_0_RETURN_CODE_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 48
  %77 = and i32 %76, 65535
  %78 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_0_RSP_DATA_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %73, %79
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %84 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_0, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @write_csr(%struct.hfi1_devdata* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %52, %48
  %88 = load i64, i64* %6, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32, i32* @DC_DC8051_CFG_HOST_CMD_0_REQ_TYPE_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @DC_DC8051_CFG_HOST_CMD_0_REQ_TYPE_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @DC_DC8051_CFG_HOST_CMD_0_REQ_DATA_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @DC_DC8051_CFG_HOST_CMD_0_REQ_DATA_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = or i32 %93, %98
  store i32 %99, i32* %9, align 4
  %100 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %101 = load i32, i32* @DC_DC8051_CFG_HOST_CMD_0, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @write_csr(%struct.hfi1_devdata* %100, i32 %101, i32 %102)
  %104 = load i32, i32* @DC_DC8051_CFG_HOST_CMD_0_REQ_NEW_SMASK, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  %107 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %108 = load i32, i32* @DC_DC8051_CFG_HOST_CMD_0, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @write_csr(%struct.hfi1_devdata* %107, i32 %108, i32 %109)
  %111 = load i64, i64* @jiffies, align 8
  %112 = load i32, i32* @DC8051_COMMAND_TIMEOUT, align 4
  %113 = call i64 @msecs_to_jiffies(i32 %112)
  %114 = add i64 %111, %113
  store i64 %114, i64* %12, align 8
  br label %115

115:                                              ; preds = %87, %145
  %116 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %117 = load i32, i32* @DC_DC8051_CFG_HOST_CMD_1, align 4
  %118 = call i32 @read_csr(%struct.hfi1_devdata* %116, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @DC_DC8051_CFG_HOST_CMD_1_COMPLETED_SMASK, align 4
  %121 = and i32 %119, %120
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %147

125:                                              ; preds = %115
  %126 = load i64, i64* @jiffies, align 8
  %127 = load i64, i64* %12, align 8
  %128 = call i64 @time_after(i64 %126, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %125
  %131 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %132 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @dd_dev_err(%struct.hfi1_devdata* %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %136)
  %138 = load i32*, i32** %8, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i32*, i32** %8, align 8
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %140, %130
  %143 = load i32, i32* @ETIMEDOUT, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %11, align 4
  br label %184

145:                                              ; preds = %125
  %146 = call i32 @udelay(i32 2)
  br label %115

147:                                              ; preds = %124
  %148 = load i32*, i32** %8, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %173

150:                                              ; preds = %147
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @DC_DC8051_CFG_HOST_CMD_1_RSP_DATA_SHIFT, align 4
  %153 = ashr i32 %151, %152
  %154 = load i32, i32* @DC_DC8051_CFG_HOST_CMD_1_RSP_DATA_MASK, align 4
  %155 = and i32 %153, %154
  %156 = load i32*, i32** %8, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i64, i64* %6, align 8
  %158 = load i64, i64* @HCMD_READ_LCB_CSR, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %172

160:                                              ; preds = %150
  %161 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %162 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_1, align 4
  %163 = call i32 @read_csr(%struct.hfi1_devdata* %161, i32 %162)
  %164 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_SMASK, align 4
  %165 = and i32 %163, %164
  %166 = load i32, i32* @DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_SHIFT, align 4
  %167 = sub nsw i32 48, %166
  %168 = shl i32 %165, %167
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %168
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %160, %150
  br label %173

173:                                              ; preds = %172, %147
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @DC_DC8051_CFG_HOST_CMD_1_RETURN_CODE_SHIFT, align 4
  %176 = ashr i32 %174, %175
  %177 = load i32, i32* @DC_DC8051_CFG_HOST_CMD_1_RETURN_CODE_MASK, align 4
  %178 = and i32 %176, %177
  store i32 %178, i32* %11, align 4
  %179 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %180 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %179, i32 0, i32 0
  store i32 0, i32* %180, align 8
  %181 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %182 = load i32, i32* @DC_DC8051_CFG_HOST_CMD_0, align 4
  %183 = call i32 @write_csr(%struct.hfi1_devdata* %181, i32 %182, i32 0)
  br label %184

184:                                              ; preds = %173, %142, %37, %24
  %185 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %186 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %185, i32 0, i32 1
  %187 = call i32 @mutex_unlock(i32* %186)
  %188 = load i32, i32* %11, align 4
  ret i32 %188
}

declare dso_local i32 @hfi1_cdbg(i32, i8*, i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i64) #1

declare dso_local i32 @_dc_shutdown(%struct.hfi1_devdata*) #1

declare dso_local i32 @_dc_start(%struct.hfi1_devdata*) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
