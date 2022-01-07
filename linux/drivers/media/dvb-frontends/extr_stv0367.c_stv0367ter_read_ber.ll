; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ter_read_ber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367ter_read_ber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0367_state* }
%struct.stv0367_state = type { %struct.stv0367ter_state* }
%struct.stv0367ter_state = type { i32 }

@F367TER_SFERRC_OLDVALUE = common dso_local global i32 0, align 4
@F367TER_SFEC_ERR_CNT = common dso_local global i32 0, align 4
@F367TER_SFEC_ERR_CNT_HI = common dso_local global i32 0, align 4
@F367TER_SFEC_ERR_CNT_LO = common dso_local global i32 0, align 4
@F367TER_SFEC_ERR_SOURCE = common dso_local global i32 0, align 4
@F367TER_SFEC_NUM_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stv0367ter_read_ber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0367ter_read_ber(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stv0367_state*, align 8
  %7 = alloca %struct.stv0367ter_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = load %struct.stv0367_state*, %struct.stv0367_state** %14, align 8
  store %struct.stv0367_state* %15, %struct.stv0367_state** %6, align 8
  %16 = load %struct.stv0367_state*, %struct.stv0367_state** %6, align 8
  %17 = getelementptr inbounds %struct.stv0367_state, %struct.stv0367_state* %16, i32 0, i32 0
  %18 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %17, align 8
  store %struct.stv0367ter_state* %18, %struct.stv0367ter_state** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.stv0367_state*, %struct.stv0367_state** %6, align 8
  %20 = load i32, i32* @F367TER_SFERRC_OLDVALUE, align 4
  %21 = call i32 @stv0367_readbits(%struct.stv0367_state* %19, i32 %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load %struct.stv0367_state*, %struct.stv0367_state** %6, align 8
  %25 = load i32, i32* @F367TER_SFEC_ERR_CNT, align 4
  %26 = call i32 @stv0367_readbits(%struct.stv0367_state* %24, i32 %25)
  %27 = mul nsw i32 %26, 65536
  %28 = load %struct.stv0367_state*, %struct.stv0367_state** %6, align 8
  %29 = load i32, i32* @F367TER_SFEC_ERR_CNT_HI, align 4
  %30 = call i32 @stv0367_readbits(%struct.stv0367_state* %28, i32 %29)
  %31 = mul nsw i32 %30, 256
  %32 = add nsw i32 %27, %31
  %33 = load %struct.stv0367_state*, %struct.stv0367_state** %6, align 8
  %34 = load i32, i32* @F367TER_SFEC_ERR_CNT_LO, align 4
  %35 = call i32 @stv0367_readbits(%struct.stv0367_state* %33, i32 %34)
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %8, align 4
  br label %41

37:                                               ; preds = %2
  %38 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %7, align 8
  %39 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %168

41:                                               ; preds = %23
  %42 = load %struct.stv0367_state*, %struct.stv0367_state** %6, align 8
  %43 = load i32, i32* @F367TER_SFEC_ERR_SOURCE, align 4
  %44 = call i32 @stv0367_readbits(%struct.stv0367_state* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.stv0367_state*, %struct.stv0367_state** %6, align 8
  %46 = load i32, i32* @F367TER_SFEC_NUM_EVENT, align 4
  %47 = call i32 @stv0367_readbits(%struct.stv0367_state* %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %162

51:                                               ; preds = %41
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %54, label %161

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp sle i32 %55, 4
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %58, 1000000000
  %60 = sdiv i32 %59, 131072
  store i32 %60, i32* %10, align 4
  br label %117

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = icmp sle i32 %62, 42
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 %65, 100000000
  %67 = sdiv i32 %66, 131072
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = mul nsw i32 %68, 10
  store i32 %69, i32* %10, align 4
  br label %116

70:                                               ; preds = %61
  %71 = load i32, i32* %8, align 4
  %72 = icmp sle i32 %71, 429
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 %74, 10000000
  %76 = sdiv i32 %75, 131072
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = mul nsw i32 %77, 100
  store i32 %78, i32* %10, align 4
  br label %115

79:                                               ; preds = %70
  %80 = load i32, i32* %8, align 4
  %81 = icmp sle i32 %80, 4294
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = mul nsw i32 %83, 1000000
  %85 = sdiv i32 %84, 131072
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = mul nsw i32 %86, 1000
  store i32 %87, i32* %10, align 4
  br label %114

88:                                               ; preds = %79
  %89 = load i32, i32* %8, align 4
  %90 = icmp sle i32 %89, 42949
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 %92, 100000
  %94 = sdiv i32 %93, 131072
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = mul nsw i32 %95, 10000
  store i32 %96, i32* %10, align 4
  br label %113

97:                                               ; preds = %88
  %98 = load i32, i32* %8, align 4
  %99 = icmp sle i32 %98, 429496
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = mul nsw i32 %101, 10000
  %103 = sdiv i32 %102, 131072
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = mul nsw i32 %104, 100000
  store i32 %105, i32* %10, align 4
  br label %112

106:                                              ; preds = %97
  %107 = load i32, i32* %8, align 4
  %108 = mul nsw i32 %107, 1000
  %109 = sdiv i32 %108, 131072
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = mul nsw i32 %110, 100000
  store i32 %111, i32* %10, align 4
  br label %112

112:                                              ; preds = %106, %100
  br label %113

113:                                              ; preds = %112, %91
  br label %114

114:                                              ; preds = %113, %82
  br label %115

115:                                              ; preds = %114, %73
  br label %116

116:                                              ; preds = %115, %64
  br label %117

117:                                              ; preds = %116, %57
  %118 = load i32, i32* %12, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %9, align 4
  br label %151

122:                                              ; preds = %117
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 3
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* %10, align 4
  %127 = sdiv i32 %126, 4
  store i32 %127, i32* %9, align 4
  br label %150

128:                                              ; preds = %122
  %129 = load i32, i32* %12, align 4
  %130 = icmp eq i32 %129, 4
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %10, align 4
  %133 = sdiv i32 %132, 16
  store i32 %133, i32* %9, align 4
  br label %149

134:                                              ; preds = %128
  %135 = load i32, i32* %12, align 4
  %136 = icmp eq i32 %135, 5
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %10, align 4
  %139 = sdiv i32 %138, 64
  store i32 %139, i32* %9, align 4
  br label %148

140:                                              ; preds = %134
  %141 = load i32, i32* %12, align 4
  %142 = icmp eq i32 %141, 6
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* %10, align 4
  %145 = sdiv i32 %144, 256
  store i32 %145, i32* %9, align 4
  br label %147

146:                                              ; preds = %140
  store i32 0, i32* %9, align 4
  br label %147

147:                                              ; preds = %146, %143
  br label %148

148:                                              ; preds = %147, %137
  br label %149

149:                                              ; preds = %148, %131
  br label %150

150:                                              ; preds = %149, %125
  br label %151

151:                                              ; preds = %150, %120
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %152, 4294967
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i32, i32* %8, align 4
  %156 = icmp sgt i32 %155, 429496
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32, i32* %9, align 4
  %159 = mul nsw i32 %158, 10
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %157, %154, %151
  br label %161

161:                                              ; preds = %160, %51
  br label %162

162:                                              ; preds = %161, %50
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.stv0367ter_state*, %struct.stv0367ter_state** %7, align 8
  %165 = getelementptr inbounds %struct.stv0367ter_state, %struct.stv0367ter_state* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i32*, i32** %5, align 8
  store i32 %166, i32* %167, align 4
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %162, %37
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @stv0367_readbits(%struct.stv0367_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
