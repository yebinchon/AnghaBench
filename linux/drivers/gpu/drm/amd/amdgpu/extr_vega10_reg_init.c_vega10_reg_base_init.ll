; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_reg_init.c_vega10_reg_base_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vega10_reg_init.c_vega10_reg_base_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32* }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_32__ = type { i32* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_34__ = type { i32* }
%struct.TYPE_33__ = type { i32* }
%struct.TYPE_31__ = type { i32* }
%struct.TYPE_28__ = type { i32* }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_40__ = type { i32* }
%struct.TYPE_38__ = type { i32* }
%struct.TYPE_37__ = type { i32* }
%struct.TYPE_36__ = type { i32* }
%struct.TYPE_39__ = type { i32* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_35__ = type { i32* }
%struct.TYPE_30__ = type { i32* }
%struct.amdgpu_device = type { i64*** }

@MAX_INSTANCE = common dso_local global i64 0, align 8
@GC_BASE = common dso_local global %struct.TYPE_27__ zeroinitializer, align 8
@GC_HWIP = common dso_local global i64 0, align 8
@HDP_BASE = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@HDP_HWIP = common dso_local global i64 0, align 8
@MMHUB_BASE = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@MMHUB_HWIP = common dso_local global i64 0, align 8
@ATHUB_BASE = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@ATHUB_HWIP = common dso_local global i64 0, align 8
@NBIO_BASE = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@NBIO_HWIP = common dso_local global i64 0, align 8
@MP0_BASE = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@MP0_HWIP = common dso_local global i64 0, align 8
@MP1_BASE = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@MP1_HWIP = common dso_local global i64 0, align 8
@UVD_BASE = common dso_local global %struct.TYPE_34__ zeroinitializer, align 8
@UVD_HWIP = common dso_local global i64 0, align 8
@VCE_BASE = common dso_local global %struct.TYPE_33__ zeroinitializer, align 8
@VCE_HWIP = common dso_local global i64 0, align 8
@VCN_BASE = common dso_local global %struct.TYPE_31__ zeroinitializer, align 8
@VCN_HWIP = common dso_local global i64 0, align 8
@DF_BASE = common dso_local global %struct.TYPE_28__ zeroinitializer, align 8
@DF_HWIP = common dso_local global i64 0, align 8
@DCE_BASE = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@DCE_HWIP = common dso_local global i64 0, align 8
@OSSSYS_BASE = common dso_local global %struct.TYPE_40__ zeroinitializer, align 8
@OSSSYS_HWIP = common dso_local global i64 0, align 8
@SDMA0_BASE = common dso_local global %struct.TYPE_38__ zeroinitializer, align 8
@SDMA0_HWIP = common dso_local global i64 0, align 8
@SDMA1_BASE = common dso_local global %struct.TYPE_37__ zeroinitializer, align 8
@SDMA1_HWIP = common dso_local global i64 0, align 8
@SMUIO_BASE = common dso_local global %struct.TYPE_36__ zeroinitializer, align 8
@SMUIO_HWIP = common dso_local global i64 0, align 8
@PWR_BASE = common dso_local global %struct.TYPE_39__ zeroinitializer, align 8
@PWR_HWIP = common dso_local global i64 0, align 8
@NBIF_BASE = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@NBIF_HWIP = common dso_local global i64 0, align 8
@THM_BASE = common dso_local global %struct.TYPE_35__ zeroinitializer, align 8
@THM_HWIP = common dso_local global i64 0, align 8
@CLK_BASE = common dso_local global %struct.TYPE_30__ zeroinitializer, align 8
@CLK_HWIP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vega10_reg_base_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %249, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @MAX_INSTANCE, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %252

8:                                                ; preds = %4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @GC_BASE, i32 0, i32 0), align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = bitcast i32* %11 to i64*
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i64***, i64**** %14, align 8
  %16 = load i64, i64* @GC_HWIP, align 8
  %17 = getelementptr inbounds i64**, i64*** %15, i64 %16
  %18 = load i64**, i64*** %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i64*, i64** %18, i64 %19
  store i64* %12, i64** %20, align 8
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @HDP_BASE, i32 0, i32 0), align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = bitcast i32* %23 to i64*
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = load i64***, i64**** %26, align 8
  %28 = load i64, i64* @HDP_HWIP, align 8
  %29 = getelementptr inbounds i64**, i64*** %27, i64 %28
  %30 = load i64**, i64*** %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds i64*, i64** %30, i64 %31
  store i64* %24, i64** %32, align 8
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @MMHUB_BASE, i32 0, i32 0), align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = bitcast i32* %35 to i64*
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = load i64***, i64**** %38, align 8
  %40 = load i64, i64* @MMHUB_HWIP, align 8
  %41 = getelementptr inbounds i64**, i64*** %39, i64 %40
  %42 = load i64**, i64*** %41, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds i64*, i64** %42, i64 %43
  store i64* %36, i64** %44, align 8
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @ATHUB_BASE, i32 0, i32 0), align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = bitcast i32* %47 to i64*
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 0
  %51 = load i64***, i64**** %50, align 8
  %52 = load i64, i64* @ATHUB_HWIP, align 8
  %53 = getelementptr inbounds i64**, i64*** %51, i64 %52
  %54 = load i64**, i64*** %53, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds i64*, i64** %54, i64 %55
  store i64* %48, i64** %56, align 8
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @NBIO_BASE, i32 0, i32 0), align 8
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = bitcast i32* %59 to i64*
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 0
  %63 = load i64***, i64**** %62, align 8
  %64 = load i64, i64* @NBIO_HWIP, align 8
  %65 = getelementptr inbounds i64**, i64*** %63, i64 %64
  %66 = load i64**, i64*** %65, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds i64*, i64** %66, i64 %67
  store i64* %60, i64** %68, align 8
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @MP0_BASE, i32 0, i32 0), align 8
  %70 = load i64, i64* %3, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = bitcast i32* %71 to i64*
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 0
  %75 = load i64***, i64**** %74, align 8
  %76 = load i64, i64* @MP0_HWIP, align 8
  %77 = getelementptr inbounds i64**, i64*** %75, i64 %76
  %78 = load i64**, i64*** %77, align 8
  %79 = load i64, i64* %3, align 8
  %80 = getelementptr inbounds i64*, i64** %78, i64 %79
  store i64* %72, i64** %80, align 8
  %81 = load i32*, i32** getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @MP1_BASE, i32 0, i32 0), align 8
  %82 = load i64, i64* %3, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = bitcast i32* %83 to i64*
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 0
  %87 = load i64***, i64**** %86, align 8
  %88 = load i64, i64* @MP1_HWIP, align 8
  %89 = getelementptr inbounds i64**, i64*** %87, i64 %88
  %90 = load i64**, i64*** %89, align 8
  %91 = load i64, i64* %3, align 8
  %92 = getelementptr inbounds i64*, i64** %90, i64 %91
  store i64* %84, i64** %92, align 8
  %93 = load i32*, i32** getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @UVD_BASE, i32 0, i32 0), align 8
  %94 = load i64, i64* %3, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = bitcast i32* %95 to i64*
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 0
  %99 = load i64***, i64**** %98, align 8
  %100 = load i64, i64* @UVD_HWIP, align 8
  %101 = getelementptr inbounds i64**, i64*** %99, i64 %100
  %102 = load i64**, i64*** %101, align 8
  %103 = load i64, i64* %3, align 8
  %104 = getelementptr inbounds i64*, i64** %102, i64 %103
  store i64* %96, i64** %104, align 8
  %105 = load i32*, i32** getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @VCE_BASE, i32 0, i32 0), align 8
  %106 = load i64, i64* %3, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = bitcast i32* %107 to i64*
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 0
  %111 = load i64***, i64**** %110, align 8
  %112 = load i64, i64* @VCE_HWIP, align 8
  %113 = getelementptr inbounds i64**, i64*** %111, i64 %112
  %114 = load i64**, i64*** %113, align 8
  %115 = load i64, i64* %3, align 8
  %116 = getelementptr inbounds i64*, i64** %114, i64 %115
  store i64* %108, i64** %116, align 8
  %117 = load i32*, i32** getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @VCN_BASE, i32 0, i32 0), align 8
  %118 = load i64, i64* %3, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = bitcast i32* %119 to i64*
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %122 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %121, i32 0, i32 0
  %123 = load i64***, i64**** %122, align 8
  %124 = load i64, i64* @VCN_HWIP, align 8
  %125 = getelementptr inbounds i64**, i64*** %123, i64 %124
  %126 = load i64**, i64*** %125, align 8
  %127 = load i64, i64* %3, align 8
  %128 = getelementptr inbounds i64*, i64** %126, i64 %127
  store i64* %120, i64** %128, align 8
  %129 = load i32*, i32** getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @DF_BASE, i32 0, i32 0), align 8
  %130 = load i64, i64* %3, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = bitcast i32* %131 to i64*
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 0
  %135 = load i64***, i64**** %134, align 8
  %136 = load i64, i64* @DF_HWIP, align 8
  %137 = getelementptr inbounds i64**, i64*** %135, i64 %136
  %138 = load i64**, i64*** %137, align 8
  %139 = load i64, i64* %3, align 8
  %140 = getelementptr inbounds i64*, i64** %138, i64 %139
  store i64* %132, i64** %140, align 8
  %141 = load i32*, i32** getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @DCE_BASE, i32 0, i32 0), align 8
  %142 = load i64, i64* %3, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = bitcast i32* %143 to i64*
  %145 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %146 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %145, i32 0, i32 0
  %147 = load i64***, i64**** %146, align 8
  %148 = load i64, i64* @DCE_HWIP, align 8
  %149 = getelementptr inbounds i64**, i64*** %147, i64 %148
  %150 = load i64**, i64*** %149, align 8
  %151 = load i64, i64* %3, align 8
  %152 = getelementptr inbounds i64*, i64** %150, i64 %151
  store i64* %144, i64** %152, align 8
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_40__, %struct.TYPE_40__* @OSSSYS_BASE, i32 0, i32 0), align 8
  %154 = load i64, i64* %3, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = bitcast i32* %155 to i64*
  %157 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %158 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %157, i32 0, i32 0
  %159 = load i64***, i64**** %158, align 8
  %160 = load i64, i64* @OSSSYS_HWIP, align 8
  %161 = getelementptr inbounds i64**, i64*** %159, i64 %160
  %162 = load i64**, i64*** %161, align 8
  %163 = load i64, i64* %3, align 8
  %164 = getelementptr inbounds i64*, i64** %162, i64 %163
  store i64* %156, i64** %164, align 8
  %165 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @SDMA0_BASE, i32 0, i32 0), align 8
  %166 = load i64, i64* %3, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = bitcast i32* %167 to i64*
  %169 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %170 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %169, i32 0, i32 0
  %171 = load i64***, i64**** %170, align 8
  %172 = load i64, i64* @SDMA0_HWIP, align 8
  %173 = getelementptr inbounds i64**, i64*** %171, i64 %172
  %174 = load i64**, i64*** %173, align 8
  %175 = load i64, i64* %3, align 8
  %176 = getelementptr inbounds i64*, i64** %174, i64 %175
  store i64* %168, i64** %176, align 8
  %177 = load i32*, i32** getelementptr inbounds (%struct.TYPE_37__, %struct.TYPE_37__* @SDMA1_BASE, i32 0, i32 0), align 8
  %178 = load i64, i64* %3, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = bitcast i32* %179 to i64*
  %181 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %182 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %181, i32 0, i32 0
  %183 = load i64***, i64**** %182, align 8
  %184 = load i64, i64* @SDMA1_HWIP, align 8
  %185 = getelementptr inbounds i64**, i64*** %183, i64 %184
  %186 = load i64**, i64*** %185, align 8
  %187 = load i64, i64* %3, align 8
  %188 = getelementptr inbounds i64*, i64** %186, i64 %187
  store i64* %180, i64** %188, align 8
  %189 = load i32*, i32** getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @SMUIO_BASE, i32 0, i32 0), align 8
  %190 = load i64, i64* %3, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = bitcast i32* %191 to i64*
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %194 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %193, i32 0, i32 0
  %195 = load i64***, i64**** %194, align 8
  %196 = load i64, i64* @SMUIO_HWIP, align 8
  %197 = getelementptr inbounds i64**, i64*** %195, i64 %196
  %198 = load i64**, i64*** %197, align 8
  %199 = load i64, i64* %3, align 8
  %200 = getelementptr inbounds i64*, i64** %198, i64 %199
  store i64* %192, i64** %200, align 8
  %201 = load i32*, i32** getelementptr inbounds (%struct.TYPE_39__, %struct.TYPE_39__* @PWR_BASE, i32 0, i32 0), align 8
  %202 = load i64, i64* %3, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = bitcast i32* %203 to i64*
  %205 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %206 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %205, i32 0, i32 0
  %207 = load i64***, i64**** %206, align 8
  %208 = load i64, i64* @PWR_HWIP, align 8
  %209 = getelementptr inbounds i64**, i64*** %207, i64 %208
  %210 = load i64**, i64*** %209, align 8
  %211 = load i64, i64* %3, align 8
  %212 = getelementptr inbounds i64*, i64** %210, i64 %211
  store i64* %204, i64** %212, align 8
  %213 = load i32*, i32** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @NBIF_BASE, i32 0, i32 0), align 8
  %214 = load i64, i64* %3, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = bitcast i32* %215 to i64*
  %217 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %218 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %217, i32 0, i32 0
  %219 = load i64***, i64**** %218, align 8
  %220 = load i64, i64* @NBIF_HWIP, align 8
  %221 = getelementptr inbounds i64**, i64*** %219, i64 %220
  %222 = load i64**, i64*** %221, align 8
  %223 = load i64, i64* %3, align 8
  %224 = getelementptr inbounds i64*, i64** %222, i64 %223
  store i64* %216, i64** %224, align 8
  %225 = load i32*, i32** getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @THM_BASE, i32 0, i32 0), align 8
  %226 = load i64, i64* %3, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = bitcast i32* %227 to i64*
  %229 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %230 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %229, i32 0, i32 0
  %231 = load i64***, i64**** %230, align 8
  %232 = load i64, i64* @THM_HWIP, align 8
  %233 = getelementptr inbounds i64**, i64*** %231, i64 %232
  %234 = load i64**, i64*** %233, align 8
  %235 = load i64, i64* %3, align 8
  %236 = getelementptr inbounds i64*, i64** %234, i64 %235
  store i64* %228, i64** %236, align 8
  %237 = load i32*, i32** getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @CLK_BASE, i32 0, i32 0), align 8
  %238 = load i64, i64* %3, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = bitcast i32* %239 to i64*
  %241 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %242 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %241, i32 0, i32 0
  %243 = load i64***, i64**** %242, align 8
  %244 = load i64, i64* @CLK_HWIP, align 8
  %245 = getelementptr inbounds i64**, i64*** %243, i64 %244
  %246 = load i64**, i64*** %245, align 8
  %247 = load i64, i64* %3, align 8
  %248 = getelementptr inbounds i64*, i64** %246, i64 %247
  store i64* %240, i64** %248, align 8
  br label %249

249:                                              ; preds = %8
  %250 = load i64, i64* %3, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* %3, align 8
  br label %4

252:                                              ; preds = %4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
