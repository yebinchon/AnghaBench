; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_read_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_read_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dsi = type { i32 }
%struct.mipi_dsi_msg = type { i32*, i32 }

@DSI_RD_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Acknowledge and error report: %04x\0A\00", align 1
@error_report = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"  %2u: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unhandled response type: %02x\0A\00", align 1
@EPROTO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tegra_dsi*, %struct.mipi_dsi_msg*, i64)* @tegra_dsi_read_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tegra_dsi_read_response(%struct.tegra_dsi* %0, %struct.mipi_dsi_msg* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.tegra_dsi*, align 8
  %6 = alloca %struct.mipi_dsi_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.tegra_dsi* %0, %struct.tegra_dsi** %5, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %6, align 8
  %17 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.tegra_dsi*, %struct.tegra_dsi** %5, align 8
  %20 = load i32, i32* @DSI_RD_DATA, align 4
  %21 = call i32 @tegra_dsi_readl(%struct.tegra_dsi* %19, i32 %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = and i32 %22, 63
  switch i32 %23, label %95 [
    i32 132, label %24
    i32 130, label %60
    i32 129, label %66
    i32 131, label %77
    i32 128, label %86
  ]

24:                                               ; preds = %3
  %25 = load i32, i32* %14, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 65535
  store i32 %27, i32* %13, align 4
  %28 = load %struct.tegra_dsi*, %struct.tegra_dsi** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %56, %24
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** @error_report, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.tegra_dsi*, %struct.tegra_dsi** %5, align 8
  %46 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32*, i32** @error_report, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %44, %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %33

59:                                               ; preds = %33
  br label %104

60:                                               ; preds = %3
  %61 = load i32, i32* %14, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 255
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %63, i32* %65, align 4
  store i64 1, i64* %12, align 8
  br label %104

66:                                               ; preds = %3
  %67 = load i32, i32* %14, align 4
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 255
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %14, align 4
  %73 = ashr i32 %72, 16
  %74 = and i32 %73, 255
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %74, i32* %76, align 4
  store i64 2, i64* %12, align 8
  br label %104

77:                                               ; preds = %3
  %78 = load i32, i32* %14, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 65280
  %81 = load i32, i32* %14, align 4
  %82 = ashr i32 %81, 8
  %83 = and i32 %82, 255
  %84 = or i32 %80, %83
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %12, align 8
  br label %104

86:                                               ; preds = %3
  %87 = load i32, i32* %14, align 4
  %88 = ashr i32 %87, 8
  %89 = and i32 %88, 65280
  %90 = load i32, i32* %14, align 4
  %91 = ashr i32 %90, 8
  %92 = and i32 %91, 255
  %93 = or i32 %89, %92
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %12, align 8
  br label %104

95:                                               ; preds = %3
  %96 = load %struct.tegra_dsi*, %struct.tegra_dsi** %5, align 8
  %97 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %14, align 4
  %100 = and i32 %99, 63
  %101 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i64, i64* @EPROTO, align 8
  %103 = sub i64 0, %102
  store i64 %103, i64* %4, align 8
  br label %171

104:                                              ; preds = %86, %77, %66, %60, %59
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %6, align 8
  %107 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @min(i64 %105, i32 %108)
  store i64 %109, i64* %12, align 8
  %110 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %6, align 8
  %111 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %169

114:                                              ; preds = %104
  %115 = load i64, i64* %12, align 8
  %116 = icmp ugt i64 %115, 0
  br i1 %116, label %117, label %169

117:                                              ; preds = %114
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %163, %117
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = load i64, i64* %7, align 8
  %122 = sub i64 %121, 1
  %123 = icmp ult i64 %120, %122
  br i1 %123, label %124, label %168

124:                                              ; preds = %118
  %125 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %6, align 8
  %126 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32* %130, i32** %15, align 8
  %131 = load %struct.tegra_dsi*, %struct.tegra_dsi** %5, align 8
  %132 = load i32, i32* @DSI_RD_DATA, align 4
  %133 = call i32 @tegra_dsi_readl(%struct.tegra_dsi* %131, i32 %132)
  store i32 %133, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %159, %124
  %135 = load i32, i32* %11, align 4
  %136 = icmp ult i32 %135, 4
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %11, align 4
  %140 = add i32 %138, %139
  %141 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %6, align 8
  %142 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp ult i32 %140, %143
  br label %145

145:                                              ; preds = %137, %134
  %146 = phi i1 [ false, %134 ], [ %144, %137 ]
  br i1 %146, label %147, label %162

147:                                              ; preds = %145
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %11, align 4
  %150 = shl i32 %149, 3
  %151 = ashr i32 %148, %150
  %152 = and i32 %151, 255
  %153 = load i32*, i32** %15, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = add i32 %154, %155
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  store i32 %152, i32* %158, align 4
  br label %159

159:                                              ; preds = %147
  %160 = load i32, i32* %11, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %134

162:                                              ; preds = %145
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %9, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %10, align 4
  %167 = add i32 %166, 4
  store i32 %167, i32* %10, align 4
  br label %118

168:                                              ; preds = %118
  br label %169

169:                                              ; preds = %168, %114, %104
  %170 = load i64, i64* %12, align 8
  store i64 %170, i64* %4, align 8
  br label %171

171:                                              ; preds = %169, %95
  %172 = load i64, i64* %4, align 8
  ret i64 %172
}

declare dso_local i32 @tegra_dsi_readl(%struct.tegra_dsi*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
