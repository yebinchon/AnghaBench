; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_cio_wait_tx_clk_esc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_cio_wait_tx_clk_esc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@DSI_MAX_NR_LANES = common dso_local global i32 0, align 4
@dsi_cio_wait_tx_clk_esc_reset.offsets_old = internal constant [3 x i32] [i32 28, i32 27, i32 26], align 4
@dsi_cio_wait_tx_clk_esc_reset.offsets_new = internal constant [5 x i32] [i32 24, i32 25, i32 26, i32 27, i32 28], align 16
@DSI_QUIRK_REVERSE_TXCLKESC = common dso_local global i32 0, align 4
@DSI_LANE_UNUSED = common dso_local global i64 0, align 8
@DSI_DSIPHY_CFG5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"CIO TXCLKESC%d domain not coming out of reset\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*)* @dsi_cio_wait_tx_clk_esc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_cio_wait_tx_clk_esc_reset(%struct.dsi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  %12 = load i32, i32* @DSI_MAX_NR_LANES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %17 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DSI_QUIRK_REVERSE_TXCLKESC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @dsi_cio_wait_tx_clk_esc_reset.offsets_old, i64 0, i64 0), i32** %8, align 8
  br label %26

25:                                               ; preds = %1
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @dsi_cio_wait_tx_clk_esc_reset.offsets_new, i64 0, i64 0), i32** %8, align 8
  br label %26

26:                                               ; preds = %25, %24
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %30 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %35 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DSI_LANE_UNUSED, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %15, i64 %46
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %27

51:                                               ; preds = %27
  store i32 100000, i32* %4, align 4
  br label %52

52:                                               ; preds = %130, %51
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %55 = load i32, i32* @DSI_DSIPHY_CFG5, align 4
  %56 = call i32 @dsi_read_reg(%struct.dsi_data* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %83, %53
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %60 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %15, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 1, %75
  %77 = and i32 %70, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69, %63
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %79, %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %57

86:                                               ; preds = %57
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %89 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %131

93:                                               ; preds = %86
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %4, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %130

97:                                               ; preds = %93
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %124, %97
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %101 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %98
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %15, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %104
  %111 = load i32, i32* %9, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 1, %116
  %118 = and i32 %111, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %110, %104
  br label %124

121:                                              ; preds = %110
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @DSSERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %121, %120
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %98

127:                                              ; preds = %98
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %132

130:                                              ; preds = %93
  br label %52

131:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %132

132:                                              ; preds = %131, %127
  %133 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #2

declare dso_local i32 @DSSERR(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
