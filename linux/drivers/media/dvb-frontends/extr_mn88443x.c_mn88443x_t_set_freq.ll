; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_t_set_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_t_set_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn88443x_priv = type { i32, i32, i64, %struct.regmap*, %struct.TYPE_2__* }
%struct.regmap = type { i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@CLK_LOW = common dso_local global i32 0, align 4
@CLK_DIRECT = common dso_local global i32 0, align 4
@CLKSET1_T = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Invalid clock, CLK:%d, ADCKT:%lld, IF:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DIRECT_IF_57MHZ = common dso_local global i64 0, align 8
@DIRECT_IF_44MHZ = common dso_local global i64 0, align 8
@S_T_FREQ = common dso_local global i32 0, align 4
@NCOFREQU_T = common dso_local global i32 0, align 4
@NCOFREQM_T = common dso_local global i32 0, align 4
@NCOFREQL_T = common dso_local global i32 0, align 4
@FADU_T = common dso_local global i32 0, align 4
@FADM_T = common dso_local global i32 0, align 4
@FADL_T = common dso_local global i32 0, align 4
@ADCSET1_T_REFSEL_MASK = common dso_local global i32 0, align 4
@ADCSET1_T_REFSEL_1_5V = common dso_local global i32 0, align 4
@ADCSET1_T = common dso_local global i32 0, align 4
@AGCSET2_T_IFPOLINV_INC = common dso_local global i32 0, align 4
@AGCSET2_T_RFPOLINV_INC = common dso_local global i32 0, align 4
@AGCSET2_T = common dso_local global i32 0, align 4
@AGCV3_T = common dso_local global i32 0, align 4
@MDSET_T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mn88443x_priv*)* @mn88443x_t_set_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn88443x_t_set_freq(%struct.mn88443x_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mn88443x_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mn88443x_priv* %0, %struct.mn88443x_priv** %3, align 8
  %11 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %15, i32 0, i32 3
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  store %struct.regmap* %17, %struct.regmap** %5, align 8
  %18 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CLK_LOW, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %1
  %24 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %25 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CLK_DIRECT, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.regmap*, %struct.regmap** %5, align 8
  %33 = load i32, i32* @CLKSET1_T, align 4
  %34 = call i32 @regmap_write(%struct.regmap* %32, i32 %33, i32 7)
  store i32 0, i32* %6, align 4
  br label %44

35:                                               ; preds = %23, %1
  %36 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %37 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.regmap*, %struct.regmap** %5, align 8
  %39 = load i32, i32* @CLKSET1_T, align 4
  %40 = call i32 @regmap_write(%struct.regmap* %38, i32 %39, i32 0)
  %41 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %42 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %35, %29
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %47 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @mn88443x_t_is_valid_clk(i32 %45, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %44
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %54 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %58 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i64 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %148

63:                                               ; preds = %44
  %64 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %65 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DIRECT_IF_57MHZ, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %71 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @DIRECT_IF_44MHZ, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %69, %63
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %80 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %7, align 4
  br label %90

84:                                               ; preds = %69
  %85 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %3, align 8
  %86 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %84, %75
  %91 = load i32, i32* %7, align 4
  %92 = shl i32 %91, 24
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @div_s64(i32 %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = shl i32 %95, 22
  %97 = load i32, i32* @S_T_FREQ, align 4
  %98 = call i32 @div_s64(i32 %96, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load %struct.regmap*, %struct.regmap** %5, align 8
  %100 = load i32, i32* @NCOFREQU_T, align 4
  %101 = load i32, i32* %7, align 4
  %102 = ashr i32 %101, 16
  %103 = call i32 @regmap_write(%struct.regmap* %99, i32 %100, i32 %102)
  %104 = load %struct.regmap*, %struct.regmap** %5, align 8
  %105 = load i32, i32* @NCOFREQM_T, align 4
  %106 = load i32, i32* %7, align 4
  %107 = ashr i32 %106, 8
  %108 = call i32 @regmap_write(%struct.regmap* %104, i32 %105, i32 %107)
  %109 = load %struct.regmap*, %struct.regmap** %5, align 8
  %110 = load i32, i32* @NCOFREQL_T, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @regmap_write(%struct.regmap* %109, i32 %110, i32 %111)
  %113 = load %struct.regmap*, %struct.regmap** %5, align 8
  %114 = load i32, i32* @FADU_T, align 4
  %115 = load i32, i32* %8, align 4
  %116 = ashr i32 %115, 16
  %117 = call i32 @regmap_write(%struct.regmap* %113, i32 %114, i32 %116)
  %118 = load %struct.regmap*, %struct.regmap** %5, align 8
  %119 = load i32, i32* @FADM_T, align 4
  %120 = load i32, i32* %8, align 4
  %121 = ashr i32 %120, 8
  %122 = call i32 @regmap_write(%struct.regmap* %118, i32 %119, i32 %121)
  %123 = load %struct.regmap*, %struct.regmap** %5, align 8
  %124 = load i32, i32* @FADL_T, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @regmap_write(%struct.regmap* %123, i32 %124, i32 %125)
  %127 = load i32, i32* @ADCSET1_T_REFSEL_MASK, align 4
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* @ADCSET1_T_REFSEL_1_5V, align 4
  store i32 %128, i32* %10, align 4
  %129 = load %struct.regmap*, %struct.regmap** %5, align 8
  %130 = load i32, i32* @ADCSET1_T, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @regmap_update_bits(%struct.regmap* %129, i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* @AGCSET2_T_IFPOLINV_INC, align 4
  %135 = load i32, i32* @AGCSET2_T_RFPOLINV_INC, align 4
  %136 = or i32 %134, %135
  store i32 %136, i32* %10, align 4
  %137 = load %struct.regmap*, %struct.regmap** %5, align 8
  %138 = load i32, i32* @AGCSET2_T, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @regmap_update_bits(%struct.regmap* %137, i32 %138, i32 %139, i32 %140)
  %142 = load %struct.regmap*, %struct.regmap** %5, align 8
  %143 = load i32, i32* @AGCV3_T, align 4
  %144 = call i32 @regmap_write(%struct.regmap* %142, i32 %143, i32 0)
  %145 = load %struct.regmap*, %struct.regmap** %5, align 8
  %146 = load i32, i32* @MDSET_T, align 4
  %147 = call i32 @regmap_write(%struct.regmap* %145, i32 %146, i32 250)
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %90, %51
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @mn88443x_t_is_valid_clk(i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i64) #1

declare dso_local i32 @div_s64(i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
