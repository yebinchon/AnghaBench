; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw_hdmi-rockchip.c_rockchip_hdmi_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw_hdmi-rockchip.c_rockchip_hdmi_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_hdmi = type { i32*, %struct.TYPE_3__*, i32*, i32* }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to get rockchip,grf\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vpll\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to get grf clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"grf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_hdmi*)* @rockchip_hdmi_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_hdmi_parse_dt(%struct.rockchip_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_hdmi*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.rockchip_hdmi* %0, %struct.rockchip_hdmi** %3, align 8
  %5 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %6 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = call i32* @syscon_regmap_lookup_by_phandle(%struct.device_node* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %13 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %12, i32 0, i32 3
  store i32* %11, i32** %13, align 8
  %14 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %15 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @IS_ERR(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %21 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = call i32 @DRM_DEV_ERROR(%struct.TYPE_3__* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %25 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @PTR_ERR(i32* %26)
  store i32 %27, i32* %2, align 4
  br label %121

28:                                               ; preds = %1
  %29 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %30 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i8* @devm_clk_get(%struct.TYPE_3__* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %35 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  %36 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %37 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @PTR_ERR(i32* %38)
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %28
  %44 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %45 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  br label %74

46:                                               ; preds = %28
  %47 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %48 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @PTR_ERR(i32* %49)
  %51 = load i32, i32* @EPROBE_DEFER, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* @EPROBE_DEFER, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %121

57:                                               ; preds = %46
  %58 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %59 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @IS_ERR(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %65 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = call i32 @DRM_DEV_ERROR(%struct.TYPE_3__* %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %69 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @PTR_ERR(i32* %70)
  store i32 %71, i32* %2, align 4
  br label %121

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73, %43
  %75 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %76 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = call i8* @devm_clk_get(%struct.TYPE_3__* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %81 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  %82 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %83 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @PTR_ERR(i32* %84)
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %91 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %90, i32 0, i32 0
  store i32* null, i32** %91, align 8
  br label %120

92:                                               ; preds = %74
  %93 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %94 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @PTR_ERR(i32* %95)
  %97 = load i32, i32* @EPROBE_DEFER, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32, i32* @EPROBE_DEFER, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %121

103:                                              ; preds = %92
  %104 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %105 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i64 @IS_ERR(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %111 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = call i32 @DRM_DEV_ERROR(%struct.TYPE_3__* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %114 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %3, align 8
  %115 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @PTR_ERR(i32* %116)
  store i32 %117, i32* %2, align 4
  br label %121

118:                                              ; preds = %103
  br label %119

119:                                              ; preds = %118
  br label %120

120:                                              ; preds = %119, %89
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %120, %109, %100, %63, %54, %19
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_3__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
