; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_sor_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_sor_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.dcb_output = type { i32, i32, i32, i32, i32 }
%struct.nouveau_connector = type { i64, %struct.TYPE_12__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_i2c = type { i32 }
%struct.nouveau_encoder = type { i32*, %struct.TYPE_13__, %struct.nvkm_i2c_aux*, i32, %struct.dcb_output* }
%struct.TYPE_13__ = type { i32 }
%struct.nvkm_i2c_aux = type { i32 }
%struct.drm_encoder = type { i32, i64, i32 }
%struct.nv50_disp = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.nvkm_i2c_bus = type { i32 }

@DRM_MODE_ENCODER_LVDS = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_sor_update = common dso_local global i32 0, align 4
@nv50_sor_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sor-%04x-%04x\00", align 1
@nv50_sor_help = common dso_local global i32 0, align 4
@GF110_DISP = common dso_local global i64 0, align 8
@DCB_CONNECTOR_eDP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.dcb_output*)* @nv50_sor_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_sor_create(%struct.drm_connector* %0, %struct.dcb_output* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.dcb_output*, align 8
  %6 = alloca %struct.nouveau_connector*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca %struct.nvkm_i2c*, align 8
  %10 = alloca %struct.nouveau_encoder*, align 8
  %11 = alloca %struct.drm_encoder*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nv50_disp*, align 8
  %20 = alloca %struct.nvkm_i2c_aux*, align 8
  %21 = alloca %struct.nvkm_i2c_bus*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.dcb_output* %1, %struct.dcb_output** %5, align 8
  %22 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %23 = call %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector* %22)
  store %struct.nouveau_connector* %23, %struct.nouveau_connector** %6, align 8
  %24 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %25 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.nouveau_drm* @nouveau_drm(i32 %26)
  store %struct.nouveau_drm* %27, %struct.nouveau_drm** %7, align 8
  %28 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %29 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = call %struct.nvkm_bios* @nvxx_bios(i32* %30)
  store %struct.nvkm_bios* %31, %struct.nvkm_bios** %8, align 8
  %32 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %33 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = call %struct.nvkm_i2c* @nvxx_i2c(i32* %34)
  store %struct.nvkm_i2c* %35, %struct.nvkm_i2c** %9, align 8
  %36 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %37 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %42 [
    i32 129, label %39
    i32 128, label %41
    i32 130, label %41
  ]

39:                                               ; preds = %2
  %40 = load i32, i32* @DRM_MODE_ENCODER_LVDS, align 4
  store i32 %40, i32* %17, align 4
  br label %44

41:                                               ; preds = %2, %2
  br label %42

42:                                               ; preds = %2, %41
  %43 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  store i32 %43, i32* %17, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.nouveau_encoder* @kzalloc(i32 40, i32 %45)
  store %struct.nouveau_encoder* %46, %struct.nouveau_encoder** %10, align 8
  %47 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %48 = icmp ne %struct.nouveau_encoder* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %179

52:                                               ; preds = %44
  %53 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %54 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %55 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %54, i32 0, i32 4
  store %struct.dcb_output* %53, %struct.dcb_output** %55, align 8
  %56 = load i32, i32* @nv50_sor_update, align 4
  %57 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %58 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %60 = call %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder* %59)
  store %struct.drm_encoder* %60, %struct.drm_encoder** %11, align 8
  %61 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %62 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %65 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %67 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %69 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %74 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %77 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @drm_encoder_init(i32 %70, %struct.drm_encoder* %71, i32* @nv50_sor_func, i32 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %78)
  %80 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %81 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %80, i32* @nv50_sor_help)
  %82 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %83 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %84 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %82, %struct.drm_encoder* %83)
  %85 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %86 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 130
  br i1 %88, label %89, label %164

89:                                               ; preds = %52
  %90 = load %struct.drm_encoder*, %struct.drm_encoder** %11, align 8
  %91 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.nv50_disp* @nv50_disp(i32 %92)
  store %struct.nv50_disp* %93, %struct.nv50_disp** %19, align 8
  %94 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %9, align 8
  %95 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %96 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.nvkm_i2c_aux* @nvkm_i2c_aux_find(%struct.nvkm_i2c* %94, i32 %97)
  store %struct.nvkm_i2c_aux* %98, %struct.nvkm_i2c_aux** %20, align 8
  %99 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %20, align 8
  %100 = icmp ne %struct.nvkm_i2c_aux* %99, null
  br i1 %100, label %101, label %125

