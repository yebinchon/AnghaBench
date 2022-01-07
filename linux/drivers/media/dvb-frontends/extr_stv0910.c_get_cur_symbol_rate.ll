; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_get_cur_symbol_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_get_cur_symbol_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@RSTV0910_P2_SFR3 = common dso_local global i64 0, align 8
@RSTV0910_P2_SFR2 = common dso_local global i64 0, align 8
@RSTV0910_P2_SFR1 = common dso_local global i64 0, align 8
@RSTV0910_P2_SFR0 = common dso_local global i64 0, align 8
@RSTV0910_P2_TMGREG2 = common dso_local global i64 0, align 8
@RSTV0910_P2_TMGREG1 = common dso_local global i64 0, align 8
@RSTV0910_P2_TMGREG0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*, i32*)* @get_cur_symbol_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cur_symbol_rate(%struct.stv* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.stv*, %struct.stv** %4, align 8
  %18 = getelementptr inbounds %struct.stv, %struct.stv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %120

23:                                               ; preds = %2
  %24 = load %struct.stv*, %struct.stv** %4, align 8
  %25 = load i64, i64* @RSTV0910_P2_SFR3, align 8
  %26 = load %struct.stv*, %struct.stv** %4, align 8
  %27 = getelementptr inbounds %struct.stv, %struct.stv* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = call i32 @read_reg(%struct.stv* %24, i64 %29, i64* %10)
  %31 = load %struct.stv*, %struct.stv** %4, align 8
  %32 = load i64, i64* @RSTV0910_P2_SFR2, align 8
  %33 = load %struct.stv*, %struct.stv** %4, align 8
  %34 = getelementptr inbounds %struct.stv, %struct.stv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = call i32 @read_reg(%struct.stv* %31, i64 %36, i64* %9)
  %38 = load %struct.stv*, %struct.stv** %4, align 8
  %39 = load i64, i64* @RSTV0910_P2_SFR1, align 8
  %40 = load %struct.stv*, %struct.stv** %4, align 8
  %41 = getelementptr inbounds %struct.stv, %struct.stv* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = call i32 @read_reg(%struct.stv* %38, i64 %43, i64* %8)
  %45 = load %struct.stv*, %struct.stv** %4, align 8
  %46 = load i64, i64* @RSTV0910_P2_SFR0, align 8
  %47 = load %struct.stv*, %struct.stv** %4, align 8
  %48 = getelementptr inbounds %struct.stv, %struct.stv* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = call i32 @read_reg(%struct.stv* %45, i64 %50, i64* %7)
  %52 = load %struct.stv*, %struct.stv** %4, align 8
  %53 = load i64, i64* @RSTV0910_P2_TMGREG2, align 8
  %54 = load %struct.stv*, %struct.stv** %4, align 8
  %55 = getelementptr inbounds %struct.stv, %struct.stv* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = call i32 @read_reg(%struct.stv* %52, i64 %57, i64* %13)
  %59 = load %struct.stv*, %struct.stv** %4, align 8
  %60 = load i64, i64* @RSTV0910_P2_TMGREG1, align 8
  %61 = load %struct.stv*, %struct.stv** %4, align 8
  %62 = getelementptr inbounds %struct.stv, %struct.stv* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = call i32 @read_reg(%struct.stv* %59, i64 %64, i64* %12)
  %66 = load %struct.stv*, %struct.stv** %4, align 8
  %67 = load i64, i64* @RSTV0910_P2_TMGREG0, align 8
  %68 = load %struct.stv*, %struct.stv** %4, align 8
  %69 = getelementptr inbounds %struct.stv, %struct.stv* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = call i32 @read_reg(%struct.stv* %66, i64 %71, i64* %11)
  %73 = load i64, i64* %10, align 8
  %74 = trunc i64 %73 to i32
  %75 = shl i32 %74, 24
  %76 = load i64, i64* %9, align 8
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %77, 16
  %79 = or i32 %75, %78
  %80 = load i64, i64* %8, align 8
  %81 = trunc i64 %80 to i32
  %82 = shl i32 %81, 8
  %83 = or i32 %79, %82
  %84 = load i64, i64* %7, align 8
  %85 = trunc i64 %84 to i32
  %86 = or i32 %83, %85
  store i32 %86, i32* %14, align 4
  %87 = load i64, i64* %13, align 8
  %88 = trunc i64 %87 to i32
  %89 = shl i32 %88, 16
  %90 = load i64, i64* %12, align 8
  %91 = trunc i64 %90 to i32
  %92 = shl i32 %91, 8
  %93 = or i32 %89, %92
  %94 = load i64, i64* %11, align 8
  %95 = trunc i64 %94 to i32
  %96 = or i32 %93, %95
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = and i32 %97, 8388608
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %23
  %101 = load i32, i32* %15, align 4
  %102 = or i32 %101, -16777216
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %100, %23
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.stv*, %struct.stv** %4, align 8
  %106 = getelementptr inbounds %struct.stv, %struct.stv* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %104, %109
  %111 = ashr i32 %110, 32
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %15, align 4
  %114 = mul nsw i32 %112, %113
  %115 = ashr i32 %114, 29
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32*, i32** %5, align 8
  store i32 %118, i32* %119, align 4
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %103, %21
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @read_reg(%struct.stv*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
