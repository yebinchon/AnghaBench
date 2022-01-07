; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dmfc.c_ipu_dmfc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dmfc.c_ipu_dmfc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.ipu_soc = type { %struct.ipu_dmfc_priv* }
%struct.ipu_dmfc_priv = type { i64, %struct.TYPE_3__*, i32, %struct.ipu_soc*, %struct.device* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__*, %struct.ipu_soc*, %struct.ipu_dmfc_priv* }
%struct.device = type { i32 }
%struct.clk = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMFC_NUM_CHANNELS = common dso_local global i32 0, align 4
@dmfcdata = common dso_local global %struct.TYPE_4__* null, align 8
@IPUV3_CHANNEL_MEM_BG_SYNC = common dso_local global i64 0, align 8
@IPUV3_CHANNEL_MEM_FG_SYNC = common dso_local global i64 0, align 8
@IPUV3_CHANNEL_MEM_DC_SYNC = common dso_local global i64 0, align 8
@DMFC_WR_CHAN = common dso_local global i64 0, align 8
@DMFC_DP_CHAN = common dso_local global i64 0, align 8
@DMFC_WR_CHAN_DEF = common dso_local global i64 0, align 8
@DMFC_DP_CHAN_DEF = common dso_local global i64 0, align 8
@DMFC_GENERAL1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_dmfc_init(%struct.ipu_soc* %0, %struct.device* %1, i64 %2, %struct.clk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_soc*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca %struct.ipu_dmfc_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.ipu_soc* %0, %struct.ipu_soc** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.clk* %3, %struct.clk** %9, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ipu_dmfc_priv* @devm_kzalloc(%struct.device* %12, i32 40, i32 %13)
  store %struct.ipu_dmfc_priv* %14, %struct.ipu_dmfc_priv** %10, align 8
  %15 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %16 = icmp ne %struct.ipu_dmfc_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %148

20:                                               ; preds = %4
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = call i64 @devm_ioremap(%struct.device* %21, i64 %22, i32 %23)
  %25 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %26 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %28 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %148

34:                                               ; preds = %20
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %37 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %36, i32 0, i32 4
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %39 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %40 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %39, i32 0, i32 3
  store %struct.ipu_soc* %38, %struct.ipu_soc** %40, align 8
  %41 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %42 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %41, i32 0, i32 2
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %45 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %46 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %45, i32 0, i32 0
  store %struct.ipu_dmfc_priv* %44, %struct.ipu_dmfc_priv** %46, align 8
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %114, %34
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @DMFC_NUM_CHANNELS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %117

51:                                               ; preds = %47
  %52 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %53 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %54 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  store %struct.ipu_dmfc_priv* %52, %struct.ipu_dmfc_priv** %59, align 8
  %60 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %61 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %62 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store %struct.ipu_soc* %60, %struct.ipu_soc** %67, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dmfcdata, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %73 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %78, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dmfcdata, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IPUV3_CHANNEL_MEM_BG_SYNC, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %105, label %87

87:                                               ; preds = %51
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dmfcdata, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IPUV3_CHANNEL_MEM_FG_SYNC, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %105, label %96

96:                                               ; preds = %87
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dmfcdata, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @IPUV3_CHANNEL_MEM_DC_SYNC, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %96, %87, %51
  %106 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %107 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %106, i32 0, i32 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 2, i32* %112, align 8
  br label %113

113:                                              ; preds = %105, %96
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %47

117:                                              ; preds = %47
  %118 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %119 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DMFC_WR_CHAN, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 80, i64 %122)
  %124 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %125 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @DMFC_DP_CHAN, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @writel(i32 22100, i64 %128)
  %130 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %131 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DMFC_WR_CHAN_DEF, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @writel(i32 538976502, i64 %134)
  %136 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %137 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @DMFC_DP_CHAN_DEF, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel(i32 539031286, i64 %140)
  %142 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %10, align 8
  %143 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @DMFC_GENERAL1, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writel(i32 3, i64 %146)
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %117, %31, %17
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local %struct.ipu_dmfc_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @devm_ioremap(%struct.device*, i64, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
