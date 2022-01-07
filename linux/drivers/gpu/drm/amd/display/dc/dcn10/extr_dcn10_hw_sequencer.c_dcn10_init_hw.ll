; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.dce_hwseq*, %struct.TYPE_33__, %struct.TYPE_44__, i32, %struct.TYPE_39__, %struct.dc_link**, %struct.TYPE_27__*, %struct.resource_pool*, %struct.TYPE_38__* }
%struct.dce_hwseq = type { i32 }
%struct.TYPE_33__ = type { i32 (%struct.dce_hwseq*, i32)*, i32 (%struct.dc.0*, i32)*, i32 (%struct.dce_hwseq*, i32, i32)*, i32 (%struct.dc.1*)*, i32 (%struct.dce_hwseq*)* }
%struct.dc.0 = type opaque
%struct.dc.1 = type opaque
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_39__ = type { i64 }
%struct.dc_link = type { %struct.TYPE_31__, %struct.TYPE_34__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64 (%struct.TYPE_34__*)*, i32 (%struct.TYPE_34__*)* }
%struct.TYPE_27__ = type { %struct.dc_bios*, i32 }
%struct.dc_bios = type { %struct.TYPE_45__*, %struct.TYPE_26__, i64 }
%struct.TYPE_45__ = type { i64 (%struct.dc_bios*)* }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.resource_pool = type { i32, %struct.audio**, %struct.TYPE_35__**, %struct.TYPE_32__*, %struct.TYPE_29__, %struct.TYPE_36__*, %struct.TYPE_37__*, %struct.dmcu*, %struct.abm* }
%struct.audio = type { %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32 (%struct.audio*)* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 (%struct.TYPE_36__*, i32, i32*)* }
%struct.TYPE_37__ = type { %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i32 (%struct.TYPE_37__*, i32, i32*)*, i32 (%struct.TYPE_37__*)* }
%struct.dmcu = type { %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)* }
%struct.abm = type { i32, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i32 (%struct.abm*)*, i32 (%struct.abm*)* }
%struct.TYPE_38__ = type { %struct.TYPE_43__* }
%struct.TYPE_43__ = type { i32 (%struct.TYPE_38__*)* }

