; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_set_channel_union.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_set_channel_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib9000_state* }
%struct.dib9000_state = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dibDVBTChannel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FE_MM_W_CHANNEL_UNION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib9000_fw_set_channel_union to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_fw_set_channel_union(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib9000_state*, align 8
  %4 = alloca %struct.dibDVBTChannel, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.dib9000_state*, %struct.dib9000_state** %6, align 8
  store %struct.dib9000_state* %7, %struct.dib9000_state** %3, align 8
  %8 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %9 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %10, i64 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %20 [
    i32 136, label %16
    i32 137, label %18
    i32 138, label %21
  ]

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 0
  store i32 1, i32* %17, align 4
  br label %23

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %23

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %1, %20
  %22 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 0
  store i32 -1, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %18, %16
  %24 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %25 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %38 [
    i32 131, label %32
    i32 130, label %34
    i32 129, label %36
    i32 128, label %39
  ]

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 1
  store i32 0, i32* %33, align 4
  br label %41

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 1
  store i32 2, i32* %35, align 4
  br label %41

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %41

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %23, %38
  %40 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %36, %34, %32
  %42 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %43 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %58 [
    i32 147, label %50
    i32 148, label %52
    i32 145, label %54
    i32 146, label %56
    i32 144, label %59
  ]

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 2
  store i32 0, i32* %51, align 4
  br label %61

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 2
  store i32 1, i32* %53, align 4
  br label %61

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 2
  store i32 2, i32* %55, align 4
  br label %61

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 2
  store i32 3, i32* %57, align 4
  br label %61

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %41, %58
  %60 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 2
  store i32 -1, i32* %60, align 4
  br label %61

61:                                               ; preds = %59, %56, %54, %52, %50
  %62 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %63 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %64, i64 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %76 [
    i32 134, label %70
    i32 135, label %72
    i32 132, label %74
    i32 133, label %77
  ]

70:                                               ; preds = %61
  %71 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 3
  store i32 2, i32* %71, align 4
  br label %79

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 3
  store i32 1, i32* %73, align 4
  br label %79

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 3
  store i32 0, i32* %75, align 4
  br label %79

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %61, %76
  %78 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 3
  store i32 -1, i32* %78, align 4
  br label %79

79:                                               ; preds = %77, %74, %72, %70
  %80 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %81 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %82, i64 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  switch i32 %87, label %92 [
    i32 139, label %88
    i32 143, label %90
    i32 142, label %90
    i32 141, label %90
    i32 140, label %93
  ]

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 4
  store i32 0, i32* %89, align 4
  br label %95

90:                                               ; preds = %79, %79, %79
  %91 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 4
  store i32 1, i32* %91, align 4
  br label %95

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %79, %92
  %94 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 4
  store i32 -1, i32* %94, align 4
  br label %95

95:                                               ; preds = %93, %90, %88
  %96 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 5
  store i32 1, i32* %96, align 4
  %97 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %98 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %99, i64 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %115 [
    i32 154, label %105
    i32 153, label %107
    i32 152, label %109
    i32 151, label %111
    i32 150, label %113
    i32 149, label %116
  ]

105:                                              ; preds = %95
  %106 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 6
  store i32 1, i32* %106, align 4
  br label %118

107:                                              ; preds = %95
  %108 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 6
  store i32 2, i32* %108, align 4
  br label %118

109:                                              ; preds = %95
  %110 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 6
  store i32 3, i32* %110, align 4
  br label %118

111:                                              ; preds = %95
  %112 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 6
  store i32 5, i32* %112, align 4
  br label %118

113:                                              ; preds = %95
  %114 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 6
  store i32 7, i32* %114, align 4
  br label %118

115:                                              ; preds = %95
  br label %116

116:                                              ; preds = %95, %115
  %117 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 6
  store i32 -1, i32* %117, align 4
  br label %118

118:                                              ; preds = %116, %113, %111, %109, %107, %105
  %119 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %120 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %121, i64 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %137 [
    i32 154, label %127
    i32 153, label %129
    i32 152, label %131
    i32 151, label %133
    i32 150, label %135
    i32 149, label %138
  ]

127:                                              ; preds = %118
  %128 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 7
  store i32 1, i32* %128, align 4
  br label %140

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 7
  store i32 2, i32* %130, align 4
  br label %140

131:                                              ; preds = %118
  %132 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 7
  store i32 3, i32* %132, align 4
  br label %140

133:                                              ; preds = %118
  %134 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 7
  store i32 5, i32* %134, align 4
  br label %140

135:                                              ; preds = %118
  %136 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 7
  store i32 7, i32* %136, align 4
  br label %140

137:                                              ; preds = %118
  br label %138

138:                                              ; preds = %118, %137
  %139 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 7
  store i32 -1, i32* %139, align 4
  br label %140

140:                                              ; preds = %138, %135, %133, %131, %129, %127
  %141 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 8
  store i32 1, i32* %141, align 4
  %142 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %4, i32 0, i32 9
  store i32 1, i32* %142, align 4
  %143 = load %struct.dib9000_state*, %struct.dib9000_state** %3, align 8
  %144 = load i32, i32* @FE_MM_W_CHANNEL_UNION, align 4
  %145 = bitcast %struct.dibDVBTChannel* %4 to i32*
  %146 = call i32 @dib9000_risc_mem_write(%struct.dib9000_state* %143, i32 %144, i32* %145)
  ret i32 0
}

declare dso_local i32 @dib9000_risc_mem_write(%struct.dib9000_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
