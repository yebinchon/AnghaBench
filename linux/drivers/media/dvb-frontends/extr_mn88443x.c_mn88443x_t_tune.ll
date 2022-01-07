; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_t_tune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_t_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn88443x_priv = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.dtv_frontend_properties = type { i32 }

@MDSET_T_MDAUTO_MASK = common dso_local global i32 0, align 4
@MDSET_T_FFTS_MASK = common dso_local global i32 0, align 4
@MDSET_T_GI_MASK = common dso_local global i32 0, align 4
@MDSET_T_MDAUTO_AUTO = common dso_local global i32 0, align 4
@MDSET_T_FFTS_MODE3 = common dso_local global i32 0, align 4
@MDSET_T_GI_1_8 = common dso_local global i32 0, align 4
@MDSET_T = common dso_local global i32 0, align 4
@MDASET_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mn88443x_priv*, %struct.dtv_frontend_properties*)* @mn88443x_t_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mn88443x_t_tune(%struct.mn88443x_priv* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.mn88443x_priv*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mn88443x_priv* %0, %struct.mn88443x_priv** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %8 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %8, i32 0, i32 0
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %5, align 8
  %11 = load i32, i32* @MDSET_T_MDAUTO_MASK, align 4
  %12 = load i32, i32* @MDSET_T_FFTS_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MDSET_T_GI_MASK, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @MDSET_T_MDAUTO_AUTO, align 4
  %17 = load i32, i32* @MDSET_T_FFTS_MODE3, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MDSET_T_GI_1_8, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.regmap*, %struct.regmap** %5, align 8
  %22 = load i32, i32* @MDSET_T, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @regmap_update_bits(%struct.regmap* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.regmap*, %struct.regmap** %5, align 8
  %27 = load i32, i32* @MDASET_T, align 4
  %28 = call i32 @regmap_write(%struct.regmap* %26, i32 %27, i32 0)
  ret void
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
