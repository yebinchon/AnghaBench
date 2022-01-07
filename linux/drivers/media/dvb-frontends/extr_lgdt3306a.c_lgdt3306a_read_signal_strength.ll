; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.lgdt3306a_state* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i64*)* }
%struct.dvb_frontend.0 = type opaque
%struct.lgdt3306a_state = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"strength=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i64*)* @lgdt3306a_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_read_signal_strength(%struct.dvb_frontend* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.lgdt3306a_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %13, align 8
  store %struct.lgdt3306a_state* %14, %struct.lgdt3306a_state** %6, align 8
  %15 = load i64*, i64** %5, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %17 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %34 [
    i32 128, label %19
    i32 130, label %20
    i32 131, label %20
    i32 129, label %20
  ]

19:                                               ; preds = %2
  store i32 1600, i32* %10, align 4
  br label %37

20:                                               ; preds = %2, %2, %2
  %21 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %22 = call i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state* %21, i32 166, i32* %7)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @lg_chkerr(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %89

27:                                               ; preds = %20
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 2800, i32* %10, align 4
  br label %33

32:                                               ; preds = %27
  store i32 2200, i32* %10, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %91

37:                                               ; preds = %33, %19
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %39 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.dvb_frontend.0*, i64*)*, i32 (%struct.dvb_frontend.0*, i64*)** %40, align 8
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %43 = bitcast %struct.dvb_frontend* %42 to %struct.dvb_frontend.0*
  %44 = call i32 %41(%struct.dvb_frontend.0* %43, i64* %8)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @lg_chkerr(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %89

49:                                               ; preds = %37
  %50 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %51 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, 100
  %55 = icmp sle i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %82

57:                                               ; preds = %49
  %58 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %59 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 42597, i32* %11, align 4
  br label %81

64:                                               ; preds = %57
  %65 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %6, align 8
  %66 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sdiv i32 %70, 50
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 78
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp sgt i32 %74, 100
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  store i32 100, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %64
  %78 = load i32, i32* %11, align 4
  %79 = mul nsw i32 65535, %78
  %80 = sdiv i32 %79, 100
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %77, %63
  br label %82

82:                                               ; preds = %81, %56
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64*, i64** %5, align 8
  store i64 %84, i64* %85, align 8
  %86 = load i64*, i64** %5, align 8
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @dbg_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %82, %48, %26
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %34
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @lgdt3306a_read_reg(%struct.lgdt3306a_state*, i32, i32*) #1

declare dso_local i64 @lg_chkerr(i32) #1

declare dso_local i32 @dbg_info(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
