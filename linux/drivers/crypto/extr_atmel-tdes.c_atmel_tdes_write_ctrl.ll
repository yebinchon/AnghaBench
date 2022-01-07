; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_write_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_write_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_tdes_dev = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@TDES_MR_SMOD_PDC = common dso_local global i32 0, align 4
@TDES_PTCR = common dso_local global i32 0, align 4
@TDES_PTCR_TXTDIS = common dso_local global i32 0, align 4
@TDES_PTCR_RXTDIS = common dso_local global i32 0, align 4
@DES_KEY_SIZE = common dso_local global i32 0, align 4
@TDES_MR_KEYMOD_3KEY = common dso_local global i32 0, align 4
@TDES_MR_TDESMOD_TDES = common dso_local global i32 0, align 4
@TDES_MR_KEYMOD_2KEY = common dso_local global i32 0, align 4
@TDES_MR_TDESMOD_DES = common dso_local global i32 0, align 4
@TDES_FLAGS_CBC = common dso_local global i32 0, align 4
@TDES_MR_OPMOD_CBC = common dso_local global i32 0, align 4
@TDES_FLAGS_CFB = common dso_local global i32 0, align 4
@TDES_MR_OPMOD_CFB = common dso_local global i32 0, align 4
@TDES_FLAGS_CFB8 = common dso_local global i32 0, align 4
@TDES_MR_CFBS_8b = common dso_local global i32 0, align 4
@TDES_FLAGS_CFB16 = common dso_local global i32 0, align 4
@TDES_MR_CFBS_16b = common dso_local global i32 0, align 4
@TDES_FLAGS_CFB32 = common dso_local global i32 0, align 4
@TDES_MR_CFBS_32b = common dso_local global i32 0, align 4
@TDES_FLAGS_CFB64 = common dso_local global i32 0, align 4
@TDES_MR_CFBS_64b = common dso_local global i32 0, align 4
@TDES_FLAGS_OFB = common dso_local global i32 0, align 4
@TDES_MR_OPMOD_OFB = common dso_local global i32 0, align 4
@TDES_FLAGS_ENCRYPT = common dso_local global i32 0, align 4
@TDES_MR_CYPHER_ENC = common dso_local global i32 0, align 4
@TDES_CR = common dso_local global i32 0, align 4
@TDES_MR = common dso_local global i32 0, align 4
@TDES_KEY1W1R = common dso_local global i32 0, align 4
@TDES_IV1R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_tdes_dev*)* @atmel_tdes_write_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tdes_write_ctrl(%struct.atmel_tdes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_tdes_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atmel_tdes_dev* %0, %struct.atmel_tdes_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @TDES_MR_SMOD_PDC, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %9 = call i32 @atmel_tdes_hw_init(%struct.atmel_tdes_dev* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %223

14:                                               ; preds = %1
  %15 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %16 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %22 = load i32, i32* @TDES_PTCR, align 4
  %23 = load i32, i32* @TDES_PTCR_TXTDIS, align 4
  %24 = load i32, i32* @TDES_PTCR_RXTDIS, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @atmel_tdes_write(%struct.atmel_tdes_dev* %21, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %20, %14
  %28 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %29 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DES_KEY_SIZE, align 4
  %34 = shl i32 %33, 1
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load i32, i32* @TDES_MR_KEYMOD_3KEY, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @TDES_MR_TDESMOD_TDES, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %63

43:                                               ; preds = %27
  %44 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %45 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DES_KEY_SIZE, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load i32, i32* @TDES_MR_KEYMOD_2KEY, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @TDES_MR_TDESMOD_TDES, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %62

58:                                               ; preds = %43
  %59 = load i32, i32* @TDES_MR_TDESMOD_DES, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %51
  br label %63

63:                                               ; preds = %62, %36
  %64 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %65 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @TDES_FLAGS_CBC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @TDES_MR_OPMOD_CBC, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %145

74:                                               ; preds = %63
  %75 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %76 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @TDES_FLAGS_CFB, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %132

81:                                               ; preds = %74
  %82 = load i32, i32* @TDES_MR_OPMOD_CFB, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %86 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TDES_FLAGS_CFB8, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load i32, i32* @TDES_MR_CFBS_8b, align 4
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %131

95:                                               ; preds = %81
  %96 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %97 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @TDES_FLAGS_CFB16, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i32, i32* @TDES_MR_CFBS_16b, align 4
  %104 = load i32, i32* %6, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %130

106:                                              ; preds = %95
  %107 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %108 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @TDES_FLAGS_CFB32, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* @TDES_MR_CFBS_32b, align 4
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %6, align 4
  br label %129

117:                                              ; preds = %106
  %118 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %119 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @TDES_FLAGS_CFB64, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load i32, i32* @TDES_MR_CFBS_64b, align 4
  %126 = load i32, i32* %6, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %124, %117
  br label %129

129:                                              ; preds = %128, %113
  br label %130

130:                                              ; preds = %129, %102
  br label %131

131:                                              ; preds = %130, %91
  br label %144

132:                                              ; preds = %74
  %133 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %134 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @TDES_FLAGS_OFB, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i32, i32* @TDES_MR_OPMOD_OFB, align 4
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %139, %132
  br label %144

144:                                              ; preds = %143, %131
  br label %145

145:                                              ; preds = %144, %70
  %146 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %147 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @TDES_FLAGS_ENCRYPT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %145
  %153 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %154 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @TDES_FLAGS_OFB, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %152, %145
  %160 = load i32, i32* @TDES_MR_CYPHER_ENC, align 4
  %161 = load i32, i32* %6, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %6, align 4
  br label %163

163:                                              ; preds = %159, %152
  %164 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %165 = load i32, i32* @TDES_CR, align 4
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @atmel_tdes_write(%struct.atmel_tdes_dev* %164, i32 %165, i32 %166)
  %168 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %169 = load i32, i32* @TDES_MR, align 4
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @atmel_tdes_write(%struct.atmel_tdes_dev* %168, i32 %169, i32 %170)
  %172 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %173 = load i32, i32* @TDES_KEY1W1R, align 4
  %174 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %175 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %174, i32 0, i32 2
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %180 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %179, i32 0, i32 2
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = ashr i32 %183, 2
  %185 = call i32 @atmel_tdes_write_n(%struct.atmel_tdes_dev* %172, i32 %173, i64 %178, i32 %184)
  %186 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %187 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @TDES_FLAGS_CBC, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %206, label %192

192:                                              ; preds = %163
  %193 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %194 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @TDES_FLAGS_CFB, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %206, label %199

199:                                              ; preds = %192
  %200 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %201 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @TDES_FLAGS_OFB, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %222

206:                                              ; preds = %199, %192, %163
  %207 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %208 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %207, i32 0, i32 1
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %206
  %214 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %215 = load i32, i32* @TDES_IV1R, align 4
  %216 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %217 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %216, i32 0, i32 1
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i32 @atmel_tdes_write_n(%struct.atmel_tdes_dev* %214, i32 %215, i64 %220, i32 2)
  br label %222

222:                                              ; preds = %213, %206, %199
  store i32 0, i32* %2, align 4
  br label %223

223:                                              ; preds = %222, %12
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @atmel_tdes_hw_init(%struct.atmel_tdes_dev*) #1

declare dso_local i32 @atmel_tdes_write(%struct.atmel_tdes_dev*, i32, i32) #1

declare dso_local i32 @atmel_tdes_write_n(%struct.atmel_tdes_dev*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
