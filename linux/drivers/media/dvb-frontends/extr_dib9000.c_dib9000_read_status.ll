; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib9000_state* }
%struct.dib9000_state = type { i32, i32** }

@.str = private unnamed_addr constant [24 x i8] c"could not get the lock\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@MAX_NUMBER_OF_FRONTENDS = common dso_local global i64 0, align 8
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @dib9000_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dib9000_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.dib9000_state*, %struct.dib9000_state** %11, align 8
  store %struct.dib9000_state* %12, %struct.dib9000_state** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %14 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %13, i32 0, i32 0
  %15 = call i64 @mutex_lock_interruptible(i32* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINTR, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %121

21:                                               ; preds = %2
  store i64 1, i64* %7, align 8
  br label %22

22:                                               ; preds = %46, %21
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %28 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br label %34

34:                                               ; preds = %26, %22
  %35 = phi i1 [ false, %22 ], [ %33, %26 ]
  br i1 %35, label %36, label %49

36:                                               ; preds = %34
  %37 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %38 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @dib9000_read_lock(i32* %42)
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %36
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %22

49:                                               ; preds = %34
  %50 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %51 = call i32 @dib9000_read_word(%struct.dib9000_state* %50, i32 535)
  store i32 %51, i32* %8, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 32768
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 32768
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %49
  %61 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 12288
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 12288
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69, %65
  %74 = load i32, i32* @FE_HAS_CARRIER, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 256
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, 256
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82, %78
  %87 = load i32, i32* @FE_HAS_VITERBI, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %86, %82
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, 56
  %94 = icmp eq i32 %93, 56
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, 56
  %98 = icmp eq i32 %97, 56
  br i1 %98, label %99, label %104

99:                                               ; preds = %95, %91
  %100 = load i32, i32* @FE_HAS_SYNC, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %100
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %99, %95
  %105 = load i32, i32* %8, align 4
  %106 = and i32 %105, 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108, %104
  %113 = load i32, i32* @FE_HAS_LOCK, align 4
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %112, %108
  %118 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %119 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %17
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib9000_read_lock(i32*) #1

declare dso_local i32 @dib9000_read_word(%struct.dib9000_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
