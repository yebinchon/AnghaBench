; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_cmn_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_cmn_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn88443x_priv = type { %struct.TYPE_2__*, i32, i32, %struct.regmap* }
%struct.TYPE_2__ = type { i64 }
%struct.regmap = type { i32 }

@OUTCSET = common dso_local global i32 0, align 4
@OUTCSET_CHDRV_8MA = common dso_local global i32 0, align 4
@PLDWSET = common dso_local global i32 0, align 4
@PLDWSET_NORMAL = common dso_local global i32 0, align 4
@HIZSET1 = common dso_local global i32 0, align 4
@HIZSET2 = common dso_local global i32 0, align 4
@HIZSET3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mn88443x_priv*)* @mn88443x_cmn_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mn88443x_cmn_power_on(%struct.mn88443x_priv* %0) #0 {
  %2 = alloca %struct.mn88443x_priv*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.mn88443x_priv* %0, %struct.mn88443x_priv** %2, align 8
  %4 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %2, align 8
  %5 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %4, i32 0, i32 3
  %6 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %6, %struct.regmap** %3, align 8
  %7 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %2, align 8
  %8 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_prepare_enable(i32 %9)
  %11 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %2, align 8
  %12 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @gpiod_set_value_cansleep(i32 %13, i32 1)
  %15 = call i32 @usleep_range(i32 100, i32 1000)
  %16 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %2, align 8
  %17 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @gpiod_set_value_cansleep(i32 %18, i32 0)
  %20 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %2, align 8
  %21 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %1
  %27 = load %struct.regmap*, %struct.regmap** %3, align 8
  %28 = load i32, i32* @OUTCSET, align 4
  %29 = load i32, i32* @OUTCSET_CHDRV_8MA, align 4
  %30 = call i32 @regmap_write(%struct.regmap* %27, i32 %28, i32 %29)
  %31 = load %struct.regmap*, %struct.regmap** %3, align 8
  %32 = load i32, i32* @PLDWSET, align 4
  %33 = load i32, i32* @PLDWSET_NORMAL, align 4
  %34 = call i32 @regmap_write(%struct.regmap* %31, i32 %32, i32 %33)
  %35 = load %struct.regmap*, %struct.regmap** %3, align 8
  %36 = load i32, i32* @HIZSET1, align 4
  %37 = call i32 @regmap_write(%struct.regmap* %35, i32 %36, i32 128)
  %38 = load %struct.regmap*, %struct.regmap** %3, align 8
  %39 = load i32, i32* @HIZSET2, align 4
  %40 = call i32 @regmap_write(%struct.regmap* %38, i32 %39, i32 224)
  br label %45

41:                                               ; preds = %1
  %42 = load %struct.regmap*, %struct.regmap** %3, align 8
  %43 = load i32, i32* @HIZSET3, align 4
  %44 = call i32 @regmap_write(%struct.regmap* %42, i32 %43, i32 143)
  br label %45

45:                                               ; preds = %41, %26
  ret void
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
