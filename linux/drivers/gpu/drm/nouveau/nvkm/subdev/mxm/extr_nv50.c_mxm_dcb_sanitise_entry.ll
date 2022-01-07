; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_nv50.c_mxm_dcb_sanitise_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_nv50.c_mxm_dcb_sanitise_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32* }
%struct.nvkm_mxm = type { i32 }
%struct.context = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@mxm_match_dcb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"disable %d: %08x %08x\0A\00", align 1
@DCB_OUTPUT_DP = common dso_local global i32 0, align 4
@DCB_CONNECTOR_HDMI_1 = common dso_local global i32 0, align 4
@DCB_CONNECTOR_DVI_D = common dso_local global i32 0, align 4
@DCB_CONNECTOR_eDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_bios*, i8*, i32, i32)* @mxm_dcb_sanitise_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxm_dcb_sanitise_entry(%struct.nvkm_bios* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_mxm*, align 8
  %11 = alloca %struct.context, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.nvkm_mxm*
  store %struct.nvkm_mxm* %19, %struct.nvkm_mxm** %10, align 8
  %20 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %22 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %20, align 8
  %27 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 1
  %28 = bitcast %struct.TYPE_2__* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 16, i1 false)
  %29 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %10, align 8
  %30 = load i32, i32* @mxm_match_dcb, align 4
  %31 = call i64 @mxms_foreach(%struct.nvkm_mxm* %29, i32 1, i32 %30, %struct.context* %11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %4
  %34 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %10, align 8
  %35 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nvkm_debug(i32* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40, i32 %44)
  %46 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, 15
  store i32 %50, i32* %48, align 4
  store i32 0, i32* %5, align 4
  br label %163

51:                                               ; preds = %4
  %52 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %53 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mxm_ddc_map(%struct.nvkm_bios* %52, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 15
  %62 = load i32, i32* @DCB_OUTPUT_DP, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load i32, i32* %13, align 4
  %66 = and i32 %65, 15
  %67 = shl i32 %66, 4
  store i32 %67, i32* %13, align 4
  br label %71

68:                                               ; preds = %51
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, 240
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 240
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, -241
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %13, align 4
  %81 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %80
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %74, %71
  %87 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %91 [
    i32 0, label %90
    i32 1, label %90
  ]

90:                                               ; preds = %86, %86
  br label %109

91:                                               ; preds = %86
  %92 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %93 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @mxm_sor_map(%struct.nvkm_bios* %92, i32 %95)
  %97 = and i32 %96, 48
  store i32 %97, i32* %14, align 4
  %98 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, -49
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %14, align 4
  %104 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %103
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %91, %90
  %110 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %111 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  store i32* %112, i32** %17, align 8
  %113 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %114 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 61440
  %119 = ashr i32 %118, 12
  %120 = call i32 @nvbios_connEe(%struct.nvkm_bios* %113, i32 %119, i32* %15, i32* %16)
  %121 = load i32*, i32** %17, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %17, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %12, align 4
  %127 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  switch i32 %129, label %153 [
    i32 1, label %130
    i32 2, label %136
    i32 3, label %138
    i32 14, label %140
    i32 7, label %146
  ]

130:                                              ; preds = %109
  %131 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, 4
  store i32 %135, i32* %133, align 4
  br label %154

136:                                              ; preds = %109
  %137 = load i32, i32* @DCB_CONNECTOR_HDMI_1, align 4
  store i32 %137, i32* %12, align 4
  br label %154

138:                                              ; preds = %109
  %139 = load i32, i32* @DCB_CONNECTOR_DVI_D, align 4
  store i32 %139, i32* %12, align 4
  br label %154

140:                                              ; preds = %109
  %141 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, 65536
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %109, %140
  %147 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, 4
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* @DCB_CONNECTOR_eDP, align 4
  store i32 %152, i32* %12, align 4
  br label %154

153:                                              ; preds = %109
  br label %154

154:                                              ; preds = %153, %146, %138, %136, %130
  %155 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %10, align 8
  %156 = call i32 @mxms_version(%struct.nvkm_mxm* %155)
  %157 = icmp sge i32 %156, 768
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i32, i32* %12, align 4
  %160 = load i32*, i32** %17, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %158, %154
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %162, %33
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @mxms_foreach(%struct.nvkm_mxm*, i32, i32, %struct.context*) #2

declare dso_local i32 @nvkm_debug(i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @mxm_ddc_map(%struct.nvkm_bios*, i32) #2

declare dso_local i32 @mxm_sor_map(%struct.nvkm_bios*, i32) #2

declare dso_local i32 @nvbios_connEe(%struct.nvkm_bios*, i32, i32*, i32*) #2

declare dso_local i32 @mxms_version(%struct.nvkm_mxm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
