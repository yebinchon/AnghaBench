; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.dtv_frontend_properties, %struct.mn88443x_priv* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_3__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.dtv_frontend_properties = type { i64 }
%struct.mn88443x_priv = type { %struct.regmap*, %struct.regmap* }
%struct.regmap = type { i32 }

@SYS_ISDBS = common dso_local global i64 0, align 8
@TSSET1_TSASEL_ISDBS = common dso_local global i32 0, align 4
@TSSET3_INTASEL_S = common dso_local global i32 0, align 4
@SYS_ISDBT = common dso_local global i64 0, align 8
@TSSET1_TSASEL_ISDBT = common dso_local global i32 0, align 4
@TSSET3_INTASEL_T = common dso_local global i32 0, align 4
@TSSET1 = common dso_local global i32 0, align 4
@TSSET1_TSASEL_MASK = common dso_local global i32 0, align 4
@TSSET1_TSBSEL_MASK = common dso_local global i32 0, align 4
@TSSET1_TSBSEL_NONE = common dso_local global i32 0, align 4
@TSSET2 = common dso_local global i32 0, align 4
@TSSET3 = common dso_local global i32 0, align 4
@TSSET3_INTASEL_MASK = common dso_local global i32 0, align 4
@TSSET3_INTBSEL_MASK = common dso_local global i32 0, align 4
@TSSET3_INTBSEL_NONE = common dso_local global i32 0, align 4
@DOSET1_T = common dso_local global i32 0, align 4
@DOSET1_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mn88443x_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn88443x_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.mn88443x_priv*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 2
  %11 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %10, align 8
  store %struct.mn88443x_priv* %11, %struct.mn88443x_priv** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %4, align 8
  %14 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %15 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %14, i32 0, i32 1
  %16 = load %struct.regmap*, %struct.regmap** %15, align 8
  store %struct.regmap* %16, %struct.regmap** %5, align 8
  %17 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %18 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %17, i32 0, i32 0
  %19 = load %struct.regmap*, %struct.regmap** %18, align 8
  store %struct.regmap* %19, %struct.regmap** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SYS_ISDBS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %27 = call i32 @mn88443x_s_wake(%struct.mn88443x_priv* %26)
  %28 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %29 = call i32 @mn88443x_t_sleep(%struct.mn88443x_priv* %28)
  %30 = load i32, i32* @TSSET1_TSASEL_ISDBS, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @TSSET3_INTASEL_S, align 4
  store i32 %31, i32* %8, align 4
  br label %48

32:                                               ; preds = %1
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SYS_ISDBT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %40 = call i32 @mn88443x_s_sleep(%struct.mn88443x_priv* %39)
  %41 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %42 = call i32 @mn88443x_t_wake(%struct.mn88443x_priv* %41)
  %43 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %44 = call i32 @mn88443x_t_set_freq(%struct.mn88443x_priv* %43)
  %45 = load i32, i32* @TSSET1_TSASEL_ISDBT, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @TSSET3_INTASEL_T, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %38, %32
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.regmap*, %struct.regmap** %6, align 8
  %50 = load i32, i32* @TSSET1, align 4
  %51 = load i32, i32* @TSSET1_TSASEL_MASK, align 4
  %52 = load i32, i32* @TSSET1_TSBSEL_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @TSSET1_TSBSEL_NONE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @regmap_update_bits(%struct.regmap* %49, i32 %50, i32 %53, i32 %56)
  %58 = load %struct.regmap*, %struct.regmap** %6, align 8
  %59 = load i32, i32* @TSSET2, align 4
  %60 = call i32 @regmap_write(%struct.regmap* %58, i32 %59, i32 0)
  %61 = load %struct.regmap*, %struct.regmap** %6, align 8
  %62 = load i32, i32* @TSSET3, align 4
  %63 = load i32, i32* @TSSET3_INTASEL_MASK, align 4
  %64 = load i32, i32* @TSSET3_INTBSEL_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @TSSET3_INTBSEL_NONE, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @regmap_update_bits(%struct.regmap* %61, i32 %62, i32 %65, i32 %68)
  %70 = load %struct.regmap*, %struct.regmap** %6, align 8
  %71 = load i32, i32* @DOSET1_T, align 4
  %72 = call i32 @regmap_write(%struct.regmap* %70, i32 %71, i32 149)
  %73 = load %struct.regmap*, %struct.regmap** %5, align 8
  %74 = load i32, i32* @DOSET1_S, align 4
  %75 = call i32 @regmap_write(%struct.regmap* %73, i32 %74, i32 128)
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SYS_ISDBS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %48
  %82 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %84 = call i32 @mn88443x_s_tune(%struct.mn88443x_priv* %82, %struct.dtv_frontend_properties* %83)
  br label %96

85:                                               ; preds = %48
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SYS_ISDBT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %93 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %94 = call i32 @mn88443x_t_tune(%struct.mn88443x_priv* %92, %struct.dtv_frontend_properties* %93)
  br label %95

95:                                               ; preds = %91, %85
  br label %96

96:                                               ; preds = %95, %81
  %97 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %98 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %100, align 8
  %102 = icmp ne i32 (%struct.dvb_frontend.1*)* %101, null
  br i1 %102, label %103, label %140

103:                                              ; preds = %96
  %104 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %105 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %106, align 8
  %108 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %111 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %112, align 8
  %114 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %115 = bitcast %struct.dvb_frontend* %114 to %struct.dvb_frontend.0*
  %116 = call i32 %113(%struct.dvb_frontend.0* %115, i32 1)
  br label %117

117:                                              ; preds = %109, %103
  %118 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %119 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %121, align 8
  %123 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %124 = bitcast %struct.dvb_frontend* %123 to %struct.dvb_frontend.1*
  %125 = call i32 %122(%struct.dvb_frontend.1* %124)
  %126 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %127 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %128, align 8
  %130 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %117
  %132 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %133 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %134, align 8
  %136 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %137 = bitcast %struct.dvb_frontend* %136 to %struct.dvb_frontend.0*
  %138 = call i32 %135(%struct.dvb_frontend.0* %137, i32 0)
  br label %139

139:                                              ; preds = %131, %117
  br label %140

140:                                              ; preds = %139, %96
  ret i32 0
}

declare dso_local i32 @mn88443x_s_wake(%struct.mn88443x_priv*) #1

declare dso_local i32 @mn88443x_t_sleep(%struct.mn88443x_priv*) #1

declare dso_local i32 @mn88443x_s_sleep(%struct.mn88443x_priv*) #1

declare dso_local i32 @mn88443x_t_wake(%struct.mn88443x_priv*) #1

declare dso_local i32 @mn88443x_t_set_freq(%struct.mn88443x_priv*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @mn88443x_s_tune(%struct.mn88443x_priv*, %struct.dtv_frontend_properties*) #1

declare dso_local i32 @mn88443x_t_tune(%struct.mn88443x_priv*, %struct.dtv_frontend_properties*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
