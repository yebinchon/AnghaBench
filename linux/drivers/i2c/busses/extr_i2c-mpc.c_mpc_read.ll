; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mpc.c_mpc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mpc.c_mpc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc_i2c = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CCR_RSTA = common dso_local global i32 0, align 4
@CCR_MIEN = common dso_local global i32 0, align 4
@CCR_MEN = common dso_local global i32 0, align 4
@CCR_MSTA = common dso_local global i32 0, align 4
@CCR_MTX = common dso_local global i32 0, align 4
@MPC_I2C_DR = common dso_local global i64 0, align 8
@CCR_TXAK = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpc_i2c*, i32, i64*, i32, i32, i32)* @mpc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_read(%struct.mpc_i2c* %0, i32 %1, i64* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpc_i2c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.mpc_i2c* %0, %struct.mpc_i2c** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.mpc_i2c*, %struct.mpc_i2c** %8, align 8
  %20 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* @CCR_RSTA, align 4
  br label %28

27:                                               ; preds = %6
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  store i32 %29, i32* %17, align 4
  %30 = load %struct.mpc_i2c*, %struct.mpc_i2c** %8, align 8
  %31 = load i32, i32* @CCR_MIEN, align 4
  %32 = load i32, i32* @CCR_MEN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CCR_MSTA, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CCR_MTX, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %17, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @writeccr(%struct.mpc_i2c* %30, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %41, 1
  %43 = or i32 %42, 1
  %44 = load %struct.mpc_i2c*, %struct.mpc_i2c** %8, align 8
  %45 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MPC_I2C_DR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writeb(i32 %43, i64 %48)
  %50 = load %struct.mpc_i2c*, %struct.mpc_i2c** %8, align 8
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @i2c_wait(%struct.mpc_i2c* %50, i32 %51, i32 1)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %28
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %7, align 4
  br label %193

57:                                               ; preds = %28
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %63
  %67 = load %struct.mpc_i2c*, %struct.mpc_i2c** %8, align 8
  %68 = load i32, i32* @CCR_MIEN, align 4
  %69 = load i32, i32* @CCR_MEN, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @CCR_MSTA, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @CCR_TXAK, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @writeccr(%struct.mpc_i2c* %67, i32 %74)
  br label %84

76:                                               ; preds = %63, %60
  %77 = load %struct.mpc_i2c*, %struct.mpc_i2c** %8, align 8
  %78 = load i32, i32* @CCR_MIEN, align 4
  %79 = load i32, i32* @CCR_MEN, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CCR_MSTA, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @writeccr(%struct.mpc_i2c* %77, i32 %82)
  br label %84

84:                                               ; preds = %76, %66
  %85 = load %struct.mpc_i2c*, %struct.mpc_i2c** %8, align 8
  %86 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MPC_I2C_DR, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i64 @readb(i64 %89)
  br label %91

91:                                               ; preds = %84, %57
  store i32 0, i32* %15, align 4
  br label %92

92:                                               ; preds = %188, %91
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %191

96:                                               ; preds = %92
  %97 = load %struct.mpc_i2c*, %struct.mpc_i2c** %8, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @i2c_wait(%struct.mpc_i2c* %97, i32 %98, i32 0)
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %7, align 4
  br label %193

104:                                              ; preds = %96
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %141, label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 %112, 2
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.mpc_i2c*, %struct.mpc_i2c** %8, align 8
  %117 = load i32, i32* @CCR_MIEN, align 4
  %118 = load i32, i32* @CCR_MEN, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @CCR_MSTA, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @CCR_TXAK, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @writeccr(%struct.mpc_i2c* %116, i32 %123)
  br label %125

125:                                              ; preds = %115, %110
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %11, align 4
  %128 = sub nsw i32 %127, 1
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %125
  %131 = load %struct.mpc_i2c*, %struct.mpc_i2c** %8, align 8
  %132 = load i32, i32* @CCR_MIEN, align 4
  %133 = load i32, i32* @CCR_MEN, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @CCR_MSTA, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @CCR_MTX, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @writeccr(%struct.mpc_i2c* %131, i32 %138)
  br label %140

140:                                              ; preds = %130, %125
  br label %141

141:                                              ; preds = %140, %107
  %142 = load %struct.mpc_i2c*, %struct.mpc_i2c** %8, align 8
  %143 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @MPC_I2C_DR, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i64 @readb(i64 %146)
  store i64 %147, i64* %18, align 8
  %148 = load i32, i32* %15, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %182

150:                                              ; preds = %141
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %182

153:                                              ; preds = %150
  %154 = load i64, i64* %18, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = load i64, i64* %18, align 8
  %158 = load i64, i64* @I2C_SMBUS_BLOCK_MAX, align 8
  %159 = icmp sgt i64 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156, %153
  %161 = load i32, i32* @EPROTO, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %7, align 4
  br label %193

163:                                              ; preds = %156
  %164 = load i64, i64* %18, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %11, align 4
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %181

171:                                              ; preds = %163
  %172 = load %struct.mpc_i2c*, %struct.mpc_i2c** %8, align 8
  %173 = load i32, i32* @CCR_MIEN, align 4
  %174 = load i32, i32* @CCR_MEN, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @CCR_MSTA, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @CCR_TXAK, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @writeccr(%struct.mpc_i2c* %172, i32 %179)
  br label %181

181:                                              ; preds = %171, %163
  br label %182

182:                                              ; preds = %181, %150, %141
  %183 = load i64, i64* %18, align 8
  %184 = load i64*, i64** %10, align 8
  %185 = load i32, i32* %15, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  store i64 %183, i64* %187, align 8
  br label %188

188:                                              ; preds = %182
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %15, align 4
  br label %92

191:                                              ; preds = %92
  %192 = load i32, i32* %11, align 4
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %191, %160, %102, %55
  %194 = load i32, i32* %7, align 4
  ret i32 %194
}

declare dso_local i32 @writeccr(%struct.mpc_i2c*, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @i2c_wait(%struct.mpc_i2c*, i32, i32) #1

declare dso_local i64 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
