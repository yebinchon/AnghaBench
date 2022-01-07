; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy.c_msm_hdmi_phy_resource_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy.c_msm_hdmi_phy_resource_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_phy = type { %struct.regulator**, %struct.TYPE_2__*, %struct.regulator**, %struct.hdmi_phy_cfg* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.regulator = type { i32 }
%struct.hdmi_phy_cfg = type { i32, i32, i32*, i32* }
%struct.clk = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to get phy regulator: %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get phy clock: %s (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_phy*)* @msm_hdmi_phy_resource_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_hdmi_phy_resource_init(%struct.hdmi_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdmi_phy*, align 8
  %4 = alloca %struct.hdmi_phy_cfg*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator*, align 8
  %9 = alloca %struct.clk*, align 8
  store %struct.hdmi_phy* %0, %struct.hdmi_phy** %3, align 8
  %10 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %11 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %10, i32 0, i32 3
  %12 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %11, align 8
  store %struct.hdmi_phy_cfg* %12, %struct.hdmi_phy_cfg** %4, align 8
  %13 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %14 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.hdmi_phy_cfg, %struct.hdmi_phy_cfg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kcalloc(%struct.device* %17, i32 %20, i32 8, i32 %21)
  %23 = bitcast i8* %22 to %struct.regulator**
  %24 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %25 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %24, i32 0, i32 2
  store %struct.regulator** %23, %struct.regulator*** %25, align 8
  %26 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %27 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %26, i32 0, i32 2
  %28 = load %struct.regulator**, %struct.regulator*** %27, align 8
  %29 = icmp ne %struct.regulator** %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %147

33:                                               ; preds = %1
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %4, align 8
  %36 = getelementptr inbounds %struct.hdmi_phy_cfg, %struct.hdmi_phy_cfg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @devm_kcalloc(%struct.device* %34, i32 %37, i32 8, i32 %38)
  %40 = bitcast i8* %39 to %struct.regulator**
  %41 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %42 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %41, i32 0, i32 0
  store %struct.regulator** %40, %struct.regulator*** %42, align 8
  %43 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %44 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %43, i32 0, i32 0
  %45 = load %struct.regulator**, %struct.regulator*** %44, align 8
  %46 = icmp ne %struct.regulator** %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %33
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %147

50:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %92, %50
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %4, align 8
  %54 = getelementptr inbounds %struct.hdmi_phy_cfg, %struct.hdmi_phy_cfg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %51
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %4, align 8
  %60 = getelementptr inbounds %struct.hdmi_phy_cfg, %struct.hdmi_phy_cfg* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.regulator* @devm_regulator_get(%struct.device* %58, i32 %65)
  store %struct.regulator* %66, %struct.regulator** %8, align 8
  %67 = load %struct.regulator*, %struct.regulator** %8, align 8
  %68 = call i64 @IS_ERR(%struct.regulator* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %57
  %71 = load %struct.regulator*, %struct.regulator** %8, align 8
  %72 = call i32 @PTR_ERR(%struct.regulator* %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %4, align 8
  %75 = getelementptr inbounds %struct.hdmi_phy_cfg, %struct.hdmi_phy_cfg* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @DRM_DEV_ERROR(%struct.device* %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %147

84:                                               ; preds = %57
  %85 = load %struct.regulator*, %struct.regulator** %8, align 8
  %86 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %87 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %86, i32 0, i32 2
  %88 = load %struct.regulator**, %struct.regulator*** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.regulator*, %struct.regulator** %88, i64 %90
  store %struct.regulator* %85, %struct.regulator** %91, align 8
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %51

95:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %143, %95
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %4, align 8
  %99 = getelementptr inbounds %struct.hdmi_phy_cfg, %struct.hdmi_phy_cfg* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %146

102:                                              ; preds = %96
  %103 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %104 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %4, align 8
  %107 = getelementptr inbounds %struct.hdmi_phy_cfg, %struct.hdmi_phy_cfg* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call %struct.regulator* @msm_clk_get(%struct.TYPE_2__* %105, i32 %112)
  %114 = bitcast %struct.regulator* %113 to %struct.clk*
  store %struct.clk* %114, %struct.clk** %9, align 8
  %115 = load %struct.clk*, %struct.clk** %9, align 8
  %116 = bitcast %struct.clk* %115 to %struct.regulator*
  %117 = call i64 @IS_ERR(%struct.regulator* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %102
  %120 = load %struct.clk*, %struct.clk** %9, align 8
  %121 = bitcast %struct.clk* %120 to %struct.regulator*
  %122 = call i32 @PTR_ERR(%struct.regulator* %121)
  store i32 %122, i32* %7, align 4
  %123 = load %struct.device*, %struct.device** %5, align 8
  %124 = load %struct.hdmi_phy_cfg*, %struct.hdmi_phy_cfg** %4, align 8
  %125 = getelementptr inbounds %struct.hdmi_phy_cfg, %struct.hdmi_phy_cfg* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @DRM_DEV_ERROR(%struct.device* %123, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %2, align 4
  br label %147

134:                                              ; preds = %102
  %135 = load %struct.clk*, %struct.clk** %9, align 8
  %136 = bitcast %struct.clk* %135 to %struct.regulator*
  %137 = load %struct.hdmi_phy*, %struct.hdmi_phy** %3, align 8
  %138 = getelementptr inbounds %struct.hdmi_phy, %struct.hdmi_phy* %137, i32 0, i32 0
  %139 = load %struct.regulator**, %struct.regulator*** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.regulator*, %struct.regulator** %139, i64 %141
  store %struct.regulator* %136, %struct.regulator** %142, align 8
  br label %143

143:                                              ; preds = %134
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %96

146:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %119, %70, %47, %30
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.regulator* @devm_regulator_get(%struct.device*, i32) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32, i32) #1

declare dso_local %struct.regulator* @msm_clk_get(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
