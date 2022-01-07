; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_get_signal_to_noise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_get_signal_to_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slookup = type { i32 }
%struct.stv = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RCVMODE_DVBS2 = common dso_local global i64 0, align 8
@RSTV0910_P2_NNOSPLHT1 = common dso_local global i64 0, align 8
@RSTV0910_P2_NNOSPLHT0 = common dso_local global i64 0, align 8
@s2_sn_lookup = common dso_local global %struct.slookup* null, align 8
@RSTV0910_P2_NNOSDATAT1 = common dso_local global i64 0, align 8
@RSTV0910_P2_NNOSDATAT0 = common dso_local global i64 0, align 8
@s1_sn_lookup = common dso_local global %struct.slookup* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*, i32*)* @get_signal_to_noise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_signal_to_noise(%struct.stv* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.slookup*, align 8
  store %struct.stv* %0, %struct.stv** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.stv*, %struct.stv** %4, align 8
  %13 = getelementptr inbounds %struct.stv, %struct.stv* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.stv*, %struct.stv** %4, align 8
  %21 = getelementptr inbounds %struct.stv, %struct.stv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RCVMODE_DVBS2, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = load %struct.stv*, %struct.stv** %4, align 8
  %27 = load i64, i64* @RSTV0910_P2_NNOSPLHT1, align 8
  %28 = load %struct.stv*, %struct.stv** %4, align 8
  %29 = getelementptr inbounds %struct.stv, %struct.stv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i32 @read_reg(%struct.stv* %26, i64 %31, i64* %7)
  %33 = load %struct.stv*, %struct.stv** %4, align 8
  %34 = load i64, i64* @RSTV0910_P2_NNOSPLHT0, align 8
  %35 = load %struct.stv*, %struct.stv** %4, align 8
  %36 = getelementptr inbounds %struct.stv, %struct.stv* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = call i32 @read_reg(%struct.stv* %33, i64 %38, i64* %6)
  %40 = load %struct.slookup*, %struct.slookup** @s2_sn_lookup, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.slookup* %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.slookup*, %struct.slookup** @s2_sn_lookup, align 8
  store %struct.slookup* %42, %struct.slookup** %10, align 8
  br label %61

43:                                               ; preds = %19
  %44 = load %struct.stv*, %struct.stv** %4, align 8
  %45 = load i64, i64* @RSTV0910_P2_NNOSDATAT1, align 8
  %46 = load %struct.stv*, %struct.stv** %4, align 8
  %47 = getelementptr inbounds %struct.stv, %struct.stv* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = call i32 @read_reg(%struct.stv* %44, i64 %49, i64* %7)
  %51 = load %struct.stv*, %struct.stv** %4, align 8
  %52 = load i64, i64* @RSTV0910_P2_NNOSDATAT0, align 8
  %53 = load %struct.stv*, %struct.stv** %4, align 8
  %54 = getelementptr inbounds %struct.stv, %struct.stv* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = call i32 @read_reg(%struct.stv* %51, i64 %56, i64* %6)
  %58 = load %struct.slookup*, %struct.slookup** @s1_sn_lookup, align 8
  %59 = call i32 @ARRAY_SIZE(%struct.slookup* %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.slookup*, %struct.slookup** @s1_sn_lookup, align 8
  store %struct.slookup* %60, %struct.slookup** %10, align 8
  br label %61

61:                                               ; preds = %43, %25
  %62 = load i64, i64* %7, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 %63, 8
  %65 = load i64, i64* %6, align 8
  %66 = trunc i64 %65 to i32
  %67 = or i32 %64, %66
  store i32 %67, i32* %8, align 4
  %68 = load %struct.slookup*, %struct.slookup** %10, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @table_lookup(%struct.slookup* %68, i32 %69, i32 %70)
  %72 = load i32*, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %61, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @read_reg(%struct.stv*, i64, i64*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.slookup*) #1

declare dso_local i32 @table_lookup(%struct.slookup*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
