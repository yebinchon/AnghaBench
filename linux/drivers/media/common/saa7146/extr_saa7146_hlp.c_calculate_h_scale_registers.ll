; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_calculate_h_scale_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_hlp.c_calculate_h_scale_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.saa7146_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MASK_29 = common dso_local global i32 0, align 4
@hps_h_coeff_tab = common dso_local global %struct.TYPE_2__* null, align 8
@h_attenuation = common dso_local global i64* null, align 8
@MASK_W0 = common dso_local global i32 0, align 4
@MASK_B2 = common dso_local global i32 0, align 4
@MASK_W1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, i32, i32, i32, i32*, i32*, i32*, i32*)* @calculate_h_scale_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_h_scale_registers(%struct.saa7146_dev* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.saa7146_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 0, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %8
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %225

34:                                               ; preds = %8
  %35 = load i32, i32* @MASK_29, align 4
  %36 = xor i32 %35, -1
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %19, align 4
  br label %48

47:                                               ; preds = %34
  store i32 1, i32* %19, align 4
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 0, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load i32, i32* @MASK_29, align 4
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %61, %51
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %19, align 4
  %59 = sdiv i32 %57, %58
  %60 = icmp sge i32 %59, 384
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %19, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %19, align 4
  br label %56

64:                                               ; preds = %56
  br label %75

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %71, %65
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %19, align 4
  %69 = sdiv i32 %67, %68
  %70 = icmp sge i32 %69, 768
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %19, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %19, align 4
  br label %66

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %64
  %76 = load i32, i32* %19, align 4
  %77 = icmp sgt i32 %76, 64
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 64, i32* %19, align 4
  br label %79

79:                                               ; preds = %78, %75
  store i32 0, i32* %20, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hps_h_coeff_tab, align 8
  %81 = load i32, i32* %19, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp slt i32 %82, 63
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %19, align 4
  %86 = sub nsw i32 %85, 1
  br label %88

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %84
  %89 = phi i32 [ %86, %84 ], [ 63, %87 ]
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* %21, align 4
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %88
  %99 = load i32, i32* %19, align 4
  %100 = icmp eq i32 1, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 1024, i32* %25, align 4
  br label %111

102:                                              ; preds = %98, %88
  %103 = load i32, i32* %11, align 4
  %104 = mul nsw i32 1024, %103
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %19, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sdiv i32 %104, %107
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %25, align 4
  br label %111

111:                                              ; preds = %102, %101
  store i32 0, i32* %24, align 4
  %112 = load i32, i32* %25, align 4
  %113 = icmp eq i32 1024, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 1, i32* %23, align 4
  br label %116

115:                                              ; preds = %111
  store i32 0, i32* %23, align 4
  br label %116

116:                                              ; preds = %115, %114
  %117 = load i32, i32* %19, align 4
  %118 = icmp eq i32 1, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 1, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %158

120:                                              ; preds = %116
  store i32 0, i32* %20, align 4
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hps_h_coeff_tab, align 8
  %122 = load i32, i32* %19, align 4
  %123 = sub nsw i32 %122, 1
  %124 = icmp slt i32 %123, 63
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* %19, align 4
  %127 = sub nsw i32 %126, 1
  br label %129

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %125
  %130 = phi i32 [ %127, %125 ], [ 63, %128 ]
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %135

135:                                              ; preds = %153, %129
  %136 = load i64*, i64** @h_attenuation, align 8
  %137 = load i32, i32* %28, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %135
  %143 = load i64*, i64** @h_attenuation, align 8
  %144 = load i32, i32* %28, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %27, align 4
  %149 = sext i32 %148 to i64
  %150 = icmp sge i64 %147, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %156

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %28, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %28, align 4
  br label %135

156:                                              ; preds = %151, %135
  %157 = load i32, i32* %28, align 4
  store i32 %157, i32* %18, align 4
  br label %158

158:                                              ; preds = %156, %119
  %159 = load i32, i32* %25, align 4
  %160 = icmp eq i32 %159, 1024
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 0, i32* %26, align 4
  br label %178

162:                                              ; preds = %158
  %163 = load i32, i32* %25, align 4
  %164 = icmp slt i32 %163, 1536
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 1, i32* %26, align 4
  br label %177

166:                                              ; preds = %162
  %167 = load i32, i32* %25, align 4
  %168 = icmp slt i32 %167, 1664
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 17, i32* %26, align 4
  br label %176

170:                                              ; preds = %166
  %171 = load i32, i32* %25, align 4
  %172 = icmp slt i32 %171, 1792
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 34, i32* %26, align 4
  br label %175

174:                                              ; preds = %170
  store i32 51, i32* %26, align 4
  br label %175

175:                                              ; preds = %174, %173
  br label %176

176:                                              ; preds = %175, %169
  br label %177

177:                                              ; preds = %176, %165
  br label %178

178:                                              ; preds = %177, %161
  %179 = load i32, i32* @MASK_W0, align 4
  %180 = load i32, i32* @MASK_B2, align 4
  %181 = or i32 %179, %180
  %182 = load i32*, i32** %15, align 8
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, %181
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* %26, align 4
  %186 = shl i32 %185, 24
  %187 = load i32*, i32** %15, align 8
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %186
  store i32 %189, i32* %187, align 4
  %190 = load i32, i32* @MASK_W1, align 4
  %191 = or i32 %190, 61440
  %192 = xor i32 %191, -1
  %193 = load i32*, i32** %17, align 8
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, %192
  store i32 %195, i32* %193, align 4
  %196 = load i32, i32* %23, align 4
  %197 = shl i32 %196, 31
  %198 = load i32, i32* %24, align 4
  %199 = shl i32 %198, 24
  %200 = or i32 %197, %199
  %201 = load i32, i32* %25, align 4
  %202 = shl i32 %201, 12
  %203 = or i32 %200, %202
  %204 = load i32*, i32** %17, align 8
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %203
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* %18, align 4
  %208 = shl i32 %207, 27
  %209 = load i32, i32* %19, align 4
  %210 = sub nsw i32 %209, 1
  %211 = shl i32 %210, 18
  %212 = or i32 %208, %211
  %213 = load i32, i32* %20, align 4
  %214 = shl i32 %213, 17
  %215 = or i32 %212, %214
  %216 = load i32, i32* %21, align 4
  %217 = shl i32 %216, 8
  %218 = or i32 %215, %217
  %219 = load i32, i32* %22, align 4
  %220 = shl i32 %219, 0
  %221 = or i32 %218, %220
  %222 = load i32*, i32** %16, align 8
  %223 = load i32, i32* %222, align 4
  %224 = or i32 %223, %221
  store i32 %224, i32* %222, align 4
  store i32 0, i32* %9, align 4
  br label %225

225:                                              ; preds = %178, %31
  %226 = load i32, i32* %9, align 4
  ret i32 %226
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
