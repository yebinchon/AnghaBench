; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dc.c_ipu_dc_init_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dc.c_ipu_dc_init_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_dc = type { i64, i64, %struct.ipu_dc_priv* }
%struct.ipu_dc_priv = type { i64 }
%struct.ipu_di = type { i32 }

@DC_EVT_NL = common dso_local global i32 0, align 4
@DC_EVT_EOL = common dso_local global i32 0, align 4
@DC_EVT_NEW_DATA = common dso_local global i32 0, align 4
@SYNC_WAVE = common dso_local global i32 0, align 4
@WRG = common dso_local global i32 0, align 4
@NULL_WAVE = common dso_local global i32 0, align 4
@DC_EVT_NF = common dso_local global i32 0, align 4
@DC_EVT_NFIELD = common dso_local global i32 0, align 4
@DC_EVT_EOF = common dso_local global i32 0, align 4
@DC_EVT_EOFIELD = common dso_local global i32 0, align 4
@DC_EVT_NEW_CHAN = common dso_local global i32 0, align 4
@DC_EVT_NEW_ADDR = common dso_local global i32 0, align 4
@DC_WR_CH_CONF = common dso_local global i64 0, align 8
@DC_WR_CH_CONF_FIELD_MODE = common dso_local global i32 0, align 4
@DC_WR_CH_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_dc_init_sync(%struct.ipu_dc* %0, %struct.ipu_di* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ipu_dc*, align 8
  %7 = alloca %struct.ipu_di*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipu_dc_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ipu_dc* %0, %struct.ipu_dc** %6, align 8
  store %struct.ipu_di* %1, %struct.ipu_di** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %17 = getelementptr inbounds %struct.ipu_dc, %struct.ipu_dc* %16, i32 0, i32 2
  %18 = load %struct.ipu_dc_priv*, %struct.ipu_dc_priv** %17, align 8
  store %struct.ipu_dc_priv* %18, %struct.ipu_dc_priv** %11, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.ipu_di*, %struct.ipu_di** %7, align 8
  %20 = call i64 @ipu_di_get_num(%struct.ipu_di* %19)
  %21 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %22 = getelementptr inbounds %struct.ipu_dc, %struct.ipu_dc* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @ipu_bus_format_to_map(i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 6, i32 5
  store i32 %28, i32* %13, align 4
  %29 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %30 = getelementptr inbounds %struct.ipu_dc, %struct.ipu_dc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store i32 5, i32* %12, align 4
  br label %35

34:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %40 = load i32, i32* @DC_EVT_NL, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @dc_link_event(%struct.ipu_dc* %39, i32 %40, i32 %41, i32 3)
  %43 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %44 = load i32, i32* @DC_EVT_EOL, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @dc_link_event(%struct.ipu_dc* %43, i32 %44, i32 %45, i32 2)
  %47 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %48 = load i32, i32* @DC_EVT_NEW_DATA, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @dc_link_event(%struct.ipu_dc* %47, i32 %48, i32 %49, i32 1)
  %51 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @WROD(i32 0)
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @SYNC_WAVE, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @dc_write_tmpl(%struct.ipu_dc* %51, i32 %52, i32 %53, i32 0, i32 %54, i32 %55, i32 0, i32 %56, i32 1)
  br label %105

58:                                               ; preds = %35
  %59 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %60 = load i32, i32* @DC_EVT_NL, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 2
  %63 = call i32 @dc_link_event(%struct.ipu_dc* %59, i32 %60, i32 %62, i32 3)
  %64 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %65 = load i32, i32* @DC_EVT_EOL, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 3
  %68 = call i32 @dc_link_event(%struct.ipu_dc* %64, i32 %65, i32 %67, i32 2)
  %69 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %70 = load i32, i32* @DC_EVT_NEW_DATA, align 4
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @dc_link_event(%struct.ipu_dc* %69, i32 %70, i32 %72, i32 1)
  %74 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 2
  %77 = call i32 @WROD(i32 0)
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @SYNC_WAVE, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @dc_write_tmpl(%struct.ipu_dc* %74, i32 %76, i32 %77, i32 0, i32 %78, i32 %79, i32 8, i32 %80, i32 1)
  %82 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 3
  %85 = call i32 @WROD(i32 0)
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @SYNC_WAVE, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @dc_write_tmpl(%struct.ipu_dc* %82, i32 %84, i32 %85, i32 0, i32 %86, i32 %87, i32 4, i32 %88, i32 0)
  %90 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 4
  %93 = load i32, i32* @WRG, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @NULL_WAVE, align 4
  %96 = call i32 @dc_write_tmpl(%struct.ipu_dc* %90, i32 %92, i32 %93, i32 0, i32 %94, i32 %95, i32 0, i32 0, i32 1)
  %97 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  %100 = call i32 @WROD(i32 0)
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* @SYNC_WAVE, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @dc_write_tmpl(%struct.ipu_dc* %97, i32 %99, i32 %100, i32 0, i32 %101, i32 %102, i32 0, i32 %103, i32 1)
  br label %105

105:                                              ; preds = %58, %38
  %106 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %107 = load i32, i32* @DC_EVT_NF, align 4
  %108 = call i32 @dc_link_event(%struct.ipu_dc* %106, i32 %107, i32 0, i32 0)
  %109 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %110 = load i32, i32* @DC_EVT_NFIELD, align 4
  %111 = call i32 @dc_link_event(%struct.ipu_dc* %109, i32 %110, i32 0, i32 0)
  %112 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %113 = load i32, i32* @DC_EVT_EOF, align 4
  %114 = call i32 @dc_link_event(%struct.ipu_dc* %112, i32 %113, i32 0, i32 0)
  %115 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %116 = load i32, i32* @DC_EVT_EOFIELD, align 4
  %117 = call i32 @dc_link_event(%struct.ipu_dc* %115, i32 %116, i32 0, i32 0)
  %118 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %119 = load i32, i32* @DC_EVT_NEW_CHAN, align 4
  %120 = call i32 @dc_link_event(%struct.ipu_dc* %118, i32 %119, i32 0, i32 0)
  %121 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %122 = load i32, i32* @DC_EVT_NEW_ADDR, align 4
  %123 = call i32 @dc_link_event(%struct.ipu_dc* %121, i32 %122, i32 0, i32 0)
  %124 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %125 = getelementptr inbounds %struct.ipu_dc, %struct.ipu_dc* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @DC_WR_CH_CONF, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @readl(i64 %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %105
  %133 = load i32, i32* @DC_WR_CH_CONF_FIELD_MODE, align 4
  %134 = load i32, i32* %14, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %14, align 4
  br label %141

136:                                              ; preds = %105
  %137 = load i32, i32* @DC_WR_CH_CONF_FIELD_MODE, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %14, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %14, align 4
  br label %141

141:                                              ; preds = %136, %132
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %144 = getelementptr inbounds %struct.ipu_dc, %struct.ipu_dc* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @DC_WR_CH_CONF, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel(i32 %142, i64 %147)
  %149 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %150 = getelementptr inbounds %struct.ipu_dc, %struct.ipu_dc* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @DC_WR_CH_ADDR, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @writel(i32 0, i64 %153)
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.ipu_dc_priv*, %struct.ipu_dc_priv** %11, align 8
  %157 = getelementptr inbounds %struct.ipu_dc_priv, %struct.ipu_dc_priv* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.ipu_dc*, %struct.ipu_dc** %6, align 8
  %160 = getelementptr inbounds %struct.ipu_dc, %struct.ipu_dc* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @DC_DISP_CONF2(i64 %161)
  %163 = add nsw i64 %158, %162
  %164 = call i32 @writel(i32 %155, i64 %163)
  ret i32 0
}

declare dso_local i64 @ipu_di_get_num(%struct.ipu_di*) #1

declare dso_local i32 @ipu_bus_format_to_map(i32) #1

declare dso_local i32 @dc_link_event(%struct.ipu_dc*, i32, i32, i32) #1

declare dso_local i32 @dc_write_tmpl(%struct.ipu_dc*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WROD(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @DC_DISP_CONF2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
