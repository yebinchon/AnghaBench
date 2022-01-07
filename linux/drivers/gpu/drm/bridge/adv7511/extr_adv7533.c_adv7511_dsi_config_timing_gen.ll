; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7533.c_adv7511_dsi_config_timing_gen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7533.c_adv7511_dsi_config_timing_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i32, %struct.drm_display_mode, %struct.mipi_dsi_device* }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mipi_dsi_device = type { i32 }

@__const.adv7511_dsi_config_timing_gen.clock_div_by_lanes = private unnamed_addr constant [3 x i32] [i32 6, i32 4, i32 3], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adv7511*)* @adv7511_dsi_config_timing_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7511_dsi_config_timing_gen(%struct.adv7511* %0) #0 {
  %2 = alloca %struct.adv7511*, align 8
  %3 = alloca %struct.mipi_dsi_device*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  store %struct.adv7511* %0, %struct.adv7511** %2, align 8
  %12 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %13 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %12, i32 0, i32 2
  %14 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %13, align 8
  store %struct.mipi_dsi_device* %14, %struct.mipi_dsi_device** %3, align 8
  %15 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %16 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %15, i32 0, i32 1
  store %struct.drm_display_mode* %16, %struct.drm_display_mode** %4, align 8
  %17 = bitcast [3 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast ([3 x i32]* @__const.adv7511_dsi_config_timing_gen.clock_div_by_lanes to i8*), i64 12, i1 false)
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %20, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %27, %30
  store i32 %31, i32* %6, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub i32 %34, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %41, %44
  store i32 %45, i32* %8, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %48, %51
  store i32 %52, i32* %9, align 4
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %57 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = sub i32 %55, %58
  store i32 %59, i32* %10, align 4
  %60 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %61 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %3, align 8
  %64 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 3
  %71 = call i32 @regmap_write(i32 %62, i32 22, i32 %70)
  %72 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %73 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %76 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 4
  %79 = call i32 @regmap_write(i32 %74, i32 40, i32 %78)
  %80 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %81 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %84 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 4
  %87 = and i32 %86, 255
  %88 = call i32 @regmap_write(i32 %82, i32 41, i32 %87)
  %89 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %90 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = lshr i32 %92, 4
  %94 = call i32 @regmap_write(i32 %91, i32 42, i32 %93)
  %95 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %96 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = shl i32 %98, 4
  %100 = and i32 %99, 255
  %101 = call i32 @regmap_write(i32 %97, i32 43, i32 %100)
  %102 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %103 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = lshr i32 %105, 4
  %107 = call i32 @regmap_write(i32 %104, i32 44, i32 %106)
  %108 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %109 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = shl i32 %111, 4
  %113 = and i32 %112, 255
  %114 = call i32 @regmap_write(i32 %110, i32 45, i32 %113)
  %115 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %116 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = lshr i32 %118, 4
  %120 = call i32 @regmap_write(i32 %117, i32 46, i32 %119)
  %121 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %122 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = shl i32 %124, 4
  %126 = and i32 %125, 255
  %127 = call i32 @regmap_write(i32 %123, i32 47, i32 %126)
  %128 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %129 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = ashr i32 %133, 4
  %135 = call i32 @regmap_write(i32 %130, i32 48, i32 %134)
  %136 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %137 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %140 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 4
  %143 = and i32 %142, 255
  %144 = call i32 @regmap_write(i32 %138, i32 49, i32 %143)
  %145 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %146 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = lshr i32 %148, 4
  %150 = call i32 @regmap_write(i32 %147, i32 50, i32 %149)
  %151 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %152 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = shl i32 %154, 4
  %156 = and i32 %155, 255
  %157 = call i32 @regmap_write(i32 %153, i32 51, i32 %156)
  %158 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %159 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = lshr i32 %161, 4
  %163 = call i32 @regmap_write(i32 %160, i32 52, i32 %162)
  %164 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %165 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = shl i32 %167, 4
  %169 = and i32 %168, 255
  %170 = call i32 @regmap_write(i32 %166, i32 53, i32 %169)
  %171 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %172 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = lshr i32 %174, 4
  %176 = call i32 @regmap_write(i32 %173, i32 54, i32 %175)
  %177 = load %struct.adv7511*, %struct.adv7511** %2, align 8
  %178 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = shl i32 %180, 4
  %182 = and i32 %181, 255
  %183 = call i32 @regmap_write(i32 %179, i32 55, i32 %182)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
