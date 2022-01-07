; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib9000_state* }
%struct.dib9000_state = type { i32, %struct.TYPE_7__, %struct.TYPE_8__**, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*, i32*)* }

@.str = private unnamed_addr constant [24 x i8] c"could not get the lock\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@MAX_NUMBER_OF_FRONTENDS = common dso_local global i64 0, align 8
@FE_SYNC_CHANNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FE_MM_R_FE_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @dib9000_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dib9000_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.dib9000_state*, %struct.dib9000_state** %12, align 8
  store %struct.dib9000_state* %13, %struct.dib9000_state** %6, align 8
  %14 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %15 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %19 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %18, i32 0, i32 0
  %20 = call i64 @mutex_lock_interruptible(i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINTR, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %132

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  store i32 0, i32* %27, align 4
  store i64 1, i64* %7, align 8
  br label %28

28:                                               ; preds = %72, %26
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %34 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %35, i64 %36
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br label %40

40:                                               ; preds = %32, %28
  %41 = phi i1 [ false, %28 ], [ %39, %32 ]
  br i1 %41, label %42, label %75

42:                                               ; preds = %40
  %43 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %44 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %43, i32 0, i32 2
  %45 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %45, i64 %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_8__*, i32*)*, i32 (%struct.TYPE_8__*, i32*)** %50, align 8
  %52 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %53 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %54, i64 %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = call i32 %51(%struct.TYPE_8__* %57, i32* %9)
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 65535, %61
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %42
  %65 = load i32*, i32** %5, align 8
  store i32 65535, i32* %65, align 4
  br label %71

66:                                               ; preds = %42
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %67
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %66, %64
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %28

75:                                               ; preds = %40
  %76 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %77 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = call i64 @mutex_lock_interruptible(i32* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EINTR, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %10, align 4
  br label %127

86:                                               ; preds = %75
  %87 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %88 = load i32, i32* @FE_SYNC_CHANNEL, align 4
  %89 = call i64 @dib9000_fw_memmbx_sync(%struct.dib9000_state* %87, i32 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %93 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  br label %127

99:                                               ; preds = %86
  %100 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %101 = load i32, i32* @FE_MM_R_FE_MONITOR, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = bitcast i32* %102 to i64*
  %104 = call i32 @dib9000_risc_mem_read(%struct.dib9000_state* %100, i32 %101, i64* %103, i32 32)
  %105 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %106 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 65535, %112
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 65535, %116
  %118 = icmp sgt i32 %114, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %99
  %120 = load i32*, i32** %5, align 8
  store i32 65535, i32* %120, align 4
  br label %126

121:                                              ; preds = %99
  %122 = load i32, i32* %9, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %122
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %121, %119
  br label %127

127:                                              ; preds = %126, %91, %82
  %128 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  %129 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %128, i32 0, i32 0
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %127, %22
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @dib9000_fw_memmbx_sync(%struct.dib9000_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dib9000_risc_mem_read(%struct.dib9000_state*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