@REFCLK_CNTL = common dso_local global i32 0, align 4
@DCHUBBUB_GLOBAL_TIMER_CNTL = common dso_local global i32 0, align 4
@DCHUBBUB_GLOBAL_TIMER_ENABLE = common dso_local global i32 0, align 4
@DIO_MEM_PWR_CTRL = common dso_local global i32 0, align 4
@DCCG_GATE_DISABLE_CNTL = common dso_local global i32 0, align 4
@DCCG_GATE_DISABLE_CNTL2 = common dso_local global i32 0, align 4
@DCFCLK_CNTL = common dso_local global i32 0, align 4
@DCFCLK_GATE_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*)* @dcn10_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_init_hw(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.abm*, align 8
  %5 = alloca %struct.dmcu*, align 8
  %6 = alloca %struct.dce_hwseq*, align 8
  %7 = alloca %struct.dc_bios*, align 8
  %8 = alloca %struct.resource_pool*, align 8
  %9 = alloca %struct.dc_link*, align 8
  %10 = alloca %struct.audio*, align 8
  store %struct.dc* %0, %struct.dc** %2, align 8
  %11 = load %struct.dc*, %struct.dc** %2, align 8
  %12 = getelementptr inbounds %struct.dc, %struct.dc* %11, i32 0, i32 8
  %13 = load %struct.resource_pool*, %struct.resource_pool** %12, align 8
  %14 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %13, i32 0, i32 8
  %15 = load %struct.abm*, %struct.abm** %14, align 8
  store %struct.abm* %15, %struct.abm** %4, align 8
  %16 = load %struct.dc*, %struct.dc** %2, align 8
  %17 = getelementptr inbounds %struct.dc, %struct.dc* %16, i32 0, i32 8
  %18 = load %struct.resource_pool*, %struct.resource_pool** %17, align 8
  %19 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %18, i32 0, i32 7
  %20 = load %struct.dmcu*, %struct.dmcu** %19, align 8
  store %struct.dmcu* %20, %struct.dmcu** %5, align 8
  %21 = load %struct.dc*, %struct.dc** %2, align 8
  %22 = getelementptr inbounds %struct.dc, %struct.dc* %21, i32 0, i32 1
  %23 = load %struct.dce_hwseq*, %struct.dce_hwseq** %22, align 8
  store %struct.dce_hwseq* %23, %struct.dce_hwseq** %6, align 8
  %24 = load %struct.dc*, %struct.dc** %2, align 8
  %25 = getelementptr inbounds %struct.dc, %struct.dc* %24, i32 0, i32 7
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = load %struct.dc_bios*, %struct.dc_bios** %27, align 8
  store %struct.dc_bios* %28, %struct.dc_bios** %7, align 8
  %29 = load %struct.dc*, %struct.dc** %2, align 8
  %30 = getelementptr inbounds %struct.dc, %struct.dc* %29, i32 0, i32 8
  %31 = load %struct.resource_pool*, %struct.resource_pool** %30, align 8
  store %struct.resource_pool* %31, %struct.resource_pool** %8, align 8
  %32 = load %struct.dc*, %struct.dc** %2, align 8
  %33 = getelementptr inbounds %struct.dc, %struct.dc* %32, i32 0, i32 9
  %34 = load %struct.TYPE_38__*, %struct.TYPE_38__** %33, align 8
  %35 = icmp ne %struct.TYPE_38__* %34, null
  br i1 %35, label %36, label %57

36:                                               ; preds = %1
  %37 = load %struct.dc*, %struct.dc** %2, align 8
  %38 = getelementptr inbounds %struct.dc, %struct.dc* %37, i32 0, i32 9
  %39 = load %struct.TYPE_38__*, %struct.TYPE_38__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_43__*, %struct.TYPE_43__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_38__*)*, i32 (%struct.TYPE_38__*)** %42, align 8
  %44 = icmp ne i32 (%struct.TYPE_38__*)* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %36
  %46 = load %struct.dc*, %struct.dc** %2, align 8
  %47 = getelementptr inbounds %struct.dc, %struct.dc* %46, i32 0, i32 9
  %48 = load %struct.TYPE_38__*, %struct.TYPE_38__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_43__*, %struct.TYPE_43__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_38__*)*, i32 (%struct.TYPE_38__*)** %51, align 8
  %53 = load %struct.dc*, %struct.dc** %2, align 8
  %54 = getelementptr inbounds %struct.dc, %struct.dc* %53, i32 0, i32 9
  %55 = load %struct.TYPE_38__*, %struct.TYPE_38__** %54, align 8
  %56 = call i32 %52(%struct.TYPE_38__* %55)
  br label %57

57:                                               ; preds = %45, %36, %1
  %58 = load %struct.dc*, %struct.dc** %2, align 8
  %59 = getelementptr inbounds %struct.dc, %struct.dc* %58, i32 0, i32 8
  %60 = load %struct.resource_pool*, %struct.resource_pool** %59, align 8
  %61 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %60, i32 0, i32 6
  %62 = load %struct.TYPE_37__*, %struct.TYPE_37__** %61, align 8
  %63 = icmp ne %struct.TYPE_37__* %62, null
  br i1 %63, label %64, label %89

64:                                               ; preds = %57
  %65 = load %struct.dc*, %struct.dc** %2, align 8
  %66 = getelementptr inbounds %struct.dc, %struct.dc* %65, i32 0, i32 8
  %67 = load %struct.resource_pool*, %struct.resource_pool** %66, align 8
  %68 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %67, i32 0, i32 6
  %69 = load %struct.TYPE_37__*, %struct.TYPE_37__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_46__*, %struct.TYPE_46__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %71, i32 0, i32 1
  %73 = load i32 (%struct.TYPE_37__*)*, i32 (%struct.TYPE_37__*)** %72, align 8
  %74 = icmp ne i32 (%struct.TYPE_37__*)* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %64
  %76 = load %struct.dc*, %struct.dc** %2, align 8
  %77 = getelementptr inbounds %struct.dc, %struct.dc* %76, i32 0, i32 8
  %78 = load %struct.resource_pool*, %struct.resource_pool** %77, align 8
  %79 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %78, i32 0, i32 6
  %80 = load %struct.TYPE_37__*, %struct.TYPE_37__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_46__*, %struct.TYPE_46__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %82, i32 0, i32 1
  %84 = load i32 (%struct.TYPE_37__*)*, i32 (%struct.TYPE_37__*)** %83, align 8
  %85 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %86 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %85, i32 0, i32 6
  %87 = load %struct.TYPE_37__*, %struct.TYPE_37__** %86, align 8
  %88 = call i32 %84(%struct.TYPE_37__* %87)
  br label %89

