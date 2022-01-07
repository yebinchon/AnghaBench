; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_program_surface_flip_and_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_program_surface_flip_and_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { %struct.dc_plane_address }
%struct.dc_plane_address = type { i32, %struct.TYPE_17__, i32, %struct.TYPE_25__, %struct.TYPE_20__ }
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
%struct.dcn10_hubp = type { i32 }

@DCSURF_FLIP_CONTROL = common dso_local global i32 0, align 4
@SURFACE_FLIP_TYPE = common dso_local global i32 0, align 4
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
define dso_local i32 @hubp1_program_surface_flip_and_addr(%struct.hubp* %0, %struct.dc_plane_address* %1, i32 %2) #0 {
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca %struct.dc_plane_address*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dcn10_hubp*, align 8
  store %struct.hubp* %0, %struct.hubp** %4, align 8
  store %struct.dc_plane_address* %1, %struct.dc_plane_address** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hubp*, %struct.hubp** %4, align 8
  %9 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %8)
  store %struct.dcn10_hubp* %9, %struct.dcn10_hubp** %7, align 8
  %10 = load i32, i32* @DCSURF_FLIP_CONTROL, align 4
  %11 = load i32, i32* @SURFACE_FLIP_TYPE, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @REG_UPDATE(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %15 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* @DCSURF_FLIP_CONTROL, align 4
  %20 = load i32, i32* @SURFACE_FLIP_MODE_FOR_STEREOSYNC, align 4
  %21 = call i32 @REG_UPDATE(i32 %19, i32 %20, i32 1)
  %22 = load i32, i32* @DCSURF_FLIP_CONTROL, align 4
  %23 = load i32, i32* @SURFACE_FLIP_IN_STEREOSYNC, align 4
  %24 = call i32 @REG_UPDATE(i32 %22, i32 %23, i32 1)
  br label %32

25:                                               ; preds = %3
  %26 = load i32, i32* @DCSURF_FLIP_CONTROL, align 4
  %27 = load i32, i32* @SURFACE_FLIP_MODE_FOR_STEREOSYNC, align 4
  %28 = call i32 @REG_UPDATE(i32 %26, i32 %27, i32 0)
  %29 = load i32, i32* @DCSURF_FLIP_CONTROL, align 4
  %30 = load i32, i32* @SURFACE_FLIP_IN_STEREOSYNC, align 4
  %31 = call i32 @REG_UPDATE(i32 %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %25, %18
  %33 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %34 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %332 [
    i32 130, label %36
    i32 128, label %95
    i32 129, label %201
  ]

36:                                               ; preds = %32
  %37 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %38 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %334

44:                                               ; preds = %36
  %45 = load i32, i32* @DCSURF_SURFACE_CONTROL, align 4
  %46 = load i32, i32* @PRIMARY_SURFACE_TMZ, align 4
  %47 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %48 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PRIMARY_META_SURFACE_TMZ, align 4
  %51 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %52 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @REG_UPDATE_2(i32 %45, i32 %46, i32 %49, i32 %50, i32 %53)
  %55 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %56 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %44
  %62 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH, align 4
  %63 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS_HIGH, align 4
  %64 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %65 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @REG_SET(i32 %62, i32 0, i32 %63, i32 %68)
  %70 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS, align 4
  %71 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS, align 4
  %72 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %73 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @REG_SET(i32 %70, i32 0, i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %61, %44
  %79 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH, align 4
  %80 = load i32, i32* @PRIMARY_SURFACE_ADDRESS_HIGH, align 4
  %81 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %82 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @REG_SET(i32 %79, i32 0, i32 %80, i32 %85)
  %87 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS, align 4
  %88 = load i32, i32* @PRIMARY_SURFACE_ADDRESS, align 4
  %89 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %90 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @REG_SET(i32 %87, i32 0, i32 %88, i32 %93)
  br label %334

95:                                               ; preds = %32
  %96 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %97 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %104 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102, %95
  br label %334

110:                                              ; preds = %102
  %111 = load i32, i32* @DCSURF_SURFACE_CONTROL, align 4
  %112 = load i32, i32* @PRIMARY_SURFACE_TMZ, align 4
  %113 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %114 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @PRIMARY_SURFACE_TMZ_C, align 4
  %117 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %118 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @PRIMARY_META_SURFACE_TMZ, align 4
  %121 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %122 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @PRIMARY_META_SURFACE_TMZ_C, align 4
  %125 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %126 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @REG_UPDATE_4(i32 %111, i32 %112, i32 %115, i32 %116, i32 %119, i32 %120, i32 %123, i32 %124, i32 %127)
  %129 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %130 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %168

135:                                              ; preds = %110
  %136 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH_C, align 4
  %137 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS_HIGH_C, align 4
  %138 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %139 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @REG_SET(i32 %136, i32 0, i32 %137, i32 %142)
  %144 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS_C, align 4
  %145 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS_C, align 4
  %146 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %147 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @REG_SET(i32 %144, i32 0, i32 %145, i32 %150)
  %152 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH, align 4
  %153 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS_HIGH, align 4
  %154 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %155 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @REG_SET(i32 %152, i32 0, i32 %153, i32 %158)
  %160 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS, align 4
  %161 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS, align 4
  %162 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %163 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @REG_SET(i32 %160, i32 0, i32 %161, i32 %166)
  br label %168

168:                                              ; preds = %135, %110
  %169 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH_C, align 4
  %170 = load i32, i32* @PRIMARY_SURFACE_ADDRESS_HIGH_C, align 4
  %171 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %172 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @REG_SET(i32 %169, i32 0, i32 %170, i32 %175)
  %177 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS_C, align 4
  %178 = load i32, i32* @PRIMARY_SURFACE_ADDRESS_C, align 4
  %179 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %180 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @REG_SET(i32 %177, i32 0, i32 %178, i32 %183)
  %185 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH, align 4
  %186 = load i32, i32* @PRIMARY_SURFACE_ADDRESS_HIGH, align 4
  %187 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %188 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @REG_SET(i32 %185, i32 0, i32 %186, i32 %191)
  %193 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS, align 4
  %194 = load i32, i32* @PRIMARY_SURFACE_ADDRESS, align 4
  %195 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %196 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @REG_SET(i32 %193, i32 0, i32 %194, i32 %199)
  br label %334

201:                                              ; preds = %32
  %202 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %203 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  br label %334

209:                                              ; preds = %201
  %210 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %211 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %209
  br label %334

217:                                              ; preds = %209
  %218 = load i32, i32* @DCSURF_SURFACE_CONTROL, align 4
  %219 = load i32, i32* @PRIMARY_SURFACE_TMZ, align 4
  %220 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %221 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @PRIMARY_SURFACE_TMZ_C, align 4
  %224 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %225 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @PRIMARY_META_SURFACE_TMZ, align 4
  %228 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %229 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @PRIMARY_META_SURFACE_TMZ_C, align 4
  %232 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %233 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @SECONDARY_SURFACE_TMZ, align 4
  %236 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %237 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @SECONDARY_SURFACE_TMZ_C, align 4
  %240 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %241 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @SECONDARY_META_SURFACE_TMZ, align 4
  %244 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %245 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @SECONDARY_META_SURFACE_TMZ_C, align 4
  %248 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %249 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @REG_UPDATE_8(i32 %218, i32 %219, i32 %222, i32 %223, i32 %226, i32 %227, i32 %230, i32 %231, i32 %234, i32 %235, i32 %238, i32 %239, i32 %242, i32 %243, i32 %246, i32 %247, i32 %250)
  %252 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %253 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %275

258:                                              ; preds = %217
  %259 = load i32, i32* @DCSURF_SECONDARY_META_SURFACE_ADDRESS_HIGH, align 4
  %260 = load i32, i32* @SECONDARY_META_SURFACE_ADDRESS_HIGH, align 4
  %261 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %262 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @REG_SET(i32 %259, i32 0, i32 %260, i32 %265)
  %267 = load i32, i32* @DCSURF_SECONDARY_META_SURFACE_ADDRESS, align 4
  %268 = load i32, i32* @SECONDARY_META_SURFACE_ADDRESS, align 4
  %269 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %270 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @REG_SET(i32 %267, i32 0, i32 %268, i32 %273)
  br label %275

275:                                              ; preds = %258, %217
  %276 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %277 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %299

282:                                              ; preds = %275
  %283 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH, align 4
  %284 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS_HIGH, align 4
  %285 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %286 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @REG_SET(i32 %283, i32 0, i32 %284, i32 %289)
  %291 = load i32, i32* @DCSURF_PRIMARY_META_SURFACE_ADDRESS, align 4
  %292 = load i32, i32* @PRIMARY_META_SURFACE_ADDRESS, align 4
  %293 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %294 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @REG_SET(i32 %291, i32 0, i32 %292, i32 %297)
  br label %299

299:                                              ; preds = %282, %275
  %300 = load i32, i32* @DCSURF_SECONDARY_SURFACE_ADDRESS_HIGH, align 4
  %301 = load i32, i32* @SECONDARY_SURFACE_ADDRESS_HIGH, align 4
  %302 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %303 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @REG_SET(i32 %300, i32 0, i32 %301, i32 %306)
  %308 = load i32, i32* @DCSURF_SECONDARY_SURFACE_ADDRESS, align 4
  %309 = load i32, i32* @SECONDARY_SURFACE_ADDRESS, align 4
  %310 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %311 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @REG_SET(i32 %308, i32 0, i32 %309, i32 %314)
  %316 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH, align 4
  %317 = load i32, i32* @PRIMARY_SURFACE_ADDRESS_HIGH, align 4
  %318 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %319 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @REG_SET(i32 %316, i32 0, i32 %317, i32 %322)
  %324 = load i32, i32* @DCSURF_PRIMARY_SURFACE_ADDRESS, align 4
  %325 = load i32, i32* @PRIMARY_SURFACE_ADDRESS, align 4
  %326 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %327 = getelementptr inbounds %struct.dc_plane_address, %struct.dc_plane_address* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @REG_SET(i32 %324, i32 0, i32 %325, i32 %330)
  br label %334

332:                                              ; preds = %32
  %333 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %334

334:                                              ; preds = %332, %299, %216, %208, %168, %109, %78, %43
  %335 = load %struct.hubp*, %struct.hubp** %4, align 8
  %336 = getelementptr inbounds %struct.hubp, %struct.hubp* %335, i32 0, i32 0
  %337 = load %struct.dc_plane_address*, %struct.dc_plane_address** %5, align 8
  %338 = bitcast %struct.dc_plane_address* %336 to i8*
  %339 = bitcast %struct.dc_plane_address* %337 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %338, i8* align 4 %339, i64 124, i1 false)
  ret i32 1
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

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
