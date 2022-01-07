; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_ulps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_vc4_dsi_ulps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_dsi = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MIPI_DSI_CLOCK_NON_CONTINUOUS = common dso_local global i32 0, align 4
@PHYC_CLANE_ULPS = common dso_local global i32 0, align 4
@DSI_PHYC_DLANE0_ULPS = common dso_local global i32 0, align 4
@DSI_PHYC_DLANE1_ULPS = common dso_local global i32 0, align 4
@DSI_PHYC_DLANE2_ULPS = common dso_local global i32 0, align 4
@DSI_PHYC_DLANE3_ULPS = common dso_local global i32 0, align 4
@DSI1_STAT_PHY_CLOCK_ULPS = common dso_local global i32 0, align 4
@DSI1_STAT_PHY_D0_ULPS = common dso_local global i32 0, align 4
@DSI1_STAT_PHY_D1_ULPS = common dso_local global i32 0, align 4
@DSI1_STAT_PHY_D2_ULPS = common dso_local global i32 0, align 4
@DSI1_STAT_PHY_D3_ULPS = common dso_local global i32 0, align 4
@DSI1_STAT_PHY_CLOCK_STOP = common dso_local global i32 0, align 4
@DSI1_STAT_PHY_D0_STOP = common dso_local global i32 0, align 4
@DSI1_STAT_PHY_D1_STOP = common dso_local global i32 0, align 4
@DSI1_STAT_PHY_D2_STOP = common dso_local global i32 0, align 4
@DSI1_STAT_PHY_D3_STOP = common dso_local global i32 0, align 4
@PHY_AFEC0 = common dso_local global i32 0, align 4
@PHY_AFEC0_LATCH_ULPS = common dso_local global i32 0, align 4
@STAT = common dso_local global i32 0, align 4
@PHYC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Timeout waiting for DSI ULPS entry: STAT 0x%08x\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Timeout waiting for DSI STOP entry: STAT 0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc4_dsi*, i32)* @vc4_dsi_ulps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_dsi_ulps(%struct.vc4_dsi* %0, i32 %1) #0 {
  %3 = alloca %struct.vc4_dsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vc4_dsi* %0, %struct.vc4_dsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.vc4_dsi*, %struct.vc4_dsi** %3, align 8
  %12 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MIPI_DSI_CLOCK_NON_CONTINUOUS, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @PHYC_CLANE_ULPS, align 4
  %20 = call i32 @DSI_PORT_BIT(i32 %19)
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i32 [ %20, %18 ], [ 0, %21 ]
  %24 = load i32, i32* @DSI_PHYC_DLANE0_ULPS, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.vc4_dsi*, %struct.vc4_dsi** %3, align 8
  %27 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @DSI_PHYC_DLANE1_ULPS, align 4
  br label %33

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = or i32 %25, %34
  %36 = load %struct.vc4_dsi*, %struct.vc4_dsi** %3, align 8
  %37 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @DSI_PHYC_DLANE2_ULPS, align 4
  br label %43

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = or i32 %35, %44
  %46 = load %struct.vc4_dsi*, %struct.vc4_dsi** %3, align 8
  %47 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 3
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @DSI_PHYC_DLANE3_ULPS, align 4
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  %55 = or i32 %45, %54
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @DSI1_STAT_PHY_CLOCK_ULPS, align 4
  br label %61

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = load i32, i32* @DSI1_STAT_PHY_D0_ULPS, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.vc4_dsi*, %struct.vc4_dsi** %3, align 8
  %66 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @DSI1_STAT_PHY_D1_ULPS, align 4
  br label %72

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = or i32 %64, %73
  %75 = load %struct.vc4_dsi*, %struct.vc4_dsi** %3, align 8
  %76 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 2
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @DSI1_STAT_PHY_D2_ULPS, align 4
  br label %82

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = or i32 %74, %83
  %85 = load %struct.vc4_dsi*, %struct.vc4_dsi** %3, align 8
  %86 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 3
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @DSI1_STAT_PHY_D3_ULPS, align 4
  br label %92

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ %90, %89 ], [ 0, %91 ]
  %94 = or i32 %84, %93
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @DSI1_STAT_PHY_CLOCK_STOP, align 4
  br label %100

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = load i32, i32* @DSI1_STAT_PHY_D0_STOP, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.vc4_dsi*, %struct.vc4_dsi** %3, align 8
  %105 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i32, i32* @DSI1_STAT_PHY_D1_STOP, align 4
  br label %111

