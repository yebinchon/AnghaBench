; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_dump_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_dump_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@NUM_PCIE_SERDES = common dso_local global i32 0, align 4
@NUM_FABRIC_SERDES = common dso_local global i32 0, align 4
@CR_SBUS = common dso_local global i32 0, align 4
@SBUS_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Unable to acquire SBus to read firmware versions\0A\00", align 1
@SBUS_MASTER_BROADCAST = common dso_local global i32 0, align 4
@WRITE_SBUS_RECEIVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"SBus Master firmware version 0x%08x\0A\00", align 1
@pcie_serdes_addrs = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"PCIe SerDes firmware version 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"PCIe SerDes do not have the same firmware version\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"PCIe SerDes lane %d firmware version 0x%x\0A\00", align 1
@fabric_serdes_addrs = common dso_local global i32** null, align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"Fabric SerDes firmware version 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Fabric SerDes do not have the same firmware version\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Fabric SerDes lane %d firmware version 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @dump_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_fw_version(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %12 = load i32, i32* @NUM_PCIE_SERDES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %3, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %16 = load i32, i32* @NUM_FABRIC_SERDES, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %20 = load i32, i32* @CR_SBUS, align 4
  %21 = load i32, i32* @SBUS_TIMEOUT, align 4
  %22 = call i32 @acquire_chip_resource(%struct.hfi1_devdata* %19, i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %27 = call i32 @dd_dev_err(%struct.hfi1_devdata* %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %194

28:                                               ; preds = %1
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %30 = call i32 @set_sbus_fast_mode(%struct.hfi1_devdata* %29)
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %32 = load i32, i32* @SBUS_MASTER_BROADCAST, align 4
  %33 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %34 = call i32 @sbus_request(%struct.hfi1_devdata* %31, i32 %32, i32 2, i32 %33, i32 0)
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %36 = load i32, i32* @SBUS_MASTER_BROADCAST, align 4
  %37 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %38 = call i32 @sbus_request(%struct.hfi1_devdata* %35, i32 %36, i32 7, i32 %37, i32 1)
  %39 = call i32 @usleep_range(i32 10000, i32 11000)
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %41 = load i32, i32* @SBUS_MASTER_BROADCAST, align 4
  %42 = call i64 @sbus_read(%struct.hfi1_devdata* %40, i32 %41, i32 8, i32 1)
  store i64 %42, i64* %6, align 8
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 (%struct.hfi1_devdata*, i8*, i32, ...) @dd_dev_info(%struct.hfi1_devdata* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 1, i32* %8, align 4
  %47 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 0, i64* %47, align 16
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %86, %28
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @NUM_PCIE_SERDES, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %48
  %53 = load i32**, i32*** @pcie_serdes_addrs, align 8
  %54 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %55 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32*, i32** %53, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %10, align 4
  %63 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %66 = call i32 @sbus_request(%struct.hfi1_devdata* %63, i32 %64, i32 3, i32 %65, i32 0)
  %67 = call i32 @usleep_range(i32 10000, i32 11000)
  %68 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @sbus_read(%struct.hfi1_devdata* %68, i32 %69, i32 4, i32 0)
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %15, i64 %72
  store i64 %70, i64* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %52
  %77 = getelementptr inbounds i64, i64* %15, i64 0
  %78 = load i64, i64* %77, align 16
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %15, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %78, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %76, %52
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %48

89:                                               ; preds = %48
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %94 = getelementptr inbounds i64, i64* %15, i64 0
  %95 = load i64, i64* %94, align 16
  %96 = trunc i64 %95 to i32
  %97 = call i32 (%struct.hfi1_devdata*, i8*, i32, ...) @dd_dev_info(%struct.hfi1_devdata* %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %117

98:                                               ; preds = %89
  %99 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %100 = call i32 @dd_dev_warn(%struct.hfi1_devdata* %99, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %113, %98
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @NUM_PCIE_SERDES, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %15, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (%struct.hfi1_devdata*, i8*, i32, ...) @dd_dev_info(%struct.hfi1_devdata* %106, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %107, i64 %111)
  br label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %101

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116, %92
  store i32 1, i32* %8, align 4
  %118 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 0, i64* %118, align 16
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %157, %117
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @NUM_FABRIC_SERDES, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %160

123:                                              ; preds = %119
  %124 = load i32**, i32*** @fabric_serdes_addrs, align 8
  %125 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %126 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32*, i32** %124, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %10, align 4
  %134 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %137 = call i32 @sbus_request(%struct.hfi1_devdata* %134, i32 %135, i32 3, i32 %136, i32 0)
  %138 = call i32 @usleep_range(i32 10000, i32 11000)
  %139 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i64 @sbus_read(%struct.hfi1_devdata* %139, i32 %140, i32 4, i32 0)
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %18, i64 %143
  store i64 %141, i64* %144, align 8
  %145 = load i32, i32* %7, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %123
  %148 = getelementptr inbounds i64, i64* %18, i64 0
  %149 = load i64, i64* %148, align 16
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %18, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %149, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %147
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %155, %147, %123
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %119

160:                                              ; preds = %119
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %165 = getelementptr inbounds i64, i64* %18, i64 0
  %166 = load i64, i64* %165, align 16
  %167 = trunc i64 %166 to i32
  %168 = call i32 (%struct.hfi1_devdata*, i8*, i32, ...) @dd_dev_info(%struct.hfi1_devdata* %164, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %167)
  br label %188

169:                                              ; preds = %160
  %170 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %171 = call i32 @dd_dev_warn(%struct.hfi1_devdata* %170, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %184, %169
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @NUM_FABRIC_SERDES, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %187

176:                                              ; preds = %172
  %177 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %18, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = call i32 (%struct.hfi1_devdata*, i8*, i32, ...) @dd_dev_info(%struct.hfi1_devdata* %177, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %178, i64 %182)
  br label %184

184:                                              ; preds = %176
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %7, align 4
  br label %172

187:                                              ; preds = %172
  br label %188

188:                                              ; preds = %187, %163
  %189 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %190 = call i32 @clear_sbus_fast_mode(%struct.hfi1_devdata* %189)
  %191 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %192 = load i32, i32* @CR_SBUS, align 4
  %193 = call i32 @release_chip_resource(%struct.hfi1_devdata* %191, i32 %192)
  store i32 0, i32* %11, align 4
  br label %194

194:                                              ; preds = %188, %25
  %195 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %195)
  %196 = load i32, i32* %11, align 4
  switch i32 %196, label %198 [
    i32 0, label %197
    i32 1, label %197
  ]

197:                                              ; preds = %194, %194
  ret void

198:                                              ; preds = %194
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @acquire_chip_resource(%struct.hfi1_devdata*, i32, i32) #2

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #2

declare dso_local i32 @set_sbus_fast_mode(%struct.hfi1_devdata*) #2

declare dso_local i32 @sbus_request(%struct.hfi1_devdata*, i32, i32, i32, i32) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i64 @sbus_read(%struct.hfi1_devdata*, i32, i32, i32) #2

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32, ...) #2

declare dso_local i32 @dd_dev_warn(%struct.hfi1_devdata*, i8*) #2

declare dso_local i32 @clear_sbus_fast_mode(%struct.hfi1_devdata*) #2

declare dso_local i32 @release_chip_resource(%struct.hfi1_devdata*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
