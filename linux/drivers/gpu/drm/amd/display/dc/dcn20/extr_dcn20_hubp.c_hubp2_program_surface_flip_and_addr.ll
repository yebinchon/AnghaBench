; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_program_surface_flip_and_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_program_surface_flip_and_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { %struct.dc_plane_address }
%struct.dc_plane_address = type { i32, i32, %struct.TYPE_17__, i32, %struct.TYPE_25__, %struct.TYPE_20__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_26__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.dcn20_hubp = type { i32 }

@DCSURF_FLIP_CONTROL = common dso_local global i32 0, align 4
@SURFACE_FLIP_TYPE = common dso_local global i32 0, align 4
@VMID_SETTINGS_0 = common dso_local global i32 0, align 4
@VMID = common dso_local global i32 0, align 4
@SURFACE_FLIP_MODE_FOR_STEREOSYNC = common dso_local global i32 0, align 4
@SURFACE_FLIP_IN_STEREOSYNC = common dso_local global i32 0, align 4
@DCSURF_SURFACE_CONTROL = common dso_local global i32 0, align 4
@PRIMARY_SURFACE_TMZ = common dso_local global i32 0, align 4
@PRIMARY_META_SURFACE_TMZ = common dso_local global i32 0, align 4
@DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@PRIMARY_META_SURFACE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@DCSURF_PRIMARY_META_SURFACE_ADDRESS = common dso_local global i32 0, align 4
@PRIMARY_META_SURFACE_ADDRESS = common dso_local global i32 0, align 4
@DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@PRIMARY_SURFACE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@DCSURF_PRIMARY_SURFACE_ADDRESS = common dso_local global i32 0, align 4
@PRIMARY_SURFACE_ADDRESS = common dso_local global i32 0, align 4
@PRIMARY_SURFACE_TMZ_C = common dso_local global i32 0, align 4
@PRIMARY_META_SURFACE_TMZ_C = common dso_local global i32 0, align 4
@DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH_C = common dso_local global i32 0, align 4
@PRIMARY_META_SURFACE_ADDRESS_HIGH_C = common dso_local global i32 0, align 4
@DCSURF_PRIMARY_META_SURFACE_ADDRESS_C = common dso_local global i32 0, align 4
@PRIMARY_META_SURFACE_ADDRESS_C = common dso_local global i32 0, align 4
@DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH_C = common dso_local global i32 0, align 4
@PRIMARY_SURFACE_ADDRESS_HIGH_C = common dso_local global i32 0, align 4
@DCSURF_PRIMARY_SURFACE_ADDRESS_C = common dso_local global i32 0, align 4
@PRIMARY_SURFACE_ADDRESS_C = common dso_local global i32 0, align 4
@SECONDARY_SURFACE_TMZ = common dso_local global i32 0, align 4
@SECONDARY_SURFACE_TMZ_C = common dso_local global i32 0, align 4
@SECONDARY_META_SURFACE_TMZ = common dso_local global i32 0, align 4
@SECONDARY_META_SURFACE_TMZ_C = common dso_local global i32 0, align 4
@DCSURF_SECONDARY_META_SURFACE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@SECONDARY_META_SURFACE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@DCSURF_SECONDARY_META_SURFACE_ADDRESS = common dso_local global i32 0, align 4
@SECONDARY_META_SURFACE_ADDRESS = common dso_local global i32 0, align 4
@DCSURF_SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@SECONDARY_SURFACE_ADDRESS_HIGH = common dso_local global i32 0, align 4
@DCSURF_SECONDARY_SURFACE_ADDRESS = common dso_local global i32 0, align 4
@SECONDARY_SURFACE_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hubp2_program_surface_flip_and_addr(%struct.hubp* %0, %struct.dc_plane_address* %1, i32 %2) #0 {
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca %struct.dc_plane_address*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn20_hubp*, align 8
  store %struct.hubp* %0, %struct.hubp** %4, align 8
  store %struct.dc_plane_address* %1, %struct.dc_plane_address** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hubp*, %struct.hubp** %4, align 8
  %9 = call %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp* %8)
  store %struct.dcn20_hubp* %9, %struct.dcn20_hubp** %7, align 8
  %10 = load i32, i32* @DCSURF_FLIP_CONTROL, align 4
  %11 = load i32, i32* @SURFACE_FLIP_TYPE, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @REG_UPDATE(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @VMID_SETTINGS_0, align 4
  %15 = load i32, i32* @VMID, align 4
  %16 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %17 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @REG_UPDATE(i32 %14, i32 %15, i32 %18)
  %20 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %21 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 129
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i32, i32* @DCSURF_FLIP_CONTROL, align 4
  %26 = load i32, i32* @SURFACE_FLIP_MODE_FOR_STEREOSYNC, align 4
  %27 = call i32 @REG_UPDATE(i32 %25, i32 %26, i32 1)
  %28 = load i32, i32* @DCSURF_FLIP_CONTROL, align 4
  %29 = load i32, i32* @SURFACE_FLIP_IN_STEREOSYNC, align 4
  %30 = call i32 @REG_UPDATE(i32 %28, i32 %29, i32 1)
  br label %38

31:                                               ; preds = %3
  %32 = load i32, i32* @DCSURF_FLIP_CONTROL, align 4
  %33 = load i32, i32* @SURFACE_FLIP_MODE_FOR_STEREOSYNC, align 4
  %34 = call i32 @REG_UPDATE(i32 %32, i32 %33, i32 0)
  %35 = load i32, i32* @DCSURF_FLIP_CONTROL, align 4
  %36 = load i32, i32* @SURFACE_FLIP_IN_STEREOSYNC, align 4
  %37 = call i32 @REG_UPDATE(i32 %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %31, %24
  %39 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %40 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %338 [
    i32 130, label %42
    i32 128, label %101
    i32 129, label %207
  ]

42:                                               ; preds = %38
  %43 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %44 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %340

50:                                               ; preds = %42
  %51 = load i32, i32* @DCSURF_SURFACE_CONTROL, align 4
  %52 = load i32, i32* @PRIMARY_SURFACE_TMZ, align 4
  %53 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %54 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PRIMARY_META_SURFACE_TMZ, align 4
  %57 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %58 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @REG_UPDATE_2(i32 %51, i32 %52, i32 %55, i32 %56, i32 %59)
  %61 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %62 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %50
  %68 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH, align 4
  %69 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS_HIGH, align 4
  %70 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %71 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @REG_SET(i32 %68, i32 0, i32 %69, i32 %74)
  %76 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS, align 4
  %77 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS, align 4
  %78 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %79 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @REG_SET(i32 %76, i32 0, i32 %77, i32 %82)
  br label %84

84:                                               ; preds = %67, %50
  %85 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH, align 4
  %86 = load i32, i32* @PRIMARY_SURFACE_ADDRESS_HIGH, align 4
  %87 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %88 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @REG_SET(i32 %85, i32 0, i32 %86, i32 %91)
  %93 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS, align 4
  %94 = load i32, i32* @PRIMARY_SURFACE_ADDRESS, align 4
  %95 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %96 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @REG_SET(i32 %93, i32 0, i32 %94, i32 %99)
  br label %340

101:                                              ; preds = %38
  %102 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %103 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %101
  %109 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %110 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108, %101
  br label %340

116:                                              ; preds = %108
  %117 = load i32, i32* @DCSURF_SURFACE_CONTROL, align 4
  %118 = load i32, i32* @PRIMARY_SURFACE_TMZ, align 4
  %119 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %120 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PRIMARY_SURFACE_TMZ_C, align 4
  %123 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %124 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @PRIMARY_META_SURFACE_TMZ, align 4
  %127 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %128 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PRIMARY_META_SURFACE_TMZ_C, align 4
  %131 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %132 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @REG_UPDATE_4(i32 %117, i32 %118, i32 %121, i32 %122, i32 %125, i32 %126, i32 %129, i32 %130, i32 %133)
  %135 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %136 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %174

141:                                              ; preds = %116
  %142 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH_C, align 4
  %143 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS_HIGH_C, align 4
  %144 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %145 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @REG_SET(i32 %142, i32 0, i32 %143, i32 %148)
  %150 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS_C, align 4
  %151 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS_C, align 4
  %152 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %153 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @REG_SET(i32 %150, i32 0, i32 %151, i32 %156)
  %158 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH, align 4
  %159 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS_HIGH, align 4
  %160 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %161 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @REG_SET(i32 %158, i32 0, i32 %159, i32 %164)
  %166 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS, align 4
  %167 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS, align 4
  %168 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %169 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @REG_SET(i32 %166, i32 0, i32 %167, i32 %172)
  br label %174

174:                                              ; preds = %141, %116
  %175 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH_C, align 4
  %176 = load i32, i32* @PRIMARY_SURFACE_ADDRESS_HIGH_C, align 4
  %177 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %178 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @REG_SET(i32 %175, i32 0, i32 %176, i32 %181)
  %183 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS_C, align 4
  %184 = load i32, i32* @PRIMARY_SURFACE_ADDRESS_C, align 4
  %185 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %186 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @REG_SET(i32 %183, i32 0, i32 %184, i32 %189)
  %191 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH, align 4
  %192 = load i32, i32* @PRIMARY_SURFACE_ADDRESS_HIGH, align 4
  %193 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %194 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @REG_SET(i32 %191, i32 0, i32 %192, i32 %197)
  %199 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS, align 4
  %200 = load i32, i32* @PRIMARY_SURFACE_ADDRESS, align 4
  %201 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %202 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @REG_SET(i32 %199, i32 0, i32 %200, i32 %205)
  br label %340

207:                                              ; preds = %38
  %208 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %209 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %207
  br label %340

215:                                              ; preds = %207
  %216 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %217 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  br label %340

223:                                              ; preds = %215
  %224 = load i32, i32* @DCSURF_SURFACE_CONTROL, align 4
  %225 = load i32, i32* @PRIMARY_SURFACE_TMZ, align 4
  %226 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %227 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @PRIMARY_SURFACE_TMZ_C, align 4
  %230 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %231 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @PRIMARY_META_SURFACE_TMZ, align 4
  %234 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %235 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @PRIMARY_META_SURFACE_TMZ_C, align 4
  %238 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %239 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @SECONDARY_SURFACE_TMZ, align 4
  %242 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %243 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @SECONDARY_SURFACE_TMZ_C, align 4
  %246 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %247 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @SECONDARY_META_SURFACE_TMZ, align 4
  %250 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %251 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @SECONDARY_META_SURFACE_TMZ_C, align 4
  %254 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %255 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @REG_UPDATE_8(i32 %224, i32 %225, i32 %228, i32 %229, i32 %232, i32 %233, i32 %236, i32 %237, i32 %240, i32 %241, i32 %244, i32 %245, i32 %248, i32 %249, i32 %252, i32 %253, i32 %256)
  %258 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %259 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %281

264:                                              ; preds = %223
  %265 = load i32, i32* @DCSURF_SECONDARY_META_SURFACE_ADDRESS_HIGH, align 4
  %266 = load i32, i32* @SECONDARY_META_SURFACE_ADDRESS_HIGH, align 4
  %267 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %268 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @REG_SET(i32 %265, i32 0, i32 %266, i32 %271)
  %273 = load i32, i32* @DCSURF_SECONDARY_META_SURFACE_ADDRESS, align 4
  %274 = load i32, i32* @SECONDARY_META_SURFACE_ADDRESS, align 4
  %275 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %276 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @REG_SET(i32 %273, i32 0, i32 %274, i32 %279)
  br label %281

281:                                              ; preds = %264, %223
  %282 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %283 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %305

288:                                              ; preds = %281
  %289 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH, align 4
  %290 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS_HIGH, align 4
  %291 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %292 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @REG_SET(i32 %289, i32 0, i32 %290, i32 %295)
  %297 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS, align 4
  %298 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS, align 4
  %299 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %300 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @REG_SET(i32 %297, i32 0, i32 %298, i32 %303)
  br label %305

305:                                              ; preds = %288, %281
  %306 = load i32, i32* @DCSURF_SECONDARY_SURFACE_ADDRESS_HIGH, align 4
  %307 = load i32, i32* @SECONDARY_SURFACE_ADDRESS_HIGH, align 4
  %308 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %309 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @REG_SET(i32 %306, i32 0, i32 %307, i32 %312)
  %314 = load i32, i32* @DCSURF_SECONDARY_SURFACE_ADDRESS, align 4
  %315 = load i32, i32* @SECONDARY_SURFACE_ADDRESS, align 4
  %316 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %317 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @REG_SET(i32 %314, i32 0, i32 %315, i32 %320)
  %322 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH, align 4
  %323 = load i32, i32* @PRIMARY_SURFACE_ADDRESS_HIGH, align 4
  %324 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %325 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @REG_SET(i32 %322, i32 0, i32 %323, i32 %328)
  %330 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS, align 4
  %331 = load i32, i32* @PRIMARY_SURFACE_ADDRESS, align 4
  %332 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %333 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %332, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @REG_SET(i32 %330, i32 0, i32 %331, i32 %336)
  br label %340

338:                                              ; preds = %38
  %339 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %340

340:                                              ; preds = %338, %305, %222, %214, %174, %115, %84, %49
  %341 = load %struct.hubp*, %struct.hubp** %4, align 8
  %342 = getelementptr inbounds %struct.hubp, %struct.hubp* %341, i32 0, i32 0
  %343 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %344 = bitcast %struct.dc_plane_address* %342 to i8*
  %345 = bitcast %struct.dc_plane_address* %343 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %344, i8* align 4 %345, i64 128, i1 false)
  ret i32 1
}

declare dso_local %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_4(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
