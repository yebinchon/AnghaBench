; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_init_diseqc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_init_diseqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@RSTV0910_P1_DISRXCFG = common dso_local global i32 0, align 4
@RSTV0910_P1_DISTXCFG = common dso_local global i32 0, align 4
@RSTV0910_P1_DISTXF22 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*)* @init_diseqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_diseqc(%struct.stv* %0) #0 {
  %2 = alloca %struct.stv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %2, align 8
  %5 = load %struct.stv*, %struct.stv** %2, align 8
  %6 = getelementptr inbounds %struct.stv, %struct.stv* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 64, i32 0
  store i32 %10, i32* %3, align 4
  %11 = load %struct.stv*, %struct.stv** %2, align 8
  %12 = getelementptr inbounds %struct.stv, %struct.stv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 352000
  %17 = sdiv i32 %16, 704000
  store i32 %17, i32* %4, align 4
  %18 = load %struct.stv*, %struct.stv** %2, align 8
  %19 = load i32, i32* @RSTV0910_P1_DISRXCFG, align 4
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @write_reg(%struct.stv* %18, i32 %21, i32 0)
  %23 = load %struct.stv*, %struct.stv** %2, align 8
  %24 = load i32, i32* @RSTV0910_P1_DISTXCFG, align 4
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %24, %25
  %27 = call i32 @write_reg(%struct.stv* %23, i32 %26, i32 186)
  %28 = load %struct.stv*, %struct.stv** %2, align 8
  %29 = load i32, i32* @RSTV0910_P1_DISTXCFG, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i32 @write_reg(%struct.stv* %28, i32 %31, i32 58)
  %33 = load %struct.stv*, %struct.stv** %2, align 8
  %34 = load i32, i32* @RSTV0910_P1_DISTXF22, align 4
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @write_reg(%struct.stv* %33, i32 %36, i32 %37)
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.stv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
