; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_get_signal_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_get_signal_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i64, i32, i32, i32, i32, i32, i64, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RCVMODE_DVBS2 = common dso_local global i64 0, align 8
@RSTV0910_P2_DMDMODCOD = common dso_local global i64 0, align 8
@RCVMODE_DVBS = common dso_local global i64 0, align 8
@RSTV0910_P2_VITCURPUN = common dso_local global i64 0, align 8
@FEC_NONE = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i32 0, align 4
@FEC_2_3 = common dso_local global i32 0, align 4
@FEC_3_4 = common dso_local global i32 0, align 4
@FEC_5_6 = common dso_local global i32 0, align 4
@FEC_7_8 = common dso_local global i32 0, align 4
@FE_SAT_35 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*)* @get_signal_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_signal_parameters(%struct.stv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv*, align 8
  %4 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %3, align 8
  %5 = load %struct.stv*, %struct.stv** %3, align 8
  %6 = getelementptr inbounds %struct.stv, %struct.stv* %5, i32 0, i32 9
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %91

12:                                               ; preds = %1
  %13 = load %struct.stv*, %struct.stv** %3, align 8
  %14 = getelementptr inbounds %struct.stv, %struct.stv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RCVMODE_DVBS2, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %12
  %19 = load %struct.stv*, %struct.stv** %3, align 8
  %20 = load i64, i64* @RSTV0910_P2_DMDMODCOD, align 8
  %21 = load %struct.stv*, %struct.stv** %3, align 8
  %22 = getelementptr inbounds %struct.stv, %struct.stv* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = call i32 @read_reg(%struct.stv* %19, i64 %24, i32* %4)
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 124
  %28 = ashr i32 %27, 2
  %29 = load %struct.stv*, %struct.stv** %3, align 8
  %30 = getelementptr inbounds %struct.stv, %struct.stv* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load %struct.stv*, %struct.stv** %3, align 8
  %36 = getelementptr inbounds %struct.stv, %struct.stv* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 2
  %39 = ashr i32 %38, 1
  %40 = load %struct.stv*, %struct.stv** %3, align 8
  %41 = getelementptr inbounds %struct.stv, %struct.stv* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  br label %90

42:                                               ; preds = %12
  %43 = load %struct.stv*, %struct.stv** %3, align 8
  %44 = getelementptr inbounds %struct.stv, %struct.stv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RCVMODE_DVBS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %89

48:                                               ; preds = %42
  %49 = load %struct.stv*, %struct.stv** %3, align 8
  %50 = load i64, i64* @RSTV0910_P2_VITCURPUN, align 8
  %51 = load %struct.stv*, %struct.stv** %3, align 8
  %52 = getelementptr inbounds %struct.stv, %struct.stv* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = call i32 @read_reg(%struct.stv* %49, i64 %54, i32* %4)
  %56 = load i32, i32* @FEC_NONE, align 4
  %57 = load %struct.stv*, %struct.stv** %3, align 8
  %58 = getelementptr inbounds %struct.stv, %struct.stv* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 31
  switch i32 %60, label %81 [
    i32 13, label %61
    i32 18, label %65
    i32 21, label %69
    i32 24, label %73
    i32 26, label %77
  ]

61:                                               ; preds = %48
  %62 = load i32, i32* @FEC_1_2, align 4
  %63 = load %struct.stv*, %struct.stv** %3, align 8
  %64 = getelementptr inbounds %struct.stv, %struct.stv* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 8
  br label %81

65:                                               ; preds = %48
  %66 = load i32, i32* @FEC_2_3, align 4
  %67 = load %struct.stv*, %struct.stv** %3, align 8
  %68 = getelementptr inbounds %struct.stv, %struct.stv* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  br label %81

69:                                               ; preds = %48
  %70 = load i32, i32* @FEC_3_4, align 4
  %71 = load %struct.stv*, %struct.stv** %3, align 8
  %72 = getelementptr inbounds %struct.stv, %struct.stv* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  br label %81

73:                                               ; preds = %48
  %74 = load i32, i32* @FEC_5_6, align 4
  %75 = load %struct.stv*, %struct.stv** %3, align 8
  %76 = getelementptr inbounds %struct.stv, %struct.stv* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 8
  br label %81

77:                                               ; preds = %48
  %78 = load i32, i32* @FEC_7_8, align 4
  %79 = load %struct.stv*, %struct.stv** %3, align 8
  %80 = getelementptr inbounds %struct.stv, %struct.stv* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %48, %77, %73, %69, %65, %61
  %82 = load %struct.stv*, %struct.stv** %3, align 8
  %83 = getelementptr inbounds %struct.stv, %struct.stv* %82, i32 0, i32 6
  store i64 0, i64* %83, align 8
  %84 = load %struct.stv*, %struct.stv** %3, align 8
  %85 = getelementptr inbounds %struct.stv, %struct.stv* %84, i32 0, i32 4
  store i32 1, i32* %85, align 4
  %86 = load i32, i32* @FE_SAT_35, align 4
  %87 = load %struct.stv*, %struct.stv** %3, align 8
  %88 = getelementptr inbounds %struct.stv, %struct.stv* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %81, %42
  br label %90

90:                                               ; preds = %89, %18
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %9
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @read_reg(%struct.stv*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