110:                                              ; preds = %100
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi i32 [ %109, %108 ], [ 0, %110 ]
  %113 = or i32 %103, %112
  %114 = load %struct.vc4_dsi*, %struct.vc4_dsi** %3, align 8
  %115 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 2
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @DSI1_STAT_PHY_D2_STOP, align 4
  br label %121

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i32 [ %119, %118 ], [ 0, %120 ]
  %123 = or i32 %113, %122
  %124 = load %struct.vc4_dsi*, %struct.vc4_dsi** %3, align 8
  %125 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 3
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @DSI1_STAT_PHY_D3_STOP, align 4
  br label %131

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi i32 [ %129, %128 ], [ 0, %130 ]
  %133 = or i32 %123, %132
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* @PHY_AFEC0, align 4
  %135 = call i32 @DSI_PORT_READ(i32 %134)
  %136 = load i32, i32* @PHY_AFEC0_LATCH_ULPS, align 4
  %137 = call i32 @DSI_PORT_BIT(i32 %136)
  %138 = and i32 %135, %137
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %131
  br label %219

143:                                              ; preds = %131
  %144 = load i32, i32* @STAT, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @DSI_PORT_WRITE(i32 %144, i32 %145)
  %147 = load i32, i32* @PHYC, align 4
  %148 = load i32, i32* @PHYC, align 4
  %149 = call i32 @DSI_PORT_READ(i32 %148)
  %150 = load i32, i32* %6, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @DSI_PORT_WRITE(i32 %147, i32 %151)
  %153 = load i32, i32* @STAT, align 4
  %154 = call i32 @DSI_PORT_READ(i32 %153)
  %155 = load i32, i32* %7, align 4
  %156 = and i32 %154, %155
  %157 = load i32, i32* %7, align 4
  %158 = icmp eq i32 %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @wait_for(i32 %159, i32 200)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %143
  %164 = load %struct.vc4_dsi*, %struct.vc4_dsi** %3, align 8
  %165 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %164, i32 0, i32 2
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i32, i32* @STAT, align 4
  %169 = call i32 @DSI_PORT_READ(i32 %168)
  %170 = call i32 @dev_warn(i32* %167, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @PHYC, align 4
  %172 = load i32, i32* @PHYC, align 4
  %173 = call i32 @DSI_PORT_READ(i32 %172)
  %174 = load i32, i32* %6, align 4
  %175 = xor i32 %174, -1
  %176 = and i32 %173, %175
  %177 = call i32 @DSI_PORT_WRITE(i32 %171, i32 %176)
  %178 = load %struct.vc4_dsi*, %struct.vc4_dsi** %3, align 8
  %179 = call i32 @vc4_dsi_latch_ulps(%struct.vc4_dsi* %178, i32 0)
  br label %219

180:                                              ; preds = %143
  %181 = load %struct.vc4_dsi*, %struct.vc4_dsi** %3, align 8
  %182 = load i32, i32* %4, align 4
  %183 = call i32 @vc4_dsi_latch_ulps(%struct.vc4_dsi* %181, i32 %182)
  %184 = load i32, i32* @STAT, align 4
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @DSI_PORT_WRITE(i32 %184, i32 %185)
  %187 = load i32, i32* @PHYC, align 4
  %188 = load i32, i32* @PHYC, align 4
  %189 = call i32 @DSI_PORT_READ(i32 %188)
  %190 = load i32, i32* %6, align 4
  %191 = xor i32 %190, -1
  %192 = and i32 %189, %191
  %193 = call i32 @DSI_PORT_WRITE(i32 %187, i32 %192)
  %194 = load i32, i32* @STAT, align 4
  %195 = call i32 @DSI_PORT_READ(i32 %194)
  %196 = load i32, i32* %8, align 4
  %197 = and i32 %195, %196
  %198 = load i32, i32* %8, align 4
  %199 = icmp eq i32 %197, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @wait_for(i32 %200, i32 200)
  store i32 %201, i32* %9, align 4
  %202 = load i32, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %219

204:                                              ; preds = %180
  %205 = load %struct.vc4_dsi*, %struct.vc4_dsi** %3, align 8
  %206 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %205, i32 0, i32 2
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i32, i32* @STAT, align 4
  %210 = call i32 @DSI_PORT_READ(i32 %209)
  %211 = call i32 @dev_warn(i32* %208, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* @PHYC, align 4
  %213 = load i32, i32* @PHYC, align 4
  %214 = call i32 @DSI_PORT_READ(i32 %213)
  %215 = load i32, i32* %6, align 4
  %216 = xor i32 %215, -1
  %217 = and i32 %214, %216
  %218 = call i32 @DSI_PORT_WRITE(i32 %212, i32 %217)
  br label %219

219:                                              ; preds = %142, %163, %204, %180
  ret void
}

declare dso_local i32 @DSI_PORT_BIT(i32) #1

declare dso_local i32 @DSI_PORT_READ(i32) #1

declare dso_local i32 @DSI_PORT_WRITE(i32, i32) #1

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @vc4_dsi_latch_ulps(%struct.vc4_dsi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
