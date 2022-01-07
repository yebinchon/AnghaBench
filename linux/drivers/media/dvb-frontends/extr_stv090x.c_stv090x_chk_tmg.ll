; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_chk_tmg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_chk_tmg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32 }

@CARFREQ = common dso_local global i32 0, align 4
@TMGTHRISE = common dso_local global i32 0, align 4
@TMGTHFALL = common dso_local global i32 0, align 4
@DMDCFGMD = common dso_local global i32 0, align 4
@CFR_AUTOSCAN_FIELD = common dso_local global i32 0, align 4
@RTC = common dso_local global i32 0, align 4
@RTCS2 = common dso_local global i32 0, align 4
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@AGC2REF = common dso_local global i32 0, align 4
@DMDISTATE = common dso_local global i32 0, align 4
@DSTATUS = common dso_local global i32 0, align 4
@TMGLOCK_QUALITY_FIELD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*)* @stv090x_chk_tmg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_chk_tmg(%struct.stv090x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %12 = load i32, i32* @CARFREQ, align 4
  %13 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %15 = load i32, i32* @TMGTHRISE, align 4
  %16 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %18 = load i32, i32* @TMGTHFALL, align 4
  %19 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %21 = load i32, i32* @TMGTHRISE, align 4
  %22 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %20, i32 %21, i32 32)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %152

25:                                               ; preds = %1
  %26 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %27 = load i32, i32* @TMGTHFALL, align 4
  %28 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %26, i32 %27, i32 0)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %152

31:                                               ; preds = %25
  %32 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %33 = load i32, i32* @DMDCFGMD, align 4
  %34 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @CFR_AUTOSCAN_FIELD, align 4
  %37 = call i32 @STV090x_SETFIELD_Px(i32 %35, i32 %36, i32 0)
  %38 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %39 = load i32, i32* @DMDCFGMD, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %38, i32 %39, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %152

44:                                               ; preds = %31
  %45 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %46 = load i32, i32* @RTC, align 4
  %47 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %45, i32 %46, i32 128)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %152

50:                                               ; preds = %44
  %51 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %52 = load i32, i32* @RTCS2, align 4
  %53 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %51, i32 %52, i32 64)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %152

56:                                               ; preds = %50
  %57 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %58 = load i32, i32* @CARFREQ, align 4
  %59 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %57, i32 %58, i32 0)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %152

62:                                               ; preds = %56
  %63 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %64 = load i32, i32* @CFRINIT1, align 4
  %65 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %63, i32 %64, i32 0)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %152

68:                                               ; preds = %62
  %69 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %70 = load i32, i32* @CFRINIT0, align 4
  %71 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %69, i32 %70, i32 0)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %152

74:                                               ; preds = %68
  %75 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %76 = load i32, i32* @AGC2REF, align 4
  %77 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %75, i32 %76, i32 101)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %152

80:                                               ; preds = %74
  %81 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %82 = load i32, i32* @DMDISTATE, align 4
  %83 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %81, i32 %82, i32 24)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %152

86:                                               ; preds = %80
  %87 = call i32 @msleep(i32 10)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %104, %86
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 10
  br i1 %90, label %91, label %107

91:                                               ; preds = %88
  %92 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %93 = load i32, i32* @DSTATUS, align 4
  %94 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %92, i32 %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @TMGLOCK_QUALITY_FIELD, align 4
  %97 = call i32 @STV090x_GETFIELD_Px(i32 %95, i32 %96)
  %98 = icmp sge i32 %97, 2
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %99, %91
  %103 = call i32 @msleep(i32 1)
  br label %104

104:                                              ; preds = %102
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %88

107:                                              ; preds = %88
  %108 = load i32, i32* %5, align 4
  %109 = icmp sge i32 %108, 3
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 1, i32* %10, align 4
  br label %111

111:                                              ; preds = %110, %107
  %112 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %113 = load i32, i32* @AGC2REF, align 4
  %114 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %112, i32 %113, i32 56)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %152

117:                                              ; preds = %111
  %118 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %119 = load i32, i32* @RTC, align 4
  %120 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %118, i32 %119, i32 136)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %152

123:                                              ; preds = %117
  %124 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %125 = load i32, i32* @RTCS2, align 4
  %126 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %124, i32 %125, i32 104)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %152

129:                                              ; preds = %123
  %130 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %131 = load i32, i32* @CARFREQ, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %130, i32 %131, i32 %132)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %152

136:                                              ; preds = %129
  %137 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %138 = load i32, i32* @TMGTHRISE, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %137, i32 %138, i32 %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %152

143:                                              ; preds = %136
  %144 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %145 = load i32, i32* @TMGTHFALL, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state* %144, i32 %145, i32 %146)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %152

150:                                              ; preds = %143
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %2, align 4
  br label %155

152:                                              ; preds = %149, %142, %135, %128, %122, %116, %85, %79, %73, %67, %61, %55, %49, %43, %30, %24
  %153 = load i32, i32* @FE_ERROR, align 4
  %154 = call i32 @dprintk(i32 %153, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %155

155:                                              ; preds = %152, %150
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i64 @STV090x_WRITE_DEMOD(%struct.stv090x_state*, i32, i32) #1

declare dso_local i32 @STV090x_SETFIELD_Px(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @STV090x_GETFIELD_Px(i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
