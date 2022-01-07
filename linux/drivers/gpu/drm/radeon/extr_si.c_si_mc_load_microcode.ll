; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_mc_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_mc_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.mc_firmware_header_v1_0 = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@tahiti_io_mc_regs = common dso_local global i32 0, align 4
@TAHITI_IO_MC_REGS_SIZE = common dso_local global i32 0, align 4
@pitcairn_io_mc_regs = common dso_local global i32 0, align 4
@verde_io_mc_regs = common dso_local global i32 0, align 4
@oland_io_mc_regs = common dso_local global i32 0, align 4
@hainan_io_mc_regs = common dso_local global i32 0, align 4
@MC_SEQ_SUP_CNTL = common dso_local global i32 0, align 4
@RUN_MASK = common dso_local global i32 0, align 4
@MC_SEQ_IO_DEBUG_INDEX = common dso_local global i32 0, align 4
@MC_SEQ_IO_DEBUG_DATA = common dso_local global i32 0, align 4
@MC_SEQ_SUP_PGM = common dso_local global i32 0, align 4
@MC_SEQ_TRAIN_WAKEUP_CNTL = common dso_local global i32 0, align 4
@TRAIN_DONE_D0 = common dso_local global i32 0, align 4
@TRAIN_DONE_D1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_mc_load_microcode(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mc_firmware_header_v1_0*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %229

20:                                               ; preds = %1
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %71

25:                                               ; preds = %20
  %26 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.mc_firmware_header_v1_0*
  store %struct.mc_firmware_header_v1_0* %31, %struct.mc_firmware_header_v1_0** %12, align 8
  %32 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %12, align 8
  %33 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %32, i32 0, i32 0
  %34 = call i32 @radeon_ucode_print_mc_hdr(%struct.TYPE_4__* %33)
  %35 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %12, align 8
  %36 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = sdiv i32 %38, 8
  store i32 %39, i32* %10, align 4
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %12, align 8
  %46 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %44, %49
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %8, align 8
  %52 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %12, align 8
  %53 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = sdiv i32 %56, 4
  store i32 %57, i32* %11, align 4
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %12, align 8
  %64 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %62, %68
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** %5, align 8
  br label %99

71:                                               ; preds = %20
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 3
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sdiv i32 %76, 4
  store i32 %77, i32* %11, align 4
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %86 [
    i32 129, label %81
    i32 130, label %83
    i32 128, label %85
    i32 131, label %88
    i32 132, label %90
  ]

81:                                               ; preds = %71
  store i32* @tahiti_io_mc_regs, i32** %7, align 8
  %82 = load i32, i32* @TAHITI_IO_MC_REGS_SIZE, align 4
  store i32 %82, i32* %10, align 4
  br label %92

83:                                               ; preds = %71
  store i32* @pitcairn_io_mc_regs, i32** %7, align 8
  %84 = load i32, i32* @TAHITI_IO_MC_REGS_SIZE, align 4
  store i32 %84, i32* %10, align 4
  br label %92

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %71, %85
  store i32* @verde_io_mc_regs, i32** %7, align 8
  %87 = load i32, i32* @TAHITI_IO_MC_REGS_SIZE, align 4
  store i32 %87, i32* %10, align 4
  br label %92

88:                                               ; preds = %71
  store i32* @oland_io_mc_regs, i32** %7, align 8
  %89 = load i32, i32* @TAHITI_IO_MC_REGS_SIZE, align 4
  store i32 %89, i32* %10, align 4
  br label %92

90:                                               ; preds = %71
  store i32* @hainan_io_mc_regs, i32** %7, align 8
  %91 = load i32, i32* @TAHITI_IO_MC_REGS_SIZE, align 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %90, %88, %86, %83, %81
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 3
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** %4, align 8
  br label %99

99:                                               ; preds = %92, %25
  %100 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %101 = call i32 @RREG32(i32 %100)
  %102 = load i32, i32* @RUN_MASK, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %228

106:                                              ; preds = %99
  %107 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %108 = call i32 @WREG32(i32 %107, i32 8)
  %109 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %110 = call i32 @WREG32(i32 %109, i32 16)
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %152, %106
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %155

115:                                              ; preds = %111
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %115
  %121 = load i32, i32* @MC_SEQ_IO_DEBUG_INDEX, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %8, align 8
  %124 = ptrtoint i32* %122 to i32
  %125 = call i32 @le32_to_cpup(i32 %124)
  %126 = call i32 @WREG32(i32 %121, i32 %125)
  %127 = load i32, i32* @MC_SEQ_IO_DEBUG_DATA, align 4
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %8, align 8
  %130 = ptrtoint i32* %128 to i32
  %131 = call i32 @le32_to_cpup(i32 %130)
  %132 = call i32 @WREG32(i32 %127, i32 %131)
  br label %151

133:                                              ; preds = %115
  %134 = load i32, i32* @MC_SEQ_IO_DEBUG_INDEX, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %9, align 4
  %137 = shl i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @WREG32(i32 %134, i32 %140)
  %142 = load i32, i32* @MC_SEQ_IO_DEBUG_DATA, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %9, align 4
  %145 = shl i32 %144, 1
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @WREG32(i32 %142, i32 %149)
  br label %151

151:                                              ; preds = %133, %120
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %111

155:                                              ; preds = %111
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %180, %155
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %183

160:                                              ; preds = %156
  %161 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %162 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load i32, i32* @MC_SEQ_SUP_PGM, align 4
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %5, align 8
  %169 = ptrtoint i32* %167 to i32
  %170 = call i32 @le32_to_cpup(i32 %169)
  %171 = call i32 @WREG32(i32 %166, i32 %170)
  br label %179

172:                                              ; preds = %160
  %173 = load i32, i32* @MC_SEQ_SUP_PGM, align 4
  %174 = load i32*, i32** %4, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %4, align 8
  %176 = ptrtoint i32* %174 to i32
  %177 = call i32 @be32_to_cpup(i32 %176)
  %178 = call i32 @WREG32(i32 %173, i32 %177)
  br label %179

179:                                              ; preds = %172, %165
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  br label %156

183:                                              ; preds = %156
  %184 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %185 = call i32 @WREG32(i32 %184, i32 8)
  %186 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %187 = call i32 @WREG32(i32 %186, i32 4)
  %188 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %189 = call i32 @WREG32(i32 %188, i32 1)
  store i32 0, i32* %9, align 4
  br label %190

190:                                              ; preds = %205, %183
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %193 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %190
  %197 = load i32, i32* @MC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %198 = call i32 @RREG32(i32 %197)
  %199 = load i32, i32* @TRAIN_DONE_D0, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  br label %208

203:                                              ; preds = %196
  %204 = call i32 @udelay(i32 1)
  br label %205

205:                                              ; preds = %203
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %9, align 4
  br label %190

208:                                              ; preds = %202, %190
  store i32 0, i32* %9, align 4
  br label %209

209:                                              ; preds = %224, %208
  %210 = load i32, i32* %9, align 4
  %211 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %212 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %227

215:                                              ; preds = %209
  %216 = load i32, i32* @MC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %217 = call i32 @RREG32(i32 %216)
  %218 = load i32, i32* @TRAIN_DONE_D1, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  br label %227

222:                                              ; preds = %215
  %223 = call i32 @udelay(i32 1)
  br label %224

224:                                              ; preds = %222
  %225 = load i32, i32* %9, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %9, align 4
  br label %209

227:                                              ; preds = %221, %209
  br label %228

228:                                              ; preds = %227, %99
  store i32 0, i32* %2, align 4
  br label %229

229:                                              ; preds = %228, %17
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local i32 @radeon_ucode_print_mc_hdr(%struct.TYPE_4__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @le32_to_cpup(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
