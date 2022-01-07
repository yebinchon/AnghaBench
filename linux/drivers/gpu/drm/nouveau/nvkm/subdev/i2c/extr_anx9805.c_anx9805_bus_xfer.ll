; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_anx9805.c_anx9805_bus_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_anx9805.c_anx9805_bus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_bus = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.anx9805_bus = type { i32, %struct.anx9805_pad* }
%struct.anx9805_pad = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_i2c_bus*, %struct.i2c_msg*, i32)* @anx9805_bus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx9805_bus_xfer(%struct.nvkm_i2c_bus* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_i2c_bus*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.anx9805_bus*, align 8
  %8 = alloca %struct.anx9805_pad*, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca %struct.i2c_msg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nvkm_i2c_bus* %0, %struct.nvkm_i2c_bus** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %4, align 8
  %19 = call %struct.anx9805_bus* @anx9805_bus(%struct.nvkm_i2c_bus* %18)
  store %struct.anx9805_bus* %19, %struct.anx9805_bus** %7, align 8
  %20 = load %struct.anx9805_bus*, %struct.anx9805_bus** %7, align 8
  %21 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %20, i32 0, i32 1
  %22 = load %struct.anx9805_pad*, %struct.anx9805_pad** %21, align 8
  store %struct.anx9805_pad* %22, %struct.anx9805_pad** %8, align 8
  %23 = load %struct.anx9805_pad*, %struct.anx9805_pad** %8, align 8
  %24 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.i2c_adapter* %26, %struct.i2c_adapter** %9, align 8
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  store %struct.i2c_msg* %27, %struct.i2c_msg** %10, align 8
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %32 = load %struct.anx9805_pad*, %struct.anx9805_pad** %8, align 8
  %33 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @nvkm_rdi2cr(%struct.i2c_adapter* %31, i32 %34, i32 7)
  %36 = and i32 %35, -17
  store i32 %36, i32* %17, align 4
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %38 = load %struct.anx9805_pad*, %struct.anx9805_pad** %8, align 8
  %39 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %17, align 4
  %42 = or i32 %41, 16
  %43 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %37, i32 %40, i32 7, i32 %42)
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %45 = load %struct.anx9805_pad*, %struct.anx9805_pad** %8, align 8
  %46 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %44, i32 %47, i32 7, i32 %48)
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %51 = load %struct.anx9805_bus*, %struct.anx9805_bus** %7, align 8
  %52 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %50, i32 %53, i32 67, i32 5)
  %55 = call i32 @mdelay(i32 5)
  br label %56

56:                                               ; preds = %194, %3
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %14, align 4
  %59 = icmp ne i32 %57, 0
  br i1 %59, label %60, label %197

60:                                               ; preds = %56
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @I2C_M_RD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %150

67:                                               ; preds = %60
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 80
  br i1 %71, label %72, label %150

72:                                               ; preds = %67
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %74 = load %struct.anx9805_bus*, %struct.anx9805_bus** %7, align 8
  %75 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %78 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 1
  %81 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %73, i32 %76, i32 64, i32 %80)
  %82 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %83 = load %struct.anx9805_bus*, %struct.anx9805_bus** %7, align 8
  %84 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %82, i32 %85, i32 65, i32 %86)
  %88 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %89 = load %struct.anx9805_bus*, %struct.anx9805_bus** %7, align 8
  %90 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %88, i32 %91, i32 66, i32 %92)
  %94 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %95 = load %struct.anx9805_bus*, %struct.anx9805_bus** %7, align 8
  %96 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %94, i32 %97, i32 68, i32 %100)
  %102 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %103 = load %struct.anx9805_bus*, %struct.anx9805_bus** %7, align 8
  %104 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %102, i32 %105, i32 69, i32 0)
  %107 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %108 = load %struct.anx9805_bus*, %struct.anx9805_bus** %7, align 8
  %109 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %107, i32 %110, i32 67, i32 1)
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %146, %72
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %115 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %149

118:                                              ; preds = %112
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %133, %118
  %120 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %121 = load %struct.anx9805_bus*, %struct.anx9805_bus** %7, align 8
  %122 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @nvkm_rdi2cr(%struct.i2c_adapter* %120, i32 %123, i32 70)
  %125 = and i32 %124, 16
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %119
  %128 = call i32 @mdelay(i32 5)
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  %131 = icmp eq i32 %129, 32
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %199

133:                                              ; preds = %127
  br label %119

134:                                              ; preds = %119
  %135 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %136 = load %struct.anx9805_bus*, %struct.anx9805_bus** %7, align 8
  %137 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @nvkm_rdi2cr(%struct.i2c_adapter* %135, i32 %138, i32 71)
  %140 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %141 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %139, i32* %145, align 4
  br label %146

146:                                              ; preds = %134
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  br label %112

149:                                              ; preds = %112
  br label %194

150:                                              ; preds = %67, %60
  %151 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %152 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @I2C_M_RD, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %192, label %157

157:                                              ; preds = %150
  %158 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %159 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 80
  br i1 %161, label %162, label %173

162:                                              ; preds = %157
  %163 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %164 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %173

167:                                              ; preds = %162
  %168 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %169 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %16, align 4
  br label %191

173:                                              ; preds = %162, %157
  %174 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %175 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 48
  br i1 %177, label %178, label %189

178:                                              ; preds = %173
  %179 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %180 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %189

183:                                              ; preds = %178
  %184 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %185 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %15, align 4
  br label %190

189:                                              ; preds = %178, %173
  br label %199

190:                                              ; preds = %183
  br label %191

191:                                              ; preds = %190, %167
  br label %193

192:                                              ; preds = %150
  br label %199

193:                                              ; preds = %191
  br label %194

194:                                              ; preds = %193, %149
  %195 = load %struct.i2c_msg*, %struct.i2c_msg** %10, align 8
  %196 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %195, i32 1
  store %struct.i2c_msg* %196, %struct.i2c_msg** %10, align 8
  br label %56

197:                                              ; preds = %56
  %198 = load i32, i32* %6, align 4
  store i32 %198, i32* %11, align 4
  br label %199

199:                                              ; preds = %197, %192, %189, %132
  %200 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %201 = load %struct.anx9805_bus*, %struct.anx9805_bus** %7, align 8
  %202 = getelementptr inbounds %struct.anx9805_bus, %struct.anx9805_bus* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %200, i32 %203, i32 67, i32 0)
  %205 = load i32, i32* %11, align 4
  ret i32 %205
}

declare dso_local %struct.anx9805_bus* @anx9805_bus(%struct.nvkm_i2c_bus*) #1

declare dso_local i32 @nvkm_rdi2cr(%struct.i2c_adapter*, i32, i32) #1

declare dso_local i32 @nvkm_wri2cr(%struct.i2c_adapter*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
