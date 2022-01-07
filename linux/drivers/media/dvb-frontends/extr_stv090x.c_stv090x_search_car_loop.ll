; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_search_car_loop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_search_car_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMDISTATE = common dso_local global i32 0, align 4
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@PDELCTRL1 = common dso_local global i32 0, align 4
@ALGOSWRST_FIELD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i32, i32, i32, i32)* @stv090x_search_car_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_search_car_loop(%struct.stv090x_state* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.stv090x_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  %19 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 1000
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %16, align 4
  %23 = sdiv i32 %22, 10
  %24 = load i32, i32* %16, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = mul nsw i32 65536, %26
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %16, align 4
  %29 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  %30 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 1000
  %35 = load i32, i32* %16, align 4
  %36 = sdiv i32 %35, %34
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp sgt i32 %37, 16384
  br i1 %38, label %39, label %40

39:                                               ; preds = %5
  store i32 16384, i32* %16, align 4
  br label %40

40:                                               ; preds = %39, %5
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %15, align 4
  br label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %16, align 4
  %46 = sub nsw i32 0, %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %44, %43
  br label %50

50:                                               ; preds = %144, %49
  %51 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  %52 = load i32, i32* @DMDISTATE, align 4
  %53 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %51, i32 %52, i32 28)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %161

56:                                               ; preds = %50
  %57 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  %58 = load i32, i32* @CFRINIT1, align 4
  %59 = load i32, i32* %15, align 4
  %60 = sdiv i32 %59, 256
  %61 = and i32 %60, 255
  %62 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %57, i32 %58, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %161

65:                                               ; preds = %56
  %66 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  %67 = load i32, i32* @CFRINIT0, align 4
  %68 = load i32, i32* %15, align 4
  %69 = and i32 %68, 255
  %70 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %66, i32 %67, i32 %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %161

73:                                               ; preds = %65
  %74 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  %75 = load i32, i32* @DMDISTATE, align 4
  %76 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %74, i32 %75, i32 24)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %161

79:                                               ; preds = %73
  %80 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  %81 = load i32, i32* @PDELCTRL1, align 4
  %82 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %80, i32 %81)
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* @ALGOSWRST_FIELD, align 4
  %85 = call i32 @STV090x_SETFIELD_Px(i32 %83, i32 %84, i32 1)
  %86 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  %87 = load i32, i32* @PDELCTRL1, align 4
  %88 = load i32, i32* %17, align 4
  %89 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %86, i32 %87, i32 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %161

92:                                               ; preds = %79
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load i32, i32* %15, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* %15, align 4
  %100 = sub nsw i32 0, %99
  %101 = load i32, i32* %8, align 4
  %102 = mul nsw i32 2, %101
  %103 = sub nsw i32 %100, %102
  store i32 %103, i32* %15, align 4
  br label %107

104:                                              ; preds = %95
  %105 = load i32, i32* %15, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %104, %98
  br label %113

108:                                              ; preds = %92
  %109 = load i32, i32* %8, align 4
  %110 = mul nsw i32 2, %109
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %15, align 4
  br label %113

113:                                              ; preds = %108, %107
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  %116 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @stv090x_get_dmdlock(%struct.stv090x_state* %116, i32 %117)
  store i32 %118, i32* %13, align 4
  %119 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  %120 = call i32 @stv090x_chk_signal(%struct.stv090x_state* %119)
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %144, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %144, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %8, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32, i32* %16, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %127
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %16, align 4
  %138 = sub nsw i32 0, %137
  %139 = icmp sgt i32 %136, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp slt i32 %141, %142
  br label %144

144:                                              ; preds = %140, %133, %127, %124, %121
  %145 = phi i1 [ false, %133 ], [ false, %127 ], [ false, %124 ], [ false, %121 ], [ %143, %140 ]
  br i1 %145, label %50, label %146

146:                                              ; preds = %144
  %147 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  %148 = load i32, i32* @PDELCTRL1, align 4
  %149 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %147, i32 %148)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* @ALGOSWRST_FIELD, align 4
  %152 = call i32 @STV090x_SETFIELD_Px(i32 %150, i32 %151, i32 0)
  %153 = load %struct.stv090x_state*, %struct.stv090x_state** %7, align 8
  %154 = load i32, i32* @PDELCTRL1, align 4
  %155 = load i32, i32* %17, align 4
  %156 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %153, i32 %154, i32 %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %146
  br label %161

159:                                              ; preds = %146
  %160 = load i32, i32* %13, align 4
  store i32 %160, i32* %6, align 4
  br label %164

161:                                              ; preds = %158, %91, %78, %72, %64, %55
  %162 = load i32, i32* @FE_ERROR, align 4
  %163 = call i32 @dprintk(i32 %162, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %164

164:                                              ; preds = %161, %159
  %165 = load i32, i32* %6, align 4
  ret i32 %165
}

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i32 @stv090x_get_dmdlock(%struct.stv090x_state*, i32) #1

declare dso_local i32 @stv090x_chk_signal(%struct.stv090x_state*) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
