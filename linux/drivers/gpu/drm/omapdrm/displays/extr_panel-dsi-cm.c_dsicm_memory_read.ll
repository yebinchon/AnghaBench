; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_memory_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_memory_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32, i8*, i64)*, i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)* }
%struct.panel_drv_data = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32, %struct.omap_dss_device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"short read\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"signal pending, aborting memory read\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i8*, i64, i32, i32, i32, i32)* @dsicm_memory_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_memory_read(%struct.omap_dss_device* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_dss_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.panel_drv_data*, align 8
  %17 = alloca %struct.omap_dss_device*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %24 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %23)
  store %struct.panel_drv_data* %24, %struct.panel_drv_data** %16, align 8
  %25 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %26 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %25, i32 0, i32 5
  %27 = load %struct.omap_dss_device*, %struct.omap_dss_device** %26, align 8
  store %struct.omap_dss_device* %27, %struct.omap_dss_device** %17, align 8
  store i32 1, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = mul nsw i32 %29, %30
  %32 = mul nsw i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %28, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %7
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %198

38:                                               ; preds = %7
  %39 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %40 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %43 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %18, align 4
  br label %193

49:                                               ; preds = %38
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = mul nsw i32 %50, %51
  %53 = mul nsw i32 %52, 3
  %54 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %55 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %59 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %57, %61
  %63 = mul nsw i32 %62, 3
  %64 = call i64 @min(i32 %53, i32 %63)
  store i64 %64, i64* %11, align 8
  %65 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %66 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %69, align 8
  %71 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %72 = call i32 %70(%struct.omap_dss_device* %71)
  %73 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %74 = call i32 @dsicm_wake_up(%struct.panel_drv_data* %73)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %49
  br label %184

78:                                               ; preds = %49
  %79 = load i64, i64* %11, align 8
  %80 = urem i64 %79, 2
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %20, align 4
  br label %84

83:                                               ; preds = %78
  store i32 2, i32* %20, align 4
  br label %84

84:                                               ; preds = %83, %82
  %85 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @dsicm_set_update_window(%struct.panel_drv_data* %85, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %92 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %95, align 8
  %97 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %98 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %99 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %20, align 4
  %102 = call i32 %96(%struct.omap_dss_device* %97, i32 %100, i32 %101)
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %84
  br label %184

106:                                              ; preds = %84
  br label %107

107:                                              ; preds = %169, %106
  %108 = load i32, i32* %21, align 4
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %11, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %170

112:                                              ; preds = %107
  %113 = load i32, i32* %19, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 46, i32 62
  store i32 %116, i32* %22, align 4
  store i32 0, i32* %19, align 4
  %117 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %118 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32 (%struct.omap_dss_device*, i32, i32, i8*, i64)*, i32 (%struct.omap_dss_device*, i32, i32, i8*, i64)** %121, align 8
  %123 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %124 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %125 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %22, align 4
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* %21, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr i8, i8* %128, i64 %130
  %132 = load i64, i64* %11, align 8
  %133 = load i32, i32* %21, align 4
  %134 = zext i32 %133 to i64
  %135 = sub i64 %132, %134
  %136 = call i32 %122(%struct.omap_dss_device* %123, i32 %126, i32 %127, i8* %131, i64 %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %112
  %140 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %141 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @dev_err(i32* %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %172

144:                                              ; preds = %112
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %21, align 4
  %147 = add i32 %146, %145
  store i32 %147, i32* %21, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %20, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %153 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %152, i32 0, i32 2
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = call i32 @dev_err(i32* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %170

157:                                              ; preds = %144
  %158 = load i32, i32* @current, align 4
  %159 = call i64 @signal_pending(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %157
  %162 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %163 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %162, i32 0, i32 2
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = call i32 @dev_err(i32* %165, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i32, i32* @ERESTARTSYS, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %18, align 4
  br label %172

169:                                              ; preds = %157
  br label %107

170:                                              ; preds = %151, %107
  %171 = load i32, i32* %21, align 4
  store i32 %171, i32* %18, align 4
  br label %172

172:                                              ; preds = %170, %161, %139
  %173 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %174 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %173, i32 0, i32 0
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %177, align 8
  %179 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %180 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %181 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 %178(%struct.omap_dss_device* %179, i32 %182, i32 1)
  br label %184

184:                                              ; preds = %172, %105, %77
  %185 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %186 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %185, i32 0, i32 0
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  %190 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %189, align 8
  %191 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  %192 = call i32 %190(%struct.omap_dss_device* %191)
  br label %193

193:                                              ; preds = %184, %46
  %194 = load %struct.panel_drv_data*, %struct.panel_drv_data** %16, align 8
  %195 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %194, i32 0, i32 0
  %196 = call i32 @mutex_unlock(i32* %195)
  %197 = load i32, i32* %18, align 4
  store i32 %197, i32* %8, align 4
  br label %198

198:                                              ; preds = %193, %35
  %199 = load i32, i32* %8, align 4
  ret i32 %199
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @dsicm_wake_up(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_set_update_window(%struct.panel_drv_data*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
