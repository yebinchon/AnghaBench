; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_set_isi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_set_isi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i64 }

@NO_STREAM_ID_FILTER = common dso_local global i32 0, align 4
@FORCE_CONTINUOUS = common dso_local global i32 0, align 4
@TSOUT_NOSYNC = common dso_local global i32 0, align 4
@FILTER_EN = common dso_local global i32 0, align 4
@RSTV0910_P2_ISIENTRY = common dso_local global i64 0, align 8
@RSTV0910_P2_ISIBITENA = common dso_local global i64 0, align 8
@ALGOSWRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv*, i32)* @set_isi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_isi(%struct.stv* %0, i32 %1) #0 {
  %3 = alloca %struct.stv*, align 8
  %4 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NO_STREAM_ID_FILTER, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %41

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, -2147483648
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, i32* @FORCE_CONTINUOUS, align 4
  %14 = call i32 @SET_FIELD(i32 %13, i32 1)
  %15 = load i32, i32* @TSOUT_NOSYNC, align 4
  %16 = call i32 @SET_FIELD(i32 %15, i32 1)
  br label %36

17:                                               ; preds = %9
  %18 = load i32, i32* @FILTER_EN, align 4
  %19 = call i32 @SET_FIELD(i32 %18, i32 1)
  %20 = load %struct.stv*, %struct.stv** %3, align 8
  %21 = load i64, i64* @RSTV0910_P2_ISIENTRY, align 8
  %22 = load %struct.stv*, %struct.stv** %3, align 8
  %23 = getelementptr inbounds %struct.stv, %struct.stv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 255
  %28 = call i32 @write_reg(%struct.stv* %20, i64 %25, i32 %27)
  %29 = load %struct.stv*, %struct.stv** %3, align 8
  %30 = load i64, i64* @RSTV0910_P2_ISIBITENA, align 8
  %31 = load %struct.stv*, %struct.stv** %3, align 8
  %32 = getelementptr inbounds %struct.stv, %struct.stv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = call i32 @write_reg(%struct.stv* %29, i64 %34, i32 255)
  br label %36

36:                                               ; preds = %17, %12
  %37 = load i32, i32* @ALGOSWRST, align 4
  %38 = call i32 @SET_FIELD(i32 %37, i32 1)
  %39 = load i32, i32* @ALGOSWRST, align 4
  %40 = call i32 @SET_FIELD(i32 %39, i32 0)
  br label %41

41:                                               ; preds = %36, %8
  ret void
}

declare dso_local i32 @SET_FIELD(i32, i32) #1

declare dso_local i32 @write_reg(%struct.stv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
