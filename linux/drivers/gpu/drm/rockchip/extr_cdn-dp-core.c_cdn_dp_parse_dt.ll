; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"cdn-dp needs rockchip,grf property\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"ioremap reg failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"core-clk\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"cannot get core_clk_dp\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"cannot get pclk\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot get spdif_clk\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"grf\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"cannot get grf clk\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"no spdif reset control found\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dptx\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"no uphy reset control found\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"no core reset control found\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"apb\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"no apb reset control found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*)* @cdn_dp_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_parse_dt(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  %8 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %9 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %8, i32 0, i32 10
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.platform_device* @to_platform_device(%struct.device* %14)
  store %struct.platform_device* %15, %struct.platform_device** %6, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = call i8* @syscon_regmap_lookup_by_phandle(%struct.device_node* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %19 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %18, i32 0, i32 9
  store i8* %17, i8** %19, align 8
  %20 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %21 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %20, i32 0, i32 9
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @IS_ERR(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @DRM_DEV_ERROR(%struct.device* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %29 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %28, i32 0, i32 9
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %2, align 4
  br label %190

32:                                               ; preds = %1
  %33 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %7, align 8
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.resource*, %struct.resource** %7, align 8
  %38 = call i8* @devm_ioremap_resource(%struct.device* %36, %struct.resource* %37)
  %39 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %40 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %42 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %41, i32 0, i32 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @IS_ERR(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %32
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @DRM_DEV_ERROR(%struct.device* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %50 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %49, i32 0, i32 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %2, align 4
  br label %190

53:                                               ; preds = %32
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i8* @devm_clk_get(%struct.device* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %57 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %56, i32 0, i32 7
  store i8* %55, i8** %57, align 8
  %58 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %59 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %58, i32 0, i32 7
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %53
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @DRM_DEV_ERROR(%struct.device* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %67 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %66, i32 0, i32 7
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  store i32 %69, i32* %2, align 4
  br label %190

70:                                               ; preds = %53
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i8* @devm_clk_get(%struct.device* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %73 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %74 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %76 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %75, i32 0, i32 6
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @IS_ERR(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %70
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i32 @DRM_DEV_ERROR(%struct.device* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %83 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %84 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %83, i32 0, i32 6
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @PTR_ERR(i8* %85)
  store i32 %86, i32* %2, align 4
  br label %190

87:                                               ; preds = %70
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = call i8* @devm_clk_get(%struct.device* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %90 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %91 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  %92 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %93 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %92, i32 0, i32 5
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @IS_ERR(i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %87
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = call i32 @DRM_DEV_ERROR(%struct.device* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %100 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %101 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %100, i32 0, i32 5
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @PTR_ERR(i8* %102)
  store i32 %103, i32* %2, align 4
  br label %190

104:                                              ; preds = %87
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call i8* @devm_clk_get(%struct.device* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %107 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %108 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %110 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @IS_ERR(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %104
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @DRM_DEV_ERROR(%struct.device* %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %117 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %118 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @PTR_ERR(i8* %119)
  store i32 %120, i32* %2, align 4
  br label %190

121:                                              ; preds = %104
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = call i8* @devm_reset_control_get(%struct.device* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %124 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %125 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %124, i32 0, i32 3
  store i8* %123, i8** %125, align 8
  %126 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %127 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @IS_ERR(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %121
  %132 = load %struct.device*, %struct.device** %4, align 8
  %133 = call i32 @DRM_DEV_ERROR(%struct.device* %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %134 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %135 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @PTR_ERR(i8* %136)
  store i32 %137, i32* %2, align 4
  br label %190

138:                                              ; preds = %121
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = call i8* @devm_reset_control_get(%struct.device* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %141 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %142 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  %143 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %144 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @IS_ERR(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %138
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = call i32 @DRM_DEV_ERROR(%struct.device* %149, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %151 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %152 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @PTR_ERR(i8* %153)
  store i32 %154, i32* %2, align 4
  br label %190

155:                                              ; preds = %138
  %156 = load %struct.device*, %struct.device** %4, align 8
  %157 = call i8* @devm_reset_control_get(%struct.device* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %158 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %159 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  %160 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %161 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = call i64 @IS_ERR(i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %155
  %166 = load %struct.device*, %struct.device** %4, align 8
  %167 = call i32 @DRM_DEV_ERROR(%struct.device* %166, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %168 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %169 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @PTR_ERR(i8* %170)
  store i32 %171, i32* %2, align 4
  br label %190

172:                                              ; preds = %155
  %173 = load %struct.device*, %struct.device** %4, align 8
  %174 = call i8* @devm_reset_control_get(%struct.device* %173, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %175 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %176 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  %177 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %178 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i64 @IS_ERR(i8* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %172
  %183 = load %struct.device*, %struct.device** %4, align 8
  %184 = call i32 @DRM_DEV_ERROR(%struct.device* %183, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %185 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %186 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @PTR_ERR(i8* %187)
  store i32 %188, i32* %2, align 4
  br label %190

189:                                              ; preds = %172
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %189, %182, %165, %148, %131, %114, %97, %80, %63, %46, %25
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i8* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i8* @devm_reset_control_get(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
