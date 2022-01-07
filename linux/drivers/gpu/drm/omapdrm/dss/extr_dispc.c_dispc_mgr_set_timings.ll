; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_set_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_mgr_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"channel %d xres %u yres %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pck %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"hsync_len %d hfp %d hbp %d vsw %d vfp %d vbp %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"vsync_level %d hsync_level %d data_pclk_edge %d de_level %d sync_pclk_edge %d\0A\00", align 1
@DISPLAY_FLAGS_VSYNC_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_VSYNC_LOW = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_HSYNC_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_HSYNC_LOW = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_PIXDATA_POSEDGE = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_PIXDATA_NEGEDGE = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_DE_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_DE_LOW = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_SYNC_POSEDGE = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_SYNC_NEGEDGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"hsync %luHz, vsync %luHz\0A\00", align 1
@DISPLAY_FLAGS_INTERLACED = common dso_local global i32 0, align 4
@DISPC_CONTROL = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_DOUBLECLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, %struct.videomode*)* @dispc_mgr_set_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_mgr_set_timings(%struct.dispc_device* %0, i32 %1, %struct.videomode* %2) #0 {
  %4 = alloca %struct.dispc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.videomode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.videomode, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.videomode* %2, %struct.videomode** %6, align 8
  %12 = load %struct.videomode*, %struct.videomode** %6, align 8
  %13 = bitcast %struct.videomode* %11 to i8*
  %14 = bitcast %struct.videomode* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 40, i1 false)
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i64, ...) @DSSDBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %16, i32 %18, i32 %20)
  %22 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @dispc_mgr_check_timings(%struct.dispc_device* %22, i32 %23, %struct.videomode* %11)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = call i32 (...) @BUG()
  br label %159

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @dss_mgr_is_lcd(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %121

32:                                               ; preds = %28
  %33 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @_dispc_mgr_set_lcd_timings(%struct.dispc_device* %33, i32 %34, %struct.videomode* %11)
  %36 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %37, %39
  %41 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = add i32 %40, %42
  %44 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %43, %45
  store i32 %46, i32* %7, align 4
  %47 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %48, %50
  %52 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %51, %53
  %55 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %54, %56
  store i32 %57, i32* %8, align 4
  %58 = load %struct.videomode*, %struct.videomode** %6, align 8
  %59 = getelementptr inbounds %struct.videomode, %struct.videomode* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = udiv i32 %60, %61
  %63 = zext i32 %62 to i64
  store i64 %63, i64* %9, align 8
  %64 = load %struct.videomode*, %struct.videomode** %6, align 8
  %65 = getelementptr inbounds %struct.videomode, %struct.videomode* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = udiv i32 %66, %67
  %69 = load i32, i32* %8, align 4
  %70 = udiv i32 %68, %69
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %10, align 8
  %72 = load %struct.videomode*, %struct.videomode** %6, align 8
  %73 = getelementptr inbounds %struct.videomode, %struct.videomode* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = zext i32 %74 to i64
  %76 = call i32 (i8*, i64, ...) @DSSDBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  %77 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, i64, ...) @DSSDBG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %79, i32 %81, i32 %83, i32 %85, i32 %87, i32 %89)
  %91 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @DISPLAY_FLAGS_VSYNC_HIGH, align 4
  %94 = load i32, i32* @DISPLAY_FLAGS_VSYNC_LOW, align 4
  %95 = call i32 @vm_flag_to_int(i32 %92, i32 %93, i32 %94)
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DISPLAY_FLAGS_HSYNC_HIGH, align 4
  %100 = load i32, i32* @DISPLAY_FLAGS_HSYNC_LOW, align 4
  %101 = call i32 @vm_flag_to_int(i32 %98, i32 %99, i32 %100)
  %102 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_POSEDGE, align 4
  %105 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_NEGEDGE, align 4
  %106 = call i32 @vm_flag_to_int(i32 %103, i32 %104, i32 %105)
  %107 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @DISPLAY_FLAGS_DE_HIGH, align 4
  %110 = load i32, i32* @DISPLAY_FLAGS_DE_LOW, align 4
  %111 = call i32 @vm_flag_to_int(i32 %108, i32 %109, i32 %110)
  %112 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @DISPLAY_FLAGS_SYNC_POSEDGE, align 4
  %115 = load i32, i32* @DISPLAY_FLAGS_SYNC_NEGEDGE, align 4
  %116 = call i32 @vm_flag_to_int(i32 %113, i32 %114, i32 %115)
  %117 = call i32 (i8*, i64, ...) @DSSDBG(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i64 %96, i32 %101, i32 %106, i32 %111, i32 %116)
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %10, align 8
  %120 = call i32 (i8*, i64, ...) @DSSDBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %118, i64 %119)
  br label %151

121:                                              ; preds = %28
  %122 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @DISPLAY_FLAGS_INTERLACED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = udiv i32 %129, 2
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %127, %121
  %132 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %133 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %132, i32 0, i32 0
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %131
  %139 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %140 = load i32, i32* @DISPC_CONTROL, align 4
  %141 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @DISPLAY_FLAGS_DOUBLECLK, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i32 @REG_FLD_MOD(%struct.dispc_device* %139, i32 %140, i32 %148, i32 19, i32 17)
  br label %150

150:                                              ; preds = %138, %131
  br label %151

151:                                              ; preds = %150, %32
  %152 = load %struct.dispc_device*, %struct.dispc_device** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.videomode, %struct.videomode* %11, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dispc_mgr_set_size(%struct.dispc_device* %152, i32 %153, i32 %155, i32 %157)
  br label %159

159:                                              ; preds = %151, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DSSDBG(i8*, i64, ...) #2

declare dso_local i64 @dispc_mgr_check_timings(%struct.dispc_device*, i32, %struct.videomode*) #2

declare dso_local i32 @BUG(...) #2

declare dso_local i64 @dss_mgr_is_lcd(i32) #2

declare dso_local i32 @_dispc_mgr_set_lcd_timings(%struct.dispc_device*, i32, %struct.videomode*) #2

declare dso_local i32 @vm_flag_to_int(i32, i32, i32) #2

declare dso_local i32 @REG_FLD_MOD(%struct.dispc_device*, i32, i32, i32, i32) #2

declare dso_local i32 @dispc_mgr_set_size(%struct.dispc_device*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
