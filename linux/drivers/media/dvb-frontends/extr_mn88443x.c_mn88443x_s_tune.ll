; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_s_tune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_s_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn88443x_priv = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.dtv_frontend_properties = type { i32 }

@ATSIDU_S = common dso_local global i32 0, align 4
@ATSIDL_S = common dso_local global i32 0, align 4
@TSSET_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mn88443x_priv*, %struct.dtv_frontend_properties*)* @mn88443x_s_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mn88443x_s_tune(%struct.mn88443x_priv* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.mn88443x_priv*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.regmap*, align 8
  store %struct.mn88443x_priv* %0, %struct.mn88443x_priv** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %6 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %6, i32 0, i32 0
  %8 = load %struct.regmap*, %struct.regmap** %7, align 8
  store %struct.regmap* %8, %struct.regmap** %5, align 8
  %9 = load %struct.regmap*, %struct.regmap** %5, align 8
  %10 = load i32, i32* @ATSIDU_S, align 4
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %12 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 8
  %15 = call i32 @regmap_write(%struct.regmap* %9, i32 %10, i32 %14)
  %16 = load %struct.regmap*, %struct.regmap** %5, align 8
  %17 = load i32, i32* @ATSIDL_S, align 4
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regmap_write(%struct.regmap* %16, i32 %17, i32 %20)
  %22 = load %struct.regmap*, %struct.regmap** %5, align 8
  %23 = load i32, i32* @TSSET_S, align 4
  %24 = call i32 @regmap_write(%struct.regmap* %22, i32 %23, i32 0)
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
