; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6110.c_stv6110_get_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6110.c_stv6110_get_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv6110_priv* }
%struct.stv6110_priv = type { i32*, i32 }

@RSTV6110_TUNING2 = common dso_local global i64 0, align 8
@RSTV6110_TUNING1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stv6110_get_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv6110_get_frequency(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stv6110_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.stv6110_priv*, %struct.stv6110_priv** %12, align 8
  store %struct.stv6110_priv* %13, %struct.stv6110_priv** %5, align 8
  %14 = bitcast [8 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %17 = call i32 @stv6110_read_regs(%struct.dvb_frontend* %15, i32* %16, i32 0, i32 8)
  %18 = load %struct.stv6110_priv*, %struct.stv6110_priv** %5, align 8
  %19 = getelementptr inbounds %struct.stv6110_priv, %struct.stv6110_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @RSTV6110_TUNING2, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 15
  %25 = shl i32 %24, 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.stv6110_priv*, %struct.stv6110_priv** %5, align 8
  %27 = getelementptr inbounds %struct.stv6110_priv, %struct.stv6110_priv* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @RSTV6110_TUNING1, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.stv6110_priv*, %struct.stv6110_priv** %5, align 8
  %35 = getelementptr inbounds %struct.stv6110_priv, %struct.stv6110_priv* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @RSTV6110_TUNING2, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 6
  %41 = and i32 %40, 3
  store i32 %41, i32* %6, align 4
  %42 = load %struct.stv6110_priv*, %struct.stv6110_priv** %5, align 8
  %43 = getelementptr inbounds %struct.stv6110_priv, %struct.stv6110_priv* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @RSTV6110_TUNING2, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 4
  %49 = and i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.stv6110_priv*, %struct.stv6110_priv** %5, align 8
  %52 = getelementptr inbounds %struct.stv6110_priv, %struct.stv6110_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sdiv i32 %53, 1000
  %55 = mul nsw i32 %50, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  %59 = shl i32 1, %58
  %60 = load i32, i32* %9, align 4
  %61 = sdiv i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = sdiv i32 %62, 4
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** %4, align 8
  store i32 %64, i32* %65, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @stv6110_read_regs(%struct.dvb_frontend*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
