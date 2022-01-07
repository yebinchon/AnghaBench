; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40_ll.c_d40_phy_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40_ll.c_d40_phy_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stedma40_chan_cfg = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_4__ = type { i64, i32, i64, i32 }
%struct.TYPE_3__ = type { i64, i32, i64, i32 }

@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@DMA_DEV_TO_DEV = common dso_local global i64 0, align 8
@D40_SREG_CFG_MST_POS = common dso_local global i32 0, align 4
@STEDMA40_NO_FLOW_CTRL = common dso_local global i64 0, align 8
@D40_SREG_CFG_PHY_TM_POS = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@D40_SREG_CFG_TIM_POS = common dso_local global i32 0, align 4
@D40_SREG_CFG_EIM_POS = common dso_local global i32 0, align 4
@STEDMA40_PSIZE_PHY_1 = common dso_local global i32 0, align 4
@D40_SREG_CFG_PHY_PEN_POS = common dso_local global i32 0, align 4
@D40_SREG_CFG_PSIZE_POS = common dso_local global i32 0, align 4
@D40_SREG_CFG_ESIZE_POS = common dso_local global i32 0, align 4
@D40_SREG_CFG_PRI_POS = common dso_local global i32 0, align 4
@D40_SREG_CFG_LBE_POS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @d40_phy_cfg(%struct.stedma40_chan_cfg* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.stedma40_chan_cfg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stedma40_chan_cfg* %0, %struct.stedma40_chan_cfg** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %10 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %16 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DMA_DEV_TO_DEV, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %14, %3
  %21 = load i32, i32* @D40_SREG_CFG_MST_POS, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @D40_TYPE_TO_EVENT(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %32 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @STEDMA40_NO_FLOW_CTRL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %20
  %38 = load i32, i32* @D40_SREG_CFG_PHY_TM_POS, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %47

42:                                               ; preds = %20
  %43 = load i32, i32* @D40_SREG_CFG_PHY_TM_POS, align 4
  %44 = shl i32 3, %43
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %47, %14
  %49 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %50 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %48
  %55 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %56 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DMA_DEV_TO_DEV, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %88

60:                                               ; preds = %54, %48
  %61 = load i32, i32* @D40_SREG_CFG_MST_POS, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %66 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @D40_TYPE_TO_EVENT(i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  %71 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %72 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @STEDMA40_NO_FLOW_CTRL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %60
  %78 = load i32, i32* @D40_SREG_CFG_PHY_TM_POS, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %87

82:                                               ; preds = %60
  %83 = load i32, i32* @D40_SREG_CFG_PHY_TM_POS, align 4
  %84 = shl i32 3, %83
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %82, %77
  br label %88

88:                                               ; preds = %87, %54
  %89 = load i32, i32* @D40_SREG_CFG_TIM_POS, align 4
  %90 = call i32 @BIT(i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* @D40_SREG_CFG_EIM_POS, align 4
  %94 = call i32 @BIT(i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* @D40_SREG_CFG_EIM_POS, align 4
  %98 = call i32 @BIT(i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %102 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @STEDMA40_PSIZE_PHY_1, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %88
  %108 = load i32, i32* @D40_SREG_CFG_PHY_PEN_POS, align 4
  %109 = call i32 @BIT(i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %7, align 4
  %112 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %113 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @D40_SREG_CFG_PSIZE_POS, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* %7, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %107, %88
  %121 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %122 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @STEDMA40_PSIZE_PHY_1, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %120
  %128 = load i32, i32* @D40_SREG_CFG_PHY_PEN_POS, align 4
  %129 = call i32 @BIT(i32 %128)
  %130 = load i32, i32* %8, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %133 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @D40_SREG_CFG_PSIZE_POS, align 4
  %137 = shl i32 %135, %136
  %138 = load i32, i32* %8, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %127, %120
  %141 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %142 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @d40_width_to_bits(i32 %144)
  %146 = load i32, i32* @D40_SREG_CFG_ESIZE_POS, align 4
  %147 = shl i32 %145, %146
  %148 = load i32, i32* %7, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %7, align 4
  %150 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %151 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @d40_width_to_bits(i32 %153)
  %155 = load i32, i32* @D40_SREG_CFG_ESIZE_POS, align 4
  %156 = shl i32 %154, %155
  %157 = load i32, i32* %8, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %8, align 4
  %159 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %160 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %140
  %164 = load i32, i32* @D40_SREG_CFG_PRI_POS, align 4
  %165 = call i32 @BIT(i32 %164)
  %166 = load i32, i32* %7, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* @D40_SREG_CFG_PRI_POS, align 4
  %169 = call i32 @BIT(i32 %168)
  %170 = load i32, i32* %8, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %163, %140
  %173 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %174 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %172
  %179 = load i32, i32* @D40_SREG_CFG_LBE_POS, align 4
  %180 = call i32 @BIT(i32 %179)
  %181 = load i32, i32* %7, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %178, %172
  %184 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %185 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %183
  %190 = load i32, i32* @D40_SREG_CFG_LBE_POS, align 4
  %191 = call i32 @BIT(i32 %190)
  %192 = load i32, i32* %8, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %8, align 4
  br label %194

194:                                              ; preds = %189, %183
  %195 = load i32, i32* %7, align 4
  %196 = load i32*, i32** %5, align 8
  store i32 %195, i32* %196, align 4
  %197 = load i32, i32* %8, align 4
  %198 = load i32*, i32** %6, align 8
  store i32 %197, i32* %198, align 4
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @D40_TYPE_TO_EVENT(i32) #1

declare dso_local i32 @d40_width_to_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
