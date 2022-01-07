; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_navi14_reg_init.c_navi14_reg_base_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_navi14_reg_init.c_navi14_reg_base_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_28__ = type { i32* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_18__ = type { i32* }
%struct.amdgpu_device = type { i32*** }

@MAX_INSTANCE = common dso_local global i32 0, align 4
@GC_BASE = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@GC_HWIP = common dso_local global i64 0, align 8
@HDP_BASE = common dso_local global %struct.TYPE_28__ zeroinitializer, align 8
@HDP_HWIP = common dso_local global i64 0, align 8
@MMHUB_BASE = common dso_local global %struct.TYPE_27__ zeroinitializer, align 8
@MMHUB_HWIP = common dso_local global i64 0, align 8
@ATHUB_BASE = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@ATHUB_HWIP = common dso_local global i64 0, align 8
@NBIF0_BASE = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@NBIO_HWIP = common dso_local global i64 0, align 8
@MP0_BASE = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@MP0_HWIP = common dso_local global i64 0, align 8
@MP1_BASE = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@MP1_HWIP = common dso_local global i64 0, align 8
@UVD0_BASE = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@VCN_HWIP = common dso_local global i64 0, align 8
@DF_BASE = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@DF_HWIP = common dso_local global i64 0, align 8
@DMU_BASE = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@DCE_HWIP = common dso_local global i64 0, align 8
@OSSSYS_BASE = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@OSSSYS_HWIP = common dso_local global i64 0, align 8
@SDMA0_HWIP = common dso_local global i64 0, align 8
@SDMA1_HWIP = common dso_local global i64 0, align 8
@SMUIO_BASE = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@SMUIO_HWIP = common dso_local global i64 0, align 8
@THM_BASE = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@THM_HWIP = common dso_local global i64 0, align 8
@CLK_BASE = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@CLK_HWIP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @navi14_reg_base_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %217, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAX_INSTANCE, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %220

8:                                                ; preds = %4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @GC_BASE, i32 0, i32 0), align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i32***, i32**** %14, align 8
  %16 = load i64, i64* @GC_HWIP, align 8
  %17 = getelementptr inbounds i32**, i32*** %15, i64 %16
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  store i32* %12, i32** %21, align 8
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @HDP_BASE, i32 0, i32 0), align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = load i32***, i32**** %27, align 8
  %29 = load i64, i64* @HDP_HWIP, align 8
  %30 = getelementptr inbounds i32**, i32*** %28, i64 %29
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  store i32* %25, i32** %34, align 8
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @MMHUB_BASE, i32 0, i32 0), align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = load i32***, i32**** %40, align 8
  %42 = load i64, i64* @MMHUB_HWIP, align 8
  %43 = getelementptr inbounds i32**, i32*** %41, i64 %42
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  store i32* %38, i32** %47, align 8
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ATHUB_BASE, i32 0, i32 0), align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 0
  %54 = load i32***, i32**** %53, align 8
  %55 = load i64, i64* @ATHUB_HWIP, align 8
  %56 = getelementptr inbounds i32**, i32*** %54, i64 %55
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  store i32* %51, i32** %60, align 8
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @NBIF0_BASE, i32 0, i32 0), align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 0
  %67 = load i32***, i32**** %66, align 8
  %68 = load i64, i64* @NBIO_HWIP, align 8
  %69 = getelementptr inbounds i32**, i32*** %67, i64 %68
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  store i32* %64, i32** %73, align 8
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @MP0_BASE, i32 0, i32 0), align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 0
  %80 = load i32***, i32**** %79, align 8
  %81 = load i64, i64* @MP0_HWIP, align 8
  %82 = getelementptr inbounds i32**, i32*** %80, i64 %81
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  store i32* %77, i32** %86, align 8
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @MP1_BASE, i32 0, i32 0), align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 0
  %93 = load i32***, i32**** %92, align 8
  %94 = load i64, i64* @MP1_HWIP, align 8
  %95 = getelementptr inbounds i32**, i32*** %93, i64 %94
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  store i32* %90, i32** %99, align 8
  %100 = load i32*, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @UVD0_BASE, i32 0, i32 0), align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 0
  %106 = load i32***, i32**** %105, align 8
  %107 = load i64, i64* @VCN_HWIP, align 8
  %108 = getelementptr inbounds i32**, i32*** %106, i64 %107
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  store i32* %103, i32** %112, align 8
  %113 = load i32*, i32** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @DF_BASE, i32 0, i32 0), align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 0
  %119 = load i32***, i32**** %118, align 8
  %120 = load i64, i64* @DF_HWIP, align 8
  %121 = getelementptr inbounds i32**, i32*** %119, i64 %120
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  store i32* %116, i32** %125, align 8
  %126 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @DMU_BASE, i32 0, i32 0), align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %131 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %130, i32 0, i32 0
  %132 = load i32***, i32**** %131, align 8
  %133 = load i64, i64* @DCE_HWIP, align 8
  %134 = getelementptr inbounds i32**, i32*** %132, i64 %133
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  store i32* %129, i32** %138, align 8
  %139 = load i32*, i32** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @OSSSYS_BASE, i32 0, i32 0), align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %144 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %143, i32 0, i32 0
  %145 = load i32***, i32**** %144, align 8
  %146 = load i64, i64* @OSSSYS_HWIP, align 8
  %147 = getelementptr inbounds i32**, i32*** %145, i64 %146
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %148, i64 %150
  store i32* %142, i32** %151, align 8
  %152 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @GC_BASE, i32 0, i32 0), align 8
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %157 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %156, i32 0, i32 0
  %158 = load i32***, i32**** %157, align 8
  %159 = load i64, i64* @SDMA0_HWIP, align 8
  %160 = getelementptr inbounds i32**, i32*** %158, i64 %159
  %161 = load i32**, i32*** %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  store i32* %155, i32** %164, align 8
  %165 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @GC_BASE, i32 0, i32 0), align 8
  %166 = load i32, i32* %3, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %170 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %169, i32 0, i32 0
  %171 = load i32***, i32**** %170, align 8
  %172 = load i64, i64* @SDMA1_HWIP, align 8
  %173 = getelementptr inbounds i32**, i32*** %171, i64 %172
  %174 = load i32**, i32*** %173, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  store i32* %168, i32** %177, align 8
  %178 = load i32*, i32** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @SMUIO_BASE, i32 0, i32 0), align 8
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %183 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %182, i32 0, i32 0
  %184 = load i32***, i32**** %183, align 8
  %185 = load i64, i64* @SMUIO_HWIP, align 8
  %186 = getelementptr inbounds i32**, i32*** %184, i64 %185
  %187 = load i32**, i32*** %186, align 8
  %188 = load i32, i32* %3, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32*, i32** %187, i64 %189
  store i32* %181, i32** %190, align 8
  %191 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @THM_BASE, i32 0, i32 0), align 8
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %196 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %195, i32 0, i32 0
  %197 = load i32***, i32**** %196, align 8
  %198 = load i64, i64* @THM_HWIP, align 8
  %199 = getelementptr inbounds i32**, i32*** %197, i64 %198
  %200 = load i32**, i32*** %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %200, i64 %202
  store i32* %194, i32** %203, align 8
  %204 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @CLK_BASE, i32 0, i32 0), align 8
  %205 = load i32, i32* %3, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %209 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %208, i32 0, i32 0
  %210 = load i32***, i32**** %209, align 8
  %211 = load i64, i64* @CLK_HWIP, align 8
  %212 = getelementptr inbounds i32**, i32*** %210, i64 %211
  %213 = load i32**, i32*** %212, align 8
  %214 = load i32, i32* %3, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32*, i32** %213, i64 %215
  store i32* %207, i32** %216, align 8
  br label %217

217:                                              ; preds = %8
  %218 = load i32, i32* %3, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %3, align 4
  br label %4

220:                                              ; preds = %4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
