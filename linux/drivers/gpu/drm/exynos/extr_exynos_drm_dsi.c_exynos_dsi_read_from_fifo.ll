; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_read_from_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_read_from_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dsi = type { %struct.device* }
%struct.device = type { i32 }
%struct.exynos_dsi_transfer = type { i32*, i32, i32, i64 }

@DSIM_RXFIFO_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DSI Error Report: 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"response too long (%u > %u bytes), stripping\0A\00", align 1
@DSI_RX_FIFO_SIZE = common dso_local global i32 0, align 4
@DSI_RX_FIFO_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_dsi*, %struct.exynos_dsi_transfer*)* @exynos_dsi_read_from_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_dsi_read_from_fifo(%struct.exynos_dsi* %0, %struct.exynos_dsi_transfer* %1) #0 {
  %3 = alloca %struct.exynos_dsi*, align 8
  %4 = alloca %struct.exynos_dsi_transfer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.exynos_dsi* %0, %struct.exynos_dsi** %3, align 8
  store %struct.exynos_dsi_transfer* %1, %struct.exynos_dsi_transfer** %4, align 8
  %10 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %11 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %14 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32* %17, i32** %5, align 8
  %18 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %19 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %25 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %24, i32 0, i32 0
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %105

29:                                               ; preds = %2
  %30 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %31 = load i32, i32* @DSIM_RXFIFO_REG, align 4
  %32 = call i32 @exynos_dsi_read(%struct.exynos_dsi* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 63
  switch i32 %34, label %74 [
    i32 128, label %35
    i32 130, label %35
    i32 129, label %50
    i32 131, label %50
    i32 132, label %66
  ]

35:                                               ; preds = %29, %29
  %36 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %37 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 2
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 16
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %46 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %40, %35
  br label %50

50:                                               ; preds = %29, %29, %49
  %51 = load i32, i32* %9, align 4
  %52 = ashr i32 %51, 8
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %56 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %60 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %63 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %65 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  br label %187

66:                                               ; preds = %29
  %67 = load %struct.device*, %struct.device** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 65535
  %71 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %73 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  br label %187

74:                                               ; preds = %29
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %75, 8
  %77 = and i32 %76, 65535
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %80 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %74
  %84 = load %struct.device*, %struct.device** %7, align 8
  %85 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %86 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %91 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %8, align 4
  br label %104

93:                                               ; preds = %74
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %96 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %102 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %93
  br label %104

104:                                              ; preds = %103, %83
  br label %105

105:                                              ; preds = %104, %2
  %106 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %107 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %110 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %108, %111
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %115 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %118

118:                                              ; preds = %121, %105
  %119 = load i32, i32* %8, align 4
  %120 = icmp sge i32 %119, 4
  br i1 %120, label %121, label %149

121:                                              ; preds = %118
  %122 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %123 = load i32, i32* @DSIM_RXFIFO_REG, align 4
  %124 = call i32 @exynos_dsi_read(%struct.exynos_dsi* %122, i32 %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = ashr i32 %125, 0
  %127 = and i32 %126, 255
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %9, align 4
  %131 = ashr i32 %130, 8
  %132 = and i32 %131, 255
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %9, align 4
  %136 = ashr i32 %135, 16
  %137 = and i32 %136, 255
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %9, align 4
  %141 = ashr i32 %140, 24
  %142 = and i32 %141, 255
  %143 = load i32*, i32** %5, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 3
  store i32 %142, i32* %144, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 4
  store i32* %146, i32** %5, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sub nsw i32 %147, 4
  store i32 %148, i32* %8, align 4
  br label %118

149:                                              ; preds = %118
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %149
  %153 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %154 = load i32, i32* @DSIM_RXFIFO_REG, align 4
  %155 = call i32 @exynos_dsi_read(%struct.exynos_dsi* %153, i32 %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %8, align 4
  switch i32 %156, label %174 [
    i32 3, label %157
    i32 2, label %163
    i32 1, label %169
  ]

157:                                              ; preds = %152
  %158 = load i32, i32* %9, align 4
  %159 = ashr i32 %158, 16
  %160 = and i32 %159, 255
  %161 = load i32*, i32** %5, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %152, %157
  %164 = load i32, i32* %9, align 4
  %165 = ashr i32 %164, 8
  %166 = and i32 %165, 255
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %152, %163
  %170 = load i32, i32* %9, align 4
  %171 = and i32 %170, 255
  %172 = load i32*, i32** %5, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %169, %152
  br label %175

175:                                              ; preds = %174, %149
  %176 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %177 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %180 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %178, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load %struct.exynos_dsi_transfer*, %struct.exynos_dsi_transfer** %4, align 8
  %185 = getelementptr inbounds %struct.exynos_dsi_transfer, %struct.exynos_dsi_transfer* %184, i32 0, i32 3
  store i64 0, i64* %185, align 8
  br label %186

186:                                              ; preds = %183, %175
  br label %187

187:                                              ; preds = %186, %66, %50
  %188 = load i32, i32* @DSI_RX_FIFO_SIZE, align 4
  %189 = sdiv i32 %188, 4
  store i32 %189, i32* %8, align 4
  br label %190

190:                                              ; preds = %199, %187
  %191 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %192 = load i32, i32* @DSIM_RXFIFO_REG, align 4
  %193 = call i32 @exynos_dsi_read(%struct.exynos_dsi* %191, i32 %192)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @DSI_RX_FIFO_EMPTY, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  br label %203

198:                                              ; preds = %190
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %8, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %190, label %203

203:                                              ; preds = %199, %197
  ret void
}

declare dso_local i32 @exynos_dsi_read(%struct.exynos_dsi*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