101:                                              ; preds = %89
  %102 = load %struct.nv50_disp*, %struct.nv50_disp** %19, align 8
  %103 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @GF110_DISP, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %101
  %111 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %20, align 8
  %112 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %111, i32 0, i32 0
  %113 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %114 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %113, i32 0, i32 0
  store i32* %112, i32** %114, align 8
  br label %121

115:                                              ; preds = %101
  %116 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %117 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %120 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %119, i32 0, i32 0
  store i32* %118, i32** %120, align 8
  br label %121

121:                                              ; preds = %115, %110
  %122 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %20, align 8
  %123 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %124 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %123, i32 0, i32 2
  store %struct.nvkm_i2c_aux* %122, %struct.nvkm_i2c_aux** %124, align 8
  br label %125

125:                                              ; preds = %121, %89
  %126 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %127 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DCB_CONNECTOR_eDP, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %163

131:                                              ; preds = %125
  %132 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %133 = call i64 @nvbios_dp_table(%struct.nvkm_bios* %132, i32* %12, i32* %13, i32* %14, i32* %15)
  store i64 %133, i64* %16, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %163

135:                                              ; preds = %131
  %136 = load i32, i32* %12, align 4
  %137 = icmp sge i32 %136, 64
  br i1 %137, label %138, label %163

138:                                              ; preds = %135
  %139 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %140 = load i64, i64* %16, align 8
  %141 = add nsw i64 %140, 8
  %142 = call i32 @nvbios_rd08(%struct.nvkm_bios* %139, i64 %141)
  %143 = and i32 %142, 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %138
  %146 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %147 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %148 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %147, i32 0, i32 2
  %149 = load %struct.nouveau_connector*, %struct.nouveau_connector** %6, align 8
  %150 = getelementptr inbounds %struct.nouveau_connector, %struct.nouveau_connector* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %155 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = call i32 @nv50_mstm_new(%struct.nouveau_encoder* %146, %struct.TYPE_14__* %148, i32 16, i32 %153, i32* %156)
  store i32 %157, i32* %18, align 4
  %158 = load i32, i32* %18, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %145
  %161 = load i32, i32* %18, align 4
  store i32 %161, i32* %3, align 4
  br label %179

162:                                              ; preds = %145
  br label %163

163:                                              ; preds = %162, %138, %135, %131, %125
  br label %178

164:                                              ; preds = %52
  %165 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %9, align 8
  %166 = load %struct.dcb_output*, %struct.dcb_output** %5, align 8
  %167 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c* %165, i32 %168)
  store %struct.nvkm_i2c_bus* %169, %struct.nvkm_i2c_bus** %21, align 8
  %170 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %21, align 8
  %171 = icmp ne %struct.nvkm_i2c_bus* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %164
  %173 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %21, align 8
  %174 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %173, i32 0, i32 0
  %175 = load %struct.nouveau_encoder*, %struct.nouveau_encoder** %10, align 8
  %176 = getelementptr inbounds %struct.nouveau_encoder, %struct.nouveau_encoder* %175, i32 0, i32 0
  store i32* %174, i32** %176, align 8
  br label %177

177:                                              ; preds = %172, %164
  br label %178

178:                                              ; preds = %177, %163
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %160, %49
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local %struct.nouveau_connector* @nouveau_connector(%struct.drm_connector*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.nvkm_bios* @nvxx_bios(i32*) #1

declare dso_local %struct.nvkm_i2c* @nvxx_i2c(i32*) #1

declare dso_local %struct.nouveau_encoder* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_encoder* @to_drm_encoder(%struct.nouveau_encoder*) #1

declare dso_local i32 @drm_encoder_init(i32, %struct.drm_encoder*, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local %struct.nv50_disp* @nv50_disp(i32) #1

declare dso_local %struct.nvkm_i2c_aux* @nvkm_i2c_aux_find(%struct.nvkm_i2c*, i32) #1

declare dso_local i64 @nvbios_dp_table(%struct.nvkm_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nv50_mstm_new(%struct.nouveau_encoder*, %struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
