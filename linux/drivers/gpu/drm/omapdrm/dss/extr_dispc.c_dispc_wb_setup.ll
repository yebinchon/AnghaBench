; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_wb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_wb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }
%struct.omap_dss_writeback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32 }

@OMAP_DSS_WB = common dso_local global i32 0, align 4
@OMAP_DSS_OVL_CAP_SCALE = common dso_local global i32 0, align 4
@OMAP_DSS_OVL_CAP_PRE_MULT_ALPHA = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_INTERLACED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"dispc_wb_setup, pa %x, pa_uv %x, %d,%d -> %dx%d, cmode %x, rot %d\0A\00", align 1
@DSS_WB_TV_MGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dispc_device*, %struct.omap_dss_writeback_info*, i32, %struct.videomode*, i32)* @dispc_wb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_wb_setup(%struct.dispc_device* %0, %struct.omap_dss_writeback_info* %1, i32 %2, %struct.videomode* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dispc_device*, align 8
  %8 = alloca %struct.omap_dss_writeback_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.videomode*, align 8
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
  store %struct.dispc_device* %0, %struct.dispc_device** %7, align 8
  store %struct.omap_dss_writeback_info* %1, %struct.omap_dss_writeback_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.videomode* %3, %struct.videomode** %10, align 8
  store i32 %4, i32* %11, align 4
  %25 = load i32, i32* @OMAP_DSS_WB, align 4
  store i32 %25, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %26 = load %struct.videomode*, %struct.videomode** %10, align 8
  %27 = getelementptr inbounds %struct.videomode, %struct.videomode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %21, align 4
  %29 = load %struct.videomode*, %struct.videomode** %10, align 8
  %30 = getelementptr inbounds %struct.videomode, %struct.videomode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %22, align 4
  %32 = load i32, i32* @OMAP_DSS_OVL_CAP_SCALE, align 4
  %33 = load i32, i32* @OMAP_DSS_OVL_CAP_PRE_MULT_ALPHA, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %23, align 4
  %35 = load %struct.videomode*, %struct.videomode** %10, align 8
  %36 = getelementptr inbounds %struct.videomode, %struct.videomode* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %5
  %42 = load i32, i32* %22, align 4
  %43 = sdiv i32 %42, 2
  store i32 %43, i32* %22, align 4
  br label %44

44:                                               ; preds = %41, %5
  %45 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %46 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %49 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %21, align 4
  %52 = load i32, i32* %22, align 4
  %53 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %54 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %57 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %60 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %63 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @DSSDBG(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %51, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64)
  %66 = load %struct.dispc_device*, %struct.dispc_device** %7, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %23, align 4
  %69 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %70 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %73 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %76 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* %22, align 4
  %80 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %81 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %84 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %87 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %90 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %93 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %96 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.videomode*, %struct.videomode** %10, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @dispc_ovl_setup_common(%struct.dispc_device* %66, i32 %67, i32 %68, i32 %71, i32 %74, i32 %77, i32 0, i32 0, i32 %78, i32 %79, i32 %82, i32 %85, i32 %88, i32 %91, i32 0, i32 %94, i32 0, i32 %97, i32 1, %struct.videomode* %98, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %44
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %6, align 4
  br label %189

105:                                              ; preds = %44
  %106 = load %struct.omap_dss_writeback_info*, %struct.omap_dss_writeback_info** %8, align 8
  %107 = getelementptr inbounds %struct.omap_dss_writeback_info, %struct.omap_dss_writeback_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %110 [
    i32 133, label %109
    i32 132, label %109
    i32 134, label %109
    i32 131, label %109
    i32 130, label %109
    i32 135, label %109
    i32 129, label %109
    i32 128, label %109
  ]

109:                                              ; preds = %105, %105, %105, %105, %105, %105, %105, %105
  store i32 1, i32* %20, align 4
  br label %111

110:                                              ; preds = %105
  store i32 0, i32* %20, align 4
  br label %111

111:                                              ; preds = %110, %109
  %112 = load %struct.dispc_device*, %struct.dispc_device** %7, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %113)
  %115 = call i32 @dispc_read_reg(%struct.dispc_device* %112, i32 %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %20, align 4
  %118 = call i32 @FLD_MOD(i32 %116, i32 %117, i32 10, i32 10)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @FLD_MOD(i32 %119, i32 %120, i32 18, i32 16)
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @FLD_MOD(i32 %122, i32 %123, i32 19, i32 19)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %111
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @FLD_MOD(i32 %128, i32 1, i32 26, i32 24)
  store i32 %129, i32* %13, align 4
  br label %133

130:                                              ; preds = %111
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @FLD_MOD(i32 %131, i32 0, i32 26, i32 24)
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct.dispc_device*, %struct.dispc_device** %7, align 8
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %135)
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @dispc_write_reg(%struct.dispc_device* %134, i32 %136, i32 %137)
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load %struct.dispc_device*, %struct.dispc_device** %7, align 8
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @DISPC_OVL_ATTRIBUTES2(i32 %143)
  %145 = call i32 @REG_FLD_MOD(%struct.dispc_device* %142, i32 %144, i32 0, i32 7, i32 0)
  br label %188

146:                                              ; preds = %133
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @DSS_WB_TV_MGR, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %146
  %151 = load %struct.videomode*, %struct.videomode** %10, align 8
  %152 = getelementptr inbounds %struct.videomode, %struct.videomode* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.videomode*, %struct.videomode** %10, align 8
  %155 = getelementptr inbounds %struct.videomode, %struct.videomode* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %153, %156
  store i32 %157, i32* %24, align 4
  br label %170

158:                                              ; preds = %146
  %159 = load %struct.videomode*, %struct.videomode** %10, align 8
  %160 = getelementptr inbounds %struct.videomode, %struct.videomode* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.videomode*, %struct.videomode** %10, align 8
  %163 = getelementptr inbounds %struct.videomode, %struct.videomode* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %161, %164
  %166 = load %struct.videomode*, %struct.videomode** %10, align 8
  %167 = getelementptr inbounds %struct.videomode, %struct.videomode* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %165, %168
  store i32 %169, i32* %24, align 4
  br label %170

170:                                              ; preds = %158, %150
  %171 = load %struct.videomode*, %struct.videomode** %10, align 8
  %172 = getelementptr inbounds %struct.videomode, %struct.videomode* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load i32, i32* %24, align 4
  %179 = sdiv i32 %178, 2
  store i32 %179, i32* %24, align 4
  br label %180

180:                                              ; preds = %177, %170
  %181 = load i32, i32* %24, align 4
  %182 = call i32 @min(i32 %181, i32 255)
  store i32 %182, i32* %24, align 4
  %183 = load %struct.dispc_device*, %struct.dispc_device** %7, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @DISPC_OVL_ATTRIBUTES2(i32 %184)
  %186 = load i32, i32* %24, align 4
  %187 = call i32 @REG_FLD_MOD(%struct.dispc_device* %183, i32 %185, i32 %186, i32 7, i32 0)
  br label %188

188:                                              ; preds = %180, %141
  store i32 0, i32* %6, align 4
  br label %189

189:                                              ; preds = %188, %103
  %190 = load i32, i32* %6, align 4
  ret i32 %190
}

declare dso_local i32 @DSSDBG(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dispc_ovl_setup_common(%struct.dispc_device*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.videomode*, i32) #1

declare dso_local i32 @dispc_read_reg(%struct.dispc_device*, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dispc_write_reg(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dispc_device*, i32, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES2(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
