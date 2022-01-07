; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_train_drive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_train_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lt_state = type { i32*, i32, i32*, i32*, %struct.nvkm_dp* }
%struct.nvkm_dp = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_15__, %struct.nvkm_ior* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.nvkm_ior = type { %struct.TYPE_17__*, %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 (%struct.nvkm_ior*, i32, i32, i32, i32, i32)* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvbios_dpout = type { i32 }
%struct.nvbios_dpcfg = type { i32, i32, i32, i32 }

@DPCD_LC0F_LANE0_MAX_POST_CURSOR2_REACHED = common dso_local global i32 0, align 4
@DPCD_LC03_MAX_SWING_REACHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"config lane %d %02x %02x\00", align 1
@DPCD_LC0F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lt_state*, i32)* @nvkm_dp_train_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_dp_train_drive(%struct.lt_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lt_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_dp*, align 8
  %7 = alloca %struct.nvkm_ior*, align 8
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca %struct.nvbios_dpout, align 4
  %10 = alloca %struct.nvbios_dpcfg, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.lt_state* %0, %struct.lt_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %25 = load %struct.lt_state*, %struct.lt_state** %4, align 8
  %26 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %25, i32 0, i32 4
  %27 = load %struct.nvkm_dp*, %struct.nvkm_dp** %26, align 8
  store %struct.nvkm_dp* %27, %struct.nvkm_dp** %6, align 8
  %28 = load %struct.nvkm_dp*, %struct.nvkm_dp** %6, align 8
  %29 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load %struct.nvkm_ior*, %struct.nvkm_ior** %30, align 8
  store %struct.nvkm_ior* %31, %struct.nvkm_ior** %7, align 8
  %32 = load %struct.nvkm_ior*, %struct.nvkm_ior** %7, align 8
  %33 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %32, i32 0, i32 2
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.nvkm_bios*, %struct.nvkm_bios** %39, align 8
  store %struct.nvkm_bios* %40, %struct.nvkm_bios** %8, align 8
  store i32 0, i32* %17, align 4
  br label %41

41:                                               ; preds = %188, %2
  %42 = load i32, i32* %17, align 4
  %43 = load %struct.nvkm_ior*, %struct.nvkm_ior** %7, align 8
  %44 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %191

48:                                               ; preds = %41
  %49 = load %struct.lt_state*, %struct.lt_state** %4, align 8
  %50 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %17, align 4
  %53 = ashr i32 %52, 1
  %54 = add nsw i32 4, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %17, align 4
  %59 = and i32 %58, 1
  %60 = mul nsw i32 %59, 4
  %61 = ashr i32 %57, %60
  %62 = and i32 %61, 15
  store i32 %62, i32* %18, align 4
  %63 = load %struct.lt_state*, %struct.lt_state** %4, align 8
  %64 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %17, align 4
  %67 = mul nsw i32 %66, 2
  %68 = ashr i32 %65, %67
  %69 = and i32 %68, 3
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %18, align 4
  %71 = and i32 %70, 12
  %72 = ashr i32 %71, 2
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %18, align 4
  %74 = and i32 %73, 3
  %75 = ashr i32 %74, 0
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %20, align 4
  %77 = sub nsw i32 3, %76
  store i32 %77, i32* %22, align 4
  store i32 3, i32* %23, align 4
  store i32 3, i32* %24, align 4
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %24, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %48
  %82 = load i32, i32* %24, align 4
  %83 = load i32, i32* @DPCD_LC0F_LANE0_MAX_POST_CURSOR2_REACHED, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %19, align 4
  br label %85

85:                                               ; preds = %81, %48
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %23, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i32, i32* %23, align 4
  %91 = load i32, i32* @DPCD_LC03_MAX_SWING_REACHED, align 4
  %92 = or i32 %90, %91
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %20, align 4
  %94 = and i32 %93, 3
  %95 = sub nsw i32 3, %94
  store i32 %95, i32* %22, align 4
  store i32 %95, i32* %21, align 4
  br label %105

96:                                               ; preds = %85
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %22, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* @DPCD_LC03_MAX_SWING_REACHED, align 4
  %103 = or i32 %101, %102
  store i32 %103, i32* %21, align 4
  br label %104

104:                                              ; preds = %100, %96
  br label %105

105:                                              ; preds = %104, %89
  %106 = load i32, i32* %20, align 4
  %107 = shl i32 %106, 3
  %108 = load i32, i32* %21, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.lt_state*, %struct.lt_state** %4, align 8
  %111 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %109, i32* %115, align 4
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %17, align 4
  %118 = and i32 %117, 1
  %119 = mul nsw i32 %118, 4
  %120 = shl i32 %116, %119
  %121 = load %struct.lt_state*, %struct.lt_state** %4, align 8
  %122 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %17, align 4
  %125 = ashr i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %120
  store i32 %129, i32* %127, align 4
  %130 = load %struct.nvkm_dp*, %struct.nvkm_dp** %6, align 8
  %131 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %130, i32 0, i32 1
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.lt_state*, %struct.lt_state** %4, align 8
  %134 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %19, align 4
  %141 = call i32 @OUTP_TRACE(%struct.TYPE_18__* %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %132, i32 %139, i32 %140)
  %142 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %143 = load %struct.nvkm_dp*, %struct.nvkm_dp** %6, align 8
  %144 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.nvkm_dp*, %struct.nvkm_dp** %6, align 8
  %149 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @nvbios_dpout_match(%struct.nvkm_bios* %142, i32 %147, i32 %152, i32* %11, i32* %12, i32* %13, i32* %14, %struct.nvbios_dpout* %9)
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %105
  br label %188

157:                                              ; preds = %105
  %158 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* %19, align 4
  %161 = and i32 %160, 3
  %162 = load i32, i32* %21, align 4
  %163 = and i32 %162, 3
  %164 = load i32, i32* %20, align 4
  %165 = and i32 %164, 3
  %166 = call i32 @nvbios_dpcfg_match(%struct.nvkm_bios* %158, i32 %159, i32 %161, i32 %163, i32 %165, i32* %11, i32* %12, i32* %13, i32* %14, %struct.nvbios_dpcfg* %10)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %157
  br label %188

170:                                              ; preds = %157
  %171 = load %struct.nvkm_ior*, %struct.nvkm_ior** %7, align 8
  %172 = getelementptr inbounds %struct.nvkm_ior, %struct.nvkm_ior* %171, i32 0, i32 0
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i32 (%struct.nvkm_ior*, i32, i32, i32, i32, i32)*, i32 (%struct.nvkm_ior*, i32, i32, i32, i32, i32)** %175, align 8
  %177 = load %struct.nvkm_ior*, %struct.nvkm_ior** %7, align 8
  %178 = load i32, i32* %17, align 4
  %179 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %10, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %10, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %10, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.nvbios_dpcfg, %struct.nvbios_dpcfg* %10, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 %176(%struct.nvkm_ior* %177, i32 %178, i32 %180, i32 %182, i32 %184, i32 %186)
  br label %188

188:                                              ; preds = %170, %169, %156
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %41

191:                                              ; preds = %41
  %192 = load %struct.nvkm_dp*, %struct.nvkm_dp** %6, align 8
  %193 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @DPCD_LC03(i32 0)
  %196 = load %struct.lt_state*, %struct.lt_state** %4, align 8
  %197 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @nvkm_wraux(i32 %194, i32 %195, i32* %198, i32 4)
  store i32 %199, i32* %16, align 4
  %200 = load i32, i32* %16, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %191
  %203 = load i32, i32* %16, align 4
  store i32 %203, i32* %3, align 4
  br label %222

204:                                              ; preds = %191
  %205 = load i32, i32* %5, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %221

207:                                              ; preds = %204
  %208 = load %struct.nvkm_dp*, %struct.nvkm_dp** %6, align 8
  %209 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @DPCD_LC0F, align 4
  %212 = load %struct.lt_state*, %struct.lt_state** %4, align 8
  %213 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @nvkm_wraux(i32 %210, i32 %211, i32* %214, i32 2)
  store i32 %215, i32* %16, align 4
  %216 = load i32, i32* %16, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %207
  %219 = load i32, i32* %16, align 4
  store i32 %219, i32* %3, align 4
  br label %222

220:                                              ; preds = %207
  br label %221

221:                                              ; preds = %220, %204
  store i32 0, i32* %3, align 4
  br label %222

222:                                              ; preds = %221, %218, %202
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i32 @OUTP_TRACE(%struct.TYPE_18__*, i8*, i32, i32, i32) #1

declare dso_local i32 @nvbios_dpout_match(%struct.nvkm_bios*, i32, i32, i32*, i32*, i32*, i32*, %struct.nvbios_dpout*) #1

declare dso_local i32 @nvbios_dpcfg_match(%struct.nvkm_bios*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, %struct.nvbios_dpcfg*) #1

declare dso_local i32 @nvkm_wraux(i32, i32, i32*, i32) #1

declare dso_local i32 @DPCD_LC03(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
