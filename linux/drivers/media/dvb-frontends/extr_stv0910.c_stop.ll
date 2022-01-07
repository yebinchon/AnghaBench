; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i32, i32, i64, i64 }

@RSTV0910_P2_TSCFGH = common dso_local global i64 0, align 8
@RSTV0910_P2_PDELCTRL1 = common dso_local global i64 0, align 8
@RSTV0910_P2_AGC2O = common dso_local global i64 0, align 8
@RSTV0910_P2_DMDISTATE = common dso_local global i64 0, align 8
@RCVMODE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*)* @stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop(%struct.stv* %0) #0 {
  %2 = alloca %struct.stv*, align 8
  %3 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %2, align 8
  %4 = load %struct.stv*, %struct.stv** %2, align 8
  %5 = getelementptr inbounds %struct.stv, %struct.stv* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %53

8:                                                ; preds = %1
  %9 = load %struct.stv*, %struct.stv** %2, align 8
  %10 = load i64, i64* @RSTV0910_P2_TSCFGH, align 8
  %11 = load %struct.stv*, %struct.stv** %2, align 8
  %12 = getelementptr inbounds %struct.stv, %struct.stv* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load %struct.stv*, %struct.stv** %2, align 8
  %16 = getelementptr inbounds %struct.stv, %struct.stv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, 1
  %19 = call i32 @write_reg(%struct.stv* %9, i64 %14, i32 %18)
  %20 = load %struct.stv*, %struct.stv** %2, align 8
  %21 = load i64, i64* @RSTV0910_P2_PDELCTRL1, align 8
  %22 = load %struct.stv*, %struct.stv** %2, align 8
  %23 = getelementptr inbounds %struct.stv, %struct.stv* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = call i32 @read_reg(%struct.stv* %20, i64 %25, i32* %3)
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, -2
  store i32 %28, i32* %3, align 4
  %29 = load %struct.stv*, %struct.stv** %2, align 8
  %30 = load i64, i64* @RSTV0910_P2_PDELCTRL1, align 8
  %31 = load %struct.stv*, %struct.stv** %2, align 8
  %32 = getelementptr inbounds %struct.stv, %struct.stv* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @write_reg(%struct.stv* %29, i64 %34, i32 %35)
  %37 = load %struct.stv*, %struct.stv** %2, align 8
  %38 = load i64, i64* @RSTV0910_P2_AGC2O, align 8
  %39 = load %struct.stv*, %struct.stv** %2, align 8
  %40 = getelementptr inbounds %struct.stv, %struct.stv* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i32 @write_reg(%struct.stv* %37, i64 %42, i32 91)
  %44 = load %struct.stv*, %struct.stv** %2, align 8
  %45 = load i64, i64* @RSTV0910_P2_DMDISTATE, align 8
  %46 = load %struct.stv*, %struct.stv** %2, align 8
  %47 = getelementptr inbounds %struct.stv, %struct.stv* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = call i32 @write_reg(%struct.stv* %44, i64 %49, i32 92)
  %51 = load %struct.stv*, %struct.stv** %2, align 8
  %52 = getelementptr inbounds %struct.stv, %struct.stv* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %8, %1
  %54 = load i32, i32* @RCVMODE_NONE, align 4
  %55 = load %struct.stv*, %struct.stv** %2, align 8
  %56 = getelementptr inbounds %struct.stv, %struct.stv* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  ret i32 0
}

declare dso_local i32 @write_reg(%struct.stv*, i64, i32) #1

declare dso_local i32 @read_reg(%struct.stv*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
