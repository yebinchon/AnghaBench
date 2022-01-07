; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_isl6421.c_isl6421_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_isl6421.c_isl6421_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64 }
%struct.isl6421 = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@ISL6421_VSEL1 = common dso_local global i32 0, align 4
@ISL6421_EN1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ISL6421_DCL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ISL6421_OLF1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Overload current detected. disabling LNBf power\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @isl6421_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl6421_set_voltage(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.isl6421*, align 8
  %10 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.isl6421*
  store %struct.isl6421* %14, %struct.isl6421** %9, align 8
  %15 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %18 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %17, i32 0, i32 0
  store i32* %18, i32** %16, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  %22 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %23 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %21, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i64 1
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 0
  store i32* %7, i32** %26, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 2
  %29 = load i32, i32* @I2C_M_RD, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 3
  %31 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %32 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %30, align 8
  %34 = load i32, i32* @ISL6421_VSEL1, align 4
  %35 = load i32, i32* @ISL6421_EN1, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %39 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %58 [
    i32 128, label %43
    i32 130, label %44
    i32 129, label %50
  ]

43:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %61

44:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %45 = load i32, i32* @ISL6421_EN1, align 4
  %46 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %47 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %61

50:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %51 = load i32, i32* @ISL6421_EN1, align 4
  %52 = load i32, i32* @ISL6421_VSEL1, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %55 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %61

58:                                               ; preds = %2
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %198

61:                                               ; preds = %50, %44, %43
  %62 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %63 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* @ISL6421_DCL, align 4
  %71 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %72 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %66, %61
  %76 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %77 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %80 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  %83 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %84 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %87 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %91 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %90, i32 0, i32 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %94 = call i32 @i2c_transfer(%struct.TYPE_2__* %92, %struct.i2c_msg* %93, i32 2)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %75
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %198

99:                                               ; preds = %75
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 2
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %198

105:                                              ; preds = %99
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %108 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @ISL6421_OLF1, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 @msleep(i32 1000)
  br label %118

118:                                              ; preds = %116, %111, %105
  %119 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %120 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ISL6421_DCL, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %155

125:                                              ; preds = %118
  %126 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %127 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @ISL6421_DCL, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %155, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* @ISL6421_DCL, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %136 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %140 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %139, i32 0, i32 4
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %143 = call i32 @i2c_transfer(%struct.TYPE_2__* %141, %struct.i2c_msg* %142, i32 2)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %132
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %3, align 4
  br label %198

148:                                              ; preds = %132
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 2
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* @EIO, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %198

154:                                              ; preds = %148
  br label %155

155:                                              ; preds = %154, %125, %118
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %197, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @ISL6421_OLF1, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %197

163:                                              ; preds = %158
  %164 = load i32, i32* @ISL6421_VSEL1, align 4
  %165 = load i32, i32* @ISL6421_EN1, align 4
  %166 = or i32 %164, %165
  %167 = xor i32 %166, -1
  %168 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %169 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %173 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %172, i32 0, i32 4
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %176 = call i32 @i2c_transfer(%struct.TYPE_2__* %174, %struct.i2c_msg* %175, i32 1)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %163
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %3, align 4
  br label %198

181:                                              ; preds = %163
  %182 = load i32, i32* %6, align 4
  %183 = icmp ne i32 %182, 1
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* @EIO, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %3, align 4
  br label %198

187:                                              ; preds = %181
  %188 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %189 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %188, i32 0, i32 1
  store i32 1, i32* %189, align 4
  %190 = load %struct.isl6421*, %struct.isl6421** %9, align 8
  %191 = getelementptr inbounds %struct.isl6421, %struct.isl6421* %190, i32 0, i32 4
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = call i32 @dev_warn(i32* %193, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %3, align 4
  br label %198

197:                                              ; preds = %158, %155
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %197, %187, %184, %179, %151, %146, %102, %97, %58
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @i2c_transfer(%struct.TYPE_2__*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
