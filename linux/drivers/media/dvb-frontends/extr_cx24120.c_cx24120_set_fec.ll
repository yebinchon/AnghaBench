; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_set_fec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_set_fec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.cx24120_state = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"(0x%02x,0x%02x)\0A\00", align 1
@modfec_table = common dso_local global %struct.TYPE_7__* null, align 8
@SYS_DVBS2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24120_state*, i32, i32)* @cx24120_set_fec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_set_fec(%struct.cx24120_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx24120_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx24120_state* %0, %struct.cx24120_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %10 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %18 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %71, %3
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @modfec_table, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @modfec_table, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %33 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %71

38:                                               ; preds = %25
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @modfec_table, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %71

48:                                               ; preds = %38
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @modfec_table, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %71

58:                                               ; preds = %48
  %59 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %60 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  store i32 0, i32* %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** @modfec_table, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %69 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %96

71:                                               ; preds = %57, %47, %37
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %20

74:                                               ; preds = %20
  %75 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %76 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SYS_DVBS2, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %83 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i32 0, i32* %84, align 8
  %85 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %86 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  store i32 0, i32* %87, align 4
  br label %95

88:                                               ; preds = %74
  %89 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %90 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  store i32 46, i32* %91, align 4
  %92 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %93 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  store i32 172, i32* %94, align 8
  br label %95

95:                                               ; preds = %88, %81
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %58
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
