; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv* }
%struct.stv = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@RSTV0910_P2_AGCIQIN1 = common dso_local global i64 0, align 8
@RSTV0910_P2_POWERI = common dso_local global i64 0, align 8
@padc_lookup = common dso_local global i32 0, align 4
@FE_SCALE_DECIBEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_signal_strength(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.stv*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.stv*, %struct.stv** %11, align 8
  store %struct.stv* %12, %struct.stv** %3, align 8
  %13 = load %struct.stv*, %struct.stv** %3, align 8
  %14 = getelementptr inbounds %struct.stv, %struct.stv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.dtv_frontend_properties* %15, %struct.dtv_frontend_properties** %4, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.stv*, %struct.stv** %3, align 8
  %17 = load i64, i64* @RSTV0910_P2_AGCIQIN1, align 8
  %18 = load %struct.stv*, %struct.stv** %3, align 8
  %19 = getelementptr inbounds %struct.stv, %struct.stv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %23 = call i32 @read_regs(%struct.stv* %16, i64 %21, i32* %22, i32 2)
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %26, %28
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %56, %1
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 5
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load %struct.stv*, %struct.stv** %3, align 8
  %35 = load i64, i64* @RSTV0910_P2_POWERI, align 8
  %36 = load %struct.stv*, %struct.stv** %3, align 8
  %37 = getelementptr inbounds %struct.stv, %struct.stv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %41 = call i32 @read_regs(%struct.stv* %34, i64 %39, i32* %40, i32 2)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %43, %45
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %48, %50
  %52 = add nsw i32 %46, %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = call i32 @usleep_range(i32 3000, i32 4000)
  br label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %30

59:                                               ; preds = %30
  %60 = load i32, i32* %8, align 4
  %61 = sdiv i32 %60, 5
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @padc_lookup, align 4
  %63 = load i32, i32* @padc_lookup, align 4
  %64 = call i32 @ARRAY_SIZE(i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @table_lookup(i32 %62, i32 %64, i32 %65)
  %67 = add nsw i32 %66, 352
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @FE_SCALE_DECIBEL, align 4
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %68, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %79 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %77, i32* %83, align 4
  ret void
}

declare dso_local i32 @read_regs(%struct.stv*, i64, i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @table_lookup(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