89:                                               ; preds = %75, %64, %57
  %90 = load %struct.dc*, %struct.dc** %2, align 8
  %91 = getelementptr inbounds %struct.dc, %struct.dc* %90, i32 0, i32 7
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @IS_FPGA_MAXIMUS_DC(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %125

97:                                               ; preds = %89
  %98 = load i32, i32* @REFCLK_CNTL, align 4
  %99 = call i32 @REG_WRITE(i32 %98, i32 0)
  %100 = load i32, i32* @DCHUBBUB_GLOBAL_TIMER_CNTL, align 4
  %101 = load i32, i32* @DCHUBBUB_GLOBAL_TIMER_ENABLE, align 4
  %102 = call i32 @REG_UPDATE(i32 %100, i32 %101, i32 1)
  %103 = load i32, i32* @DIO_MEM_PWR_CTRL, align 4
  %104 = call i32 @REG_WRITE(i32 %103, i32 0)
  %105 = load %struct.dc*, %struct.dc** %2, align 8
  %106 = getelementptr inbounds %struct.dc, %struct.dc* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %97
  %111 = load i32, i32* @DCCG_GATE_DISABLE_CNTL, align 4
  %112 = call i32 @REG_WRITE(i32 %111, i32 0)
  %113 = load i32, i32* @DCCG_GATE_DISABLE_CNTL2, align 4
  %114 = call i32 @REG_WRITE(i32 %113, i32 0)
  %115 = load i32, i32* @DCFCLK_CNTL, align 4
  %116 = load i32, i32* @DCFCLK_GATE_DIS, align 4
  %117 = call i32 @REG_UPDATE(i32 %115, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %110, %97
  %119 = load %struct.dc*, %struct.dc** %2, align 8
  %120 = getelementptr inbounds %struct.dc, %struct.dc* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 0
  %122 = load i32 (%struct.dce_hwseq*, i32)*, i32 (%struct.dce_hwseq*, i32)** %121, align 8
  %123 = load %struct.dce_hwseq*, %struct.dce_hwseq** %6, align 8
  %124 = call i32 %122(%struct.dce_hwseq* %123, i32 1)
  br label %426

125:                                              ; preds = %89
  %126 = load %struct.dc_bios*, %struct.dc_bios** %7, align 8
  %127 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %126, i32 0, i32 0
  %128 = load %struct.TYPE_45__*, %struct.TYPE_45__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %128, i32 0, i32 0
  %130 = load i64 (%struct.dc_bios*)*, i64 (%struct.dc_bios*)** %129, align 8
  %131 = load %struct.dc_bios*, %struct.dc_bios** %7, align 8
  %132 = call i64 %130(%struct.dc_bios* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %125
  %135 = load %struct.dc*, %struct.dc** %2, align 8
  %136 = getelementptr inbounds %struct.dc, %struct.dc* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %136, i32 0, i32 4
  %138 = load i32 (%struct.dce_hwseq*)*, i32 (%struct.dce_hwseq*)** %137, align 8
  %139 = load %struct.dc*, %struct.dc** %2, align 8
  %140 = getelementptr inbounds %struct.dc, %struct.dc* %139, i32 0, i32 1
  %141 = load %struct.dce_hwseq*, %struct.dce_hwseq** %140, align 8
  %142 = call i32 %138(%struct.dce_hwseq* %141)
  br label %143

143:                                              ; preds = %134, %125
  %144 = load %struct.dc*, %struct.dc** %2, align 8
  %145 = getelementptr inbounds %struct.dc, %struct.dc* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 3
  %147 = load i32 (%struct.dc.1*)*, i32 (%struct.dc.1*)** %146, align 8
  %148 = load %struct.dc*, %struct.dc** %2, align 8
  %149 = bitcast %struct.dc* %148 to %struct.dc.1*
  %150 = call i32 %147(%struct.dc.1* %149)
  %151 = load %struct.dc*, %struct.dc** %2, align 8
  %152 = getelementptr inbounds %struct.dc, %struct.dc* %151, i32 0, i32 7
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 0
  %155 = load %struct.dc_bios*, %struct.dc_bios** %154, align 8
  %156 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %248

159:                                              ; preds = %143
  %160 = load %struct.dc*, %struct.dc** %2, align 8
  %161 = getelementptr inbounds %struct.dc, %struct.dc* %160, i32 0, i32 7
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 0
  %164 = load %struct.dc_bios*, %struct.dc_bios** %163, align 8
  %165 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %170 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  %172 = load %struct.dc*, %struct.dc** %2, align 8
  %173 = getelementptr inbounds %struct.dc, %struct.dc* %172, i32 0, i32 7
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @IS_FPGA_MAXIMUS_DC(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %247, label %179

179:                                              ; preds = %159
  %180 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %181 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %180, i32 0, i32 6
  %182 = load %struct.TYPE_37__*, %struct.TYPE_37__** %181, align 8
  %183 = icmp ne %struct.TYPE_37__* %182, null
  br i1 %183, label %184, label %231

184:                                              ; preds = %179
  %185 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %186 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %185, i32 0, i32 5
  %187 = load %struct.TYPE_36__*, %struct.TYPE_36__** %186, align 8
  %188 = icmp ne %struct.TYPE_36__* %187, null
  br i1 %188, label %189, label %231

189:                                              ; preds = %184
  %190 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %191 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %190, i32 0, i32 6
  %192 = load %struct.TYPE_37__*, %struct.TYPE_37__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_46__*, %struct.TYPE_46__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %194, i32 0, i32 0
  %196 = load i32 (%struct.TYPE_37__*, i32, i32*)*, i32 (%struct.TYPE_37__*, i32, i32*)** %195, align 8
  %197 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %198 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %197, i32 0, i32 6
  %199 = load %struct.TYPE_37__*, %struct.TYPE_37__** %198, align 8
  %200 = load %struct.dc*, %struct.dc** %2, align 8
  %201 = getelementptr inbounds %struct.dc, %struct.dc* %200, i32 0, i32 7
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 0
  %204 = load %struct.dc_bios*, %struct.dc_bios** %203, align 8
  %205 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %210 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %210, i32 0, i32 2
  %212 = call i32 %196(%struct.TYPE_37__* %199, i32 %208, i32* %211)
  %213 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %214 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %213, i32 0, i32 5
  %215 = load %struct.TYPE_36__*, %struct.TYPE_36__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 0
  %219 = load i32 (%struct.TYPE_36__*, i32, i32*)*, i32 (%struct.TYPE_36__*, i32, i32*)** %218, align 8
  %220 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %221 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %220, i32 0, i32 5
  %222 = load %struct.TYPE_36__*, %struct.TYPE_36__** %221, align 8
  %223 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %224 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %228 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %228, i32 0, i32 1
  %230 = call i32 %219(%struct.TYPE_36__* %222, i32 %226, i32* %229)
  br label %246

231:                                              ; preds = %184, %179
  %232 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %233 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %237 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i32 0, i32 2
  store i32 %235, i32* %238, align 8
  %239 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %240 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %244 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %244, i32 0, i32 1
  store i32 %242, i32* %245, align 4
  br label %246

246:                                              ; preds = %231, %189
  br label %247

247:                                              ; preds = %246, %159
  br label %250

248:                                              ; preds = %143
  %249 = call i32 @ASSERT_CRITICAL(i32 0)
  br label %250

250:                                              ; preds = %248, %247
  store i32 0, i32* %3, align 4
  br label %251

251:                                              ; preds = %302, %250
  %252 = load i32, i32* %3, align 4
  %253 = load %struct.dc*, %struct.dc** %2, align 8
  %254 = getelementptr inbounds %struct.dc, %struct.dc* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp slt i32 %252, %255
  br i1 %256, label %257, label %305

257:                                              ; preds = %251
  %258 = load %struct.dc*, %struct.dc** %2, align 8
  %259 = getelementptr inbounds %struct.dc, %struct.dc* %258, i32 0, i32 6
  %260 = load %struct.dc_link**, %struct.dc_link*** %259, align 8
  %261 = load i32, i32* %3, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.dc_link*, %struct.dc_link** %260, i64 %262
  %264 = load %struct.dc_link*, %struct.dc_link** %263, align 8
  store %struct.dc_link* %264, %struct.dc_link** %9, align 8
  %265 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %266 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %265, i32 0, i32 1
  %267 = load %struct.TYPE_34__*, %struct.TYPE_34__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 1
  %271 = load i32 (%struct.TYPE_34__*)*, i32 (%struct.TYPE_34__*)** %270, align 8
  %272 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %273 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %272, i32 0, i32 1
  %274 = load %struct.TYPE_34__*, %struct.TYPE_34__** %273, align 8
  %275 = call i32 %271(%struct.TYPE_34__* %274)
  %276 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %277 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %276, i32 0, i32 1
  %278 = load %struct.TYPE_34__*, %struct.TYPE_34__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_30__*, %struct.TYPE_30__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %280, i32 0, i32 0
  %282 = load i64 (%struct.TYPE_34__*)*, i64 (%struct.TYPE_34__*)** %281, align 8
  %283 = icmp ne i64 (%struct.TYPE_34__*)* %282, null
  br i1 %283, label %284, label %301

284:                                              ; preds = %257
  %285 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %286 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %285, i32 0, i32 1
  %287 = load %struct.TYPE_34__*, %struct.TYPE_34__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_30__*, %struct.TYPE_30__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %289, i32 0, i32 0
  %291 = load i64 (%struct.TYPE_34__*)*, i64 (%struct.TYPE_34__*)** %290, align 8
  %292 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %293 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %292, i32 0, i32 1
  %294 = load %struct.TYPE_34__*, %struct.TYPE_34__** %293, align 8
  %295 = call i64 %291(%struct.TYPE_34__* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %284
  %298 = load %struct.dc_link*, %struct.dc_link** %9, align 8
  %299 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %299, i32 0, i32 0
  store i32 1, i32* %300, align 8
  br label %301

301:                                              ; preds = %297, %284, %257
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %3, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %3, align 4
  br label %251

305:                                              ; preds = %251
  %306 = load %struct.dc_bios*, %struct.dc_bios** %7, align 8
  %307 = getelementptr inbounds %struct.dc_bios, %struct.dc_bios* %306, i32 0, i32 0
  %308 = load %struct.TYPE_45__*, %struct.TYPE_45__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %308, i32 0, i32 0
  %310 = load i64 (%struct.dc_bios*)*, i64 (%struct.dc_bios*)** %309, align 8
  %311 = load %struct.dc_bios*, %struct.dc_bios** %7, align 8
  %312 = call i64 %310(%struct.dc_bios* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %320, label %314

314:                                              ; preds = %305
  %315 = load %struct.dc*, %struct.dc** %2, align 8
  %316 = getelementptr inbounds %struct.dc, %struct.dc* %315, i32 0, i32 5
  %317 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %331

320:                                              ; preds = %314, %305
  %321 = load %struct.dc*, %struct.dc** %2, align 8
  %322 = getelementptr inbounds %struct.dc, %struct.dc* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %322, i32 0, i32 1
  %324 = load i32 (%struct.dc.0*, i32)*, i32 (%struct.dc.0*, i32)** %323, align 8
  %325 = load %struct.dc*, %struct.dc** %2, align 8
  %326 = bitcast %struct.dc* %325 to %struct.dc.0*
  %327 = load %struct.dc*, %struct.dc** %2, align 8
  %328 = getelementptr inbounds %struct.dc, %struct.dc* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 4
  %330 = call i32 %324(%struct.dc.0* %326, i32 %329)
  br label %331

331:                                              ; preds = %320, %314
  store i32 0, i32* %3, align 4
  br label %332

332:                                              ; preds = %353, %331
  %333 = load i32, i32* %3, align 4
  %334 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %335 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp slt i32 %333, %336
  br i1 %337, label %338, label %356

338:                                              ; preds = %332
  %339 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %340 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %339, i32 0, i32 1
  %341 = load %struct.audio**, %struct.audio*** %340, align 8
  %342 = load i32, i32* %3, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.audio*, %struct.audio** %341, i64 %343
  %345 = load %struct.audio*, %struct.audio** %344, align 8
  store %struct.audio* %345, %struct.audio** %10, align 8
  %346 = load %struct.audio*, %struct.audio** %10, align 8
  %347 = getelementptr inbounds %struct.audio, %struct.audio* %346, i32 0, i32 0
  %348 = load %struct.TYPE_40__*, %struct.TYPE_40__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %348, i32 0, i32 0
  %350 = load i32 (%struct.audio*)*, i32 (%struct.audio*)** %349, align 8
  %351 = load %struct.audio*, %struct.audio** %10, align 8
  %352 = call i32 %350(%struct.audio* %351)
  br label %353

353:                                              ; preds = %338
  %354 = load i32, i32* %3, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %3, align 4
  br label %332

356:                                              ; preds = %332
  %357 = load %struct.abm*, %struct.abm** %4, align 8
  %358 = icmp ne %struct.abm* %357, null
  br i1 %358, label %359, label %374

359:                                              ; preds = %356
  %360 = load %struct.abm*, %struct.abm** %4, align 8
  %361 = getelementptr inbounds %struct.abm, %struct.abm* %360, i32 0, i32 1
  %362 = load %struct.TYPE_41__*, %struct.TYPE_41__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %362, i32 0, i32 1
  %364 = load i32 (%struct.abm*)*, i32 (%struct.abm*)** %363, align 8
  %365 = load %struct.abm*, %struct.abm** %4, align 8
  %366 = call i32 %364(%struct.abm* %365)
  %367 = load %struct.abm*, %struct.abm** %4, align 8
  %368 = getelementptr inbounds %struct.abm, %struct.abm* %367, i32 0, i32 1
  %369 = load %struct.TYPE_41__*, %struct.TYPE_41__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %369, i32 0, i32 0
  %371 = load i32 (%struct.abm*)*, i32 (%struct.abm*)** %370, align 8
  %372 = load %struct.abm*, %struct.abm** %4, align 8
  %373 = call i32 %371(%struct.abm* %372)
  br label %374

374:                                              ; preds = %359, %356
  %375 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %376 = icmp ne %struct.dmcu* %375, null
  br i1 %376, label %377, label %385

377:                                              ; preds = %374
  %378 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %379 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %378, i32 0, i32 0
  %380 = load %struct.TYPE_42__*, %struct.TYPE_42__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %380, i32 0, i32 1
  %382 = load i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)** %381, align 8
  %383 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %384 = call i32 %382(%struct.dmcu* %383)
  br label %385

385:                                              ; preds = %377, %374
  %386 = load %struct.abm*, %struct.abm** %4, align 8
  %387 = icmp ne %struct.abm* %386, null
  br i1 %387, label %388, label %401

388:                                              ; preds = %385
  %389 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %390 = icmp ne %struct.dmcu* %389, null
  br i1 %390, label %391, label %401

391:                                              ; preds = %388
  %392 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %393 = getelementptr inbounds %struct.dmcu, %struct.dmcu* %392, i32 0, i32 0
  %394 = load %struct.TYPE_42__*, %struct.TYPE_42__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %394, i32 0, i32 0
  %396 = load i32 (%struct.dmcu*)*, i32 (%struct.dmcu*)** %395, align 8
  %397 = load %struct.dmcu*, %struct.dmcu** %5, align 8
  %398 = call i32 %396(%struct.dmcu* %397)
  %399 = load %struct.abm*, %struct.abm** %4, align 8
  %400 = getelementptr inbounds %struct.abm, %struct.abm* %399, i32 0, i32 0
  store i32 %398, i32* %400, align 8
  br label %401

401:                                              ; preds = %391, %388, %385
  %402 = load i32, i32* @DIO_MEM_PWR_CTRL, align 4
  %403 = call i32 @REG_WRITE(i32 %402, i32 0)
  %404 = load %struct.dc*, %struct.dc** %2, align 8
  %405 = getelementptr inbounds %struct.dc, %struct.dc* %404, i32 0, i32 3
  %406 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %417, label %409

409:                                              ; preds = %401
  %410 = load i32, i32* @DCCG_GATE_DISABLE_CNTL, align 4
  %411 = call i32 @REG_WRITE(i32 %410, i32 0)
  %412 = load i32, i32* @DCCG_GATE_DISABLE_CNTL2, align 4
  %413 = call i32 @REG_WRITE(i32 %412, i32 0)
  %414 = load i32, i32* @DCFCLK_CNTL, align 4
  %415 = load i32, i32* @DCFCLK_GATE_DIS, align 4
  %416 = call i32 @REG_UPDATE(i32 %414, i32 %415, i32 0)
  br label %417

417:                                              ; preds = %409, %401
  %418 = load %struct.dc*, %struct.dc** %2, align 8
  %419 = getelementptr inbounds %struct.dc, %struct.dc* %418, i32 0, i32 2
  %420 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %419, i32 0, i32 0
  %421 = load i32 (%struct.dce_hwseq*, i32)*, i32 (%struct.dce_hwseq*, i32)** %420, align 8
  %422 = load %struct.dc*, %struct.dc** %2, align 8
  %423 = getelementptr inbounds %struct.dc, %struct.dc* %422, i32 0, i32 1
  %424 = load %struct.dce_hwseq*, %struct.dce_hwseq** %423, align 8
  %425 = call i32 %421(%struct.dce_hwseq* %424, i32 1)
  br label %426

426:                                              ; preds = %417, %118
  ret void
}

declare dso_local i64 @IS_FPGA_MAXIMUS_DC(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
