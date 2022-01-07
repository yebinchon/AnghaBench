; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_imx-ldb.c_imx_ldb_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.imx_ldb_channel = type { i32, %struct.imx_ldb* }
%struct.imx_ldb = type { i32, i32, i32*, i32*, %struct.imx_ldb_channel*, i32, %struct.bus_mux*, i32* }
%struct.bus_mux = type { i32, i32, i32 }

@LDB_CH0_MODE_EN_MASK = common dso_local global i32 0, align 4
@LDB_CH1_MODE_EN_MASK = common dso_local global i32 0, align 4
@IOMUXC_GPR2 = common dso_local global i32 0, align 4
@LDB_SPLIT_MODE_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"unable to set di%d parent clock to original parent\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @imx_ldb_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_ldb_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.imx_ldb_channel*, align 8
  %4 = alloca %struct.imx_ldb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bus_mux*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %9 = call %struct.imx_ldb_channel* @enc_to_imx_ldb_ch(%struct.drm_encoder* %8)
  store %struct.imx_ldb_channel* %9, %struct.imx_ldb_channel** %3, align 8
  %10 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %11 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %10, i32 0, i32 1
  %12 = load %struct.imx_ldb*, %struct.imx_ldb** %11, align 8
  store %struct.imx_ldb* %12, %struct.imx_ldb** %4, align 8
  %13 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %14 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @drm_panel_disable(i32 %15)
  %17 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %18 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %19 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %18, i32 0, i32 4
  %20 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %19, align 8
  %21 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %20, i64 0
  %22 = icmp eq %struct.imx_ldb_channel* %17, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load i32, i32* @LDB_CH0_MODE_EN_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %27 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %45

30:                                               ; preds = %1
  %31 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %32 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %33 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %32, i32 0, i32 4
  %34 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %33, align 8
  %35 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %34, i64 1
  %36 = icmp eq %struct.imx_ldb_channel* %31, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i32, i32* @LDB_CH1_MODE_EN_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %41 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %37, %30
  br label %45

45:                                               ; preds = %44, %23
  %46 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %47 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IOMUXC_GPR2, align 4
  %50 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %51 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @regmap_write(i32 %48, i32 %49, i32 %52)
  %54 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %55 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @LDB_SPLIT_MODE_EN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %45
  %61 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %62 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %61, i32 0, i32 7
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @clk_disable_unprepare(i32 %65)
  %67 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %68 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %67, i32 0, i32 7
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @clk_disable_unprepare(i32 %71)
  br label %73

73:                                               ; preds = %60, %45
  %74 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %75 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %74, i32 0, i32 6
  %76 = load %struct.bus_mux*, %struct.bus_mux** %75, align 8
  %77 = icmp ne %struct.bus_mux* %76, null
  br i1 %77, label %78, label %121

78:                                               ; preds = %73
  store %struct.bus_mux* null, %struct.bus_mux** %7, align 8
  %79 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %80 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %81 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %80, i32 0, i32 4
  %82 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %81, align 8
  %83 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %82, i64 0
  %84 = icmp eq %struct.imx_ldb_channel* %79, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %87 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %86, i32 0, i32 6
  %88 = load %struct.bus_mux*, %struct.bus_mux** %87, align 8
  %89 = getelementptr inbounds %struct.bus_mux, %struct.bus_mux* %88, i64 0
  store %struct.bus_mux* %89, %struct.bus_mux** %7, align 8
  br label %103

90:                                               ; preds = %78
  %91 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %92 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %93 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %92, i32 0, i32 4
  %94 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %93, align 8
  %95 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %94, i64 1
  %96 = icmp eq %struct.imx_ldb_channel* %91, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %99 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %98, i32 0, i32 6
  %100 = load %struct.bus_mux*, %struct.bus_mux** %99, align 8
  %101 = getelementptr inbounds %struct.bus_mux, %struct.bus_mux* %100, i64 1
  store %struct.bus_mux* %101, %struct.bus_mux** %7, align 8
  br label %102

102:                                              ; preds = %97, %90
  br label %103

103:                                              ; preds = %102, %85
  %104 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %105 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.bus_mux*, %struct.bus_mux** %7, align 8
  %108 = getelementptr inbounds %struct.bus_mux, %struct.bus_mux* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @regmap_read(i32 %106, i32 %109, i32* %5)
  %111 = load %struct.bus_mux*, %struct.bus_mux** %7, align 8
  %112 = getelementptr inbounds %struct.bus_mux, %struct.bus_mux* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load %struct.bus_mux*, %struct.bus_mux** %7, align 8
  %117 = getelementptr inbounds %struct.bus_mux, %struct.bus_mux* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %5, align 4
  %120 = ashr i32 %119, %118
  store i32 %120, i32* %5, align 4
  br label %130

121:                                              ; preds = %73
  %122 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %123 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %124 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %123, i32 0, i32 4
  %125 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %124, align 8
  %126 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %125, i64 0
  %127 = icmp eq %struct.imx_ldb_channel* %122, %126
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 0, i32 1
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %121, %103
  %131 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %132 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %139 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @clk_set_parent(i32 %137, i32 %144)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %130
  %149 = load %struct.imx_ldb*, %struct.imx_ldb** %4, align 8
  %150 = getelementptr inbounds %struct.imx_ldb, %struct.imx_ldb* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @dev_err(i32 %151, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %148, %130
  %155 = load %struct.imx_ldb_channel*, %struct.imx_ldb_channel** %3, align 8
  %156 = getelementptr inbounds %struct.imx_ldb_channel, %struct.imx_ldb_channel* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @drm_panel_unprepare(i32 %157)
  ret void
}

declare dso_local %struct.imx_ldb_channel* @enc_to_imx_ldb_ch(%struct.drm_encoder*) #1

declare dso_local i32 @drm_panel_disable(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @drm_panel_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
