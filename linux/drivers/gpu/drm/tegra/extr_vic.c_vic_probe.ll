; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_vic.c_vic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_vic.c_vic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.host1x_syncpt = type { i32 }
%struct.resource = type { i32 }
%struct.vic = type { %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_8__*, %struct.device*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32*, i32, %struct.device* }
%struct.TYPE_7__ = type { %struct.TYPE_9__, i32*, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.host1x_syncpt**, i32, %struct.device*, i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to get registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vic\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get reset\0A\00", align 1
@vic_falcon_ops = common dso_local global i32 0, align 4
@vic_client_ops = common dso_local global i32 0, align 4
@HOST1X_CLASS_VIC = common dso_local global i32 0, align 4
@vic_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @vic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.host1x_syncpt**, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.vic*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @devm_kzalloc(%struct.device* %11, i32 120, i32 %12)
  %14 = bitcast i8* %13 to %struct.vic*
  store %struct.vic* %14, %struct.vic** %7, align 8
  %15 = load %struct.vic*, %struct.vic** %7, align 8
  %16 = icmp ne %struct.vic* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %212

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call %struct.TYPE_8__* @of_device_get_match_data(%struct.device* %21)
  %23 = load %struct.vic*, %struct.vic** %7, align 8
  %24 = getelementptr inbounds %struct.vic, %struct.vic* %23, i32 0, i32 2
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %24, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @devm_kzalloc(%struct.device* %25, i32 8, i32 %26)
  %28 = bitcast i8* %27 to %struct.host1x_syncpt**
  store %struct.host1x_syncpt** %28, %struct.host1x_syncpt*** %5, align 8
  %29 = load %struct.host1x_syncpt**, %struct.host1x_syncpt*** %5, align 8
  %30 = icmp ne %struct.host1x_syncpt** %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %212

34:                                               ; preds = %20
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  store %struct.resource* %37, %struct.resource** %6, align 8
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = icmp ne %struct.resource* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %212

46:                                               ; preds = %34
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load %struct.resource*, %struct.resource** %6, align 8
  %49 = call i32 @devm_ioremap_resource(%struct.device* %47, %struct.resource* %48)
  %50 = load %struct.vic*, %struct.vic** %7, align 8
  %51 = getelementptr inbounds %struct.vic, %struct.vic* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.vic*, %struct.vic** %7, align 8
  %53 = getelementptr inbounds %struct.vic, %struct.vic* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load %struct.vic*, %struct.vic** %7, align 8
  %59 = getelementptr inbounds %struct.vic, %struct.vic* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %2, align 4
  br label %212

62:                                               ; preds = %46
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @devm_clk_get(%struct.device* %63, i32* null)
  %65 = load %struct.vic*, %struct.vic** %7, align 8
  %66 = getelementptr inbounds %struct.vic, %struct.vic* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.vic*, %struct.vic** %7, align 8
  %68 = getelementptr inbounds %struct.vic, %struct.vic* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IS_ERR(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %62
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.vic*, %struct.vic** %7, align 8
  %77 = getelementptr inbounds %struct.vic, %struct.vic* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @PTR_ERR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %212

80:                                               ; preds = %62
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = getelementptr inbounds %struct.device, %struct.device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %104, label %85

85:                                               ; preds = %80
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 @devm_reset_control_get(%struct.device* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.vic*, %struct.vic** %7, align 8
  %89 = getelementptr inbounds %struct.vic, %struct.vic* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.vic*, %struct.vic** %7, align 8
  %91 = getelementptr inbounds %struct.vic, %struct.vic* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @IS_ERR(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %85
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.vic*, %struct.vic** %7, align 8
  %100 = getelementptr inbounds %struct.vic, %struct.vic* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @PTR_ERR(i32 %101)
  store i32 %102, i32* %2, align 4
  br label %212

103:                                              ; preds = %85
  br label %104

104:                                              ; preds = %103, %80
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load %struct.vic*, %struct.vic** %7, align 8
  %107 = getelementptr inbounds %struct.vic, %struct.vic* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  store %struct.device* %105, %struct.device** %108, align 8
  %109 = load %struct.vic*, %struct.vic** %7, align 8
  %110 = getelementptr inbounds %struct.vic, %struct.vic* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.vic*, %struct.vic** %7, align 8
  %113 = getelementptr inbounds %struct.vic, %struct.vic* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 8
  %115 = load %struct.vic*, %struct.vic** %7, align 8
  %116 = getelementptr inbounds %struct.vic, %struct.vic* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store i32* @vic_falcon_ops, i32** %117, align 8
  %118 = load %struct.vic*, %struct.vic** %7, align 8
  %119 = getelementptr inbounds %struct.vic, %struct.vic* %118, i32 0, i32 0
  %120 = call i32 @falcon_init(%struct.TYPE_10__* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %104
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %212

125:                                              ; preds = %104
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = load %struct.vic*, %struct.vic** %7, align 8
  %128 = call i32 @platform_set_drvdata(%struct.platform_device* %126, %struct.vic* %127)
  %129 = load %struct.vic*, %struct.vic** %7, align 8
  %130 = getelementptr inbounds %struct.vic, %struct.vic* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 5
  %133 = call i32 @INIT_LIST_HEAD(i32* %132)
  %134 = load %struct.vic*, %struct.vic** %7, align 8
  %135 = getelementptr inbounds %struct.vic, %struct.vic* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 4
  store i32* @vic_client_ops, i32** %137, align 8
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = load %struct.vic*, %struct.vic** %7, align 8
  %140 = getelementptr inbounds %struct.vic, %struct.vic* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 3
  store %struct.device* %138, %struct.device** %142, align 8
  %143 = load i32, i32* @HOST1X_CLASS_VIC, align 4
  %144 = load %struct.vic*, %struct.vic** %7, align 8
  %145 = getelementptr inbounds %struct.vic, %struct.vic* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  store i32 %143, i32* %147, align 8
  %148 = load %struct.host1x_syncpt**, %struct.host1x_syncpt*** %5, align 8
  %149 = load %struct.vic*, %struct.vic** %7, align 8
  %150 = getelementptr inbounds %struct.vic, %struct.vic* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  store %struct.host1x_syncpt** %148, %struct.host1x_syncpt*** %152, align 8
  %153 = load %struct.vic*, %struct.vic** %7, align 8
  %154 = getelementptr inbounds %struct.vic, %struct.vic* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = load %struct.vic*, %struct.vic** %7, align 8
  %159 = getelementptr inbounds %struct.vic, %struct.vic* %158, i32 0, i32 3
  store %struct.device* %157, %struct.device** %159, align 8
  %160 = load %struct.vic*, %struct.vic** %7, align 8
  %161 = getelementptr inbounds %struct.vic, %struct.vic* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  %163 = call i32 @INIT_LIST_HEAD(i32* %162)
  %164 = load %struct.vic*, %struct.vic** %7, align 8
  %165 = getelementptr inbounds %struct.vic, %struct.vic* %164, i32 0, i32 2
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.vic*, %struct.vic** %7, align 8
  %170 = getelementptr inbounds %struct.vic, %struct.vic* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  store i32 %168, i32* %171, align 8
  %172 = load %struct.vic*, %struct.vic** %7, align 8
  %173 = getelementptr inbounds %struct.vic, %struct.vic* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  store i32* @vic_ops, i32** %174, align 8
  %175 = load %struct.vic*, %struct.vic** %7, align 8
  %176 = getelementptr inbounds %struct.vic, %struct.vic* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = call i32 @host1x_client_register(%struct.TYPE_9__* %177)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %125
  %182 = load %struct.device*, %struct.device** %4, align 8
  %183 = load i32, i32* %8, align 4
  %184 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %182, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %183)
  br label %207

185:                                              ; preds = %125
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = call i32 @pm_runtime_enable(%struct.device* %187)
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = call i32 @pm_runtime_enabled(%struct.device* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %185
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %194, i32 0, i32 0
  %196 = call i32 @vic_runtime_resume(%struct.device* %195)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %193
  br label %202

200:                                              ; preds = %193
  br label %201

201:                                              ; preds = %200, %185
  store i32 0, i32* %2, align 4
  br label %212

202:                                              ; preds = %199
  %203 = load %struct.vic*, %struct.vic** %7, align 8
  %204 = getelementptr inbounds %struct.vic, %struct.vic* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = call i32 @host1x_client_unregister(%struct.TYPE_9__* %205)
  br label %207

207:                                              ; preds = %202, %181
  %208 = load %struct.vic*, %struct.vic** %7, align 8
  %209 = getelementptr inbounds %struct.vic, %struct.vic* %208, i32 0, i32 0
  %210 = call i32 @falcon_exit(%struct.TYPE_10__* %209)
  %211 = load i32, i32* %8, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %207, %201, %123, %95, %72, %57, %40, %31, %17
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @devm_reset_control_get(%struct.device*, i8*) #1

declare dso_local i32 @falcon_init(%struct.TYPE_10__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.vic*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @host1x_client_register(%struct.TYPE_9__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i32 @vic_runtime_resume(%struct.device*) #1

declare dso_local i32 @host1x_client_unregister(%struct.TYPE_9__*) #1

declare dso_local i32 @falcon_exit(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
