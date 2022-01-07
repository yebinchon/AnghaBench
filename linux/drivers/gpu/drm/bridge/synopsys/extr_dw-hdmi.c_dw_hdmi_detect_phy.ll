; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_detect_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_detect_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.dw_hdmi = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i8*, i32* }
%struct.TYPE_5__ = type { i64, i32, i8*, i32*, i64 }

@DW_HDMI_PHY_VENDOR_PHY = common dso_local global i64 0, align 8
@HDMI_CONFIG2_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Vendor HDMI PHY not supported by glue layer\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@dw_hdmi_phys = common dso_local global %struct.TYPE_7__* null, align 8
@dw_hdmi_synopsys_phy_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s requires platform support\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unsupported HDMI PHY type (%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_hdmi*)* @dw_hdmi_detect_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_detect_phy(%struct.dw_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %3, align 8
  %6 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %7 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @DW_HDMI_PHY_VENDOR_PHY, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %16 = load i32, i32* @HDMI_CONFIG2_ID, align 4
  %17 = call i64 @hdmi_readb(%struct.dw_hdmi* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %12
  %19 = phi i64 [ %13, %12 ], [ %17, %14 ]
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @DW_HDMI_PHY_VENDOR_PHY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %18
  %24 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %25 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %32 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30, %23
  %38 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %39 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %143

44:                                               ; preds = %30
  %45 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %46 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %51 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i32* %49, i32** %52, align 8
  %53 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %54 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %59 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %62 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %67 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  store i32 0, i32* %2, align 4
  br label %143

69:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %132, %69
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dw_hdmi_phys, align 8
  %73 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %72)
  %74 = icmp ult i32 %71, %73
  br i1 %74, label %75, label %135

75:                                               ; preds = %70
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dw_hdmi_phys, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %131

84:                                               ; preds = %75
  %85 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %86 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i32* @dw_hdmi_synopsys_phy_ops, i32** %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dw_hdmi_phys, align 8
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %95 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dw_hdmi_phys, align 8
  %98 = load i32, i32* %4, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %99
  %101 = bitcast %struct.TYPE_7__* %100 to i8*
  %102 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %103 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dw_hdmi_phys, align 8
  %106 = load i32, i32* %4, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %130, label %112

112:                                              ; preds = %84
  %113 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %114 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %113, i32 0, i32 2
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %112
  %120 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %121 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %124 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 (i32, i8*, ...) @dev_err(i32 %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %126)
  %128 = load i32, i32* @ENODEV, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %143

130:                                              ; preds = %112, %84
  store i32 0, i32* %2, align 4
  br label %143

131:                                              ; preds = %75
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %4, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %70

135:                                              ; preds = %70
  %136 = load %struct.dw_hdmi*, %struct.dw_hdmi** %3, align 8
  %137 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i64, i64* %5, align 8
  %140 = call i32 (i32, i8*, ...) @dev_err(i32 %138, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %139)
  %141 = load i32, i32* @ENODEV, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %135, %130, %119, %44, %37
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i64 @hdmi_readb(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
