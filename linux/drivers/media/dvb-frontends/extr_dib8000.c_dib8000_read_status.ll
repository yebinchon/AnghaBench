; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { %struct.dvb_frontend** }

@MAX_NUMBER_OF_FRONTENDS = common dso_local global i64 0, align 8
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @dib8000_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dib8000_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.dib8000_state*, %struct.dib8000_state** %10, align 8
  store %struct.dib8000_state* %11, %struct.dib8000_state** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = call i32 @dib8000_read_lock(%struct.dvb_frontend* %12)
  store i32 %13, i32* %7, align 4
  store i64 1, i64* %8, align 8
  br label %14

14:                                               ; preds = %38, %2
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %20 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %19, i32 0, i32 0
  %21 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %21, i64 %22
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %23, align 8
  %25 = icmp ne %struct.dvb_frontend* %24, null
  br label %26

26:                                               ; preds = %18, %14
  %27 = phi i1 [ false, %14 ], [ %25, %18 ]
  br i1 %27, label %28, label %41

28:                                               ; preds = %26
  %29 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %30 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %29, i32 0, i32 0
  %31 = load %struct.dvb_frontend**, %struct.dvb_frontend*** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend*, %struct.dvb_frontend** %31, i64 %32
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %33, align 8
  %35 = call i32 @dib8000_read_lock(%struct.dvb_frontend* %34)
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %28
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %14

41:                                               ; preds = %26
  %42 = load i32*, i32** %4, align 8
  store i32 0, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = ashr i32 %43, 13
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 13
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47, %41
  %53 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 8
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62, %57
  %68 = load i32, i32* @FE_HAS_CARRIER, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %7, align 4
  %74 = ashr i32 %73, 1
  %75 = and i32 %74, 15
  %76 = icmp eq i32 %75, 15
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = ashr i32 %78, 1
  %80 = and i32 %79, 15
  %81 = icmp eq i32 %80, 15
  br i1 %81, label %82, label %87

82:                                               ; preds = %77, %72
  %83 = load i32, i32* @FE_HAS_SYNC, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i32, i32* %7, align 4
  %89 = ashr i32 %88, 12
  %90 = and i32 %89, 1
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  %94 = ashr i32 %93, 12
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %92, %87
  %98 = load i32, i32* %7, align 4
  %99 = ashr i32 %98, 5
  %100 = and i32 %99, 7
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* @FE_HAS_LOCK, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %102, %97, %92
  %108 = load i32, i32* %7, align 4
  %109 = ashr i32 %108, 12
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %6, align 4
  %114 = ashr i32 %113, 12
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %151

117:                                              ; preds = %112, %107
  %118 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %119 = call i32 @dib8000_read_word(%struct.dib8000_state* %118, i32 554)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = and i32 %120, 1
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load i32, i32* @FE_HAS_VITERBI, align 4
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %123, %117
  %129 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %130 = call i32 @dib8000_read_word(%struct.dib8000_state* %129, i32 555)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = and i32 %131, 1
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load i32, i32* @FE_HAS_VITERBI, align 4
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %135
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %134, %128
  %140 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %141 = call i32 @dib8000_read_word(%struct.dib8000_state* %140, i32 556)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = and i32 %142, 1
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load i32, i32* @FE_HAS_VITERBI, align 4
  %147 = load i32*, i32** %4, align 8
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %146
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %145, %139
  br label %151

151:                                              ; preds = %150, %112
  %152 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %153 = load i32*, i32** %4, align 8
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @dib8000_get_stats(%struct.dvb_frontend* %152, i32 %154)
  ret i32 0
}

declare dso_local i32 @dib8000_read_lock(%struct.dvb_frontend*) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_get_stats(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
