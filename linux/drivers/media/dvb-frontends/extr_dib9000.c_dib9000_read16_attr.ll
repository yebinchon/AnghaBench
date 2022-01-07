; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_read16_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_read16_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { i32*, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32*, i32, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@I2C_M_RD = common dso_local global i64 0, align 8
@DATA_BUS_ACCESS_MODE_8BIT = common dso_local global i32 0, align 4
@DATA_BUS_ACCESS_MODE_NO_ADDRESS_INCREMENT = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"i2c read error on %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib9000_state*, i32, i32*, i64, i32)* @dib9000_read16_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_read16_attr(%struct.dib9000_state* %0, i32 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dib9000_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.dib9000_state* %0, %struct.dib9000_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 126, i64* %12, align 8
  %15 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %16 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 1024
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @dib9000_risc_apb_access_read(%struct.dib9000_state* %25, i32 %26, i32 %27, i32* null, i32 0, i32* %28, i64 %29)
  store i32 %30, i32* %6, align 4
  br label %202

31:                                               ; preds = %21, %5
  %32 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %33 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = call i32 @memset(%struct.TYPE_9__* %34, i32 0, i32 8)
  %36 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %37 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 1
  %41 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %42 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 8
  %46 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %47 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %52 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %55 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  store i32* %53, i32** %58, align 8
  %59 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %60 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  store i32 2, i32* %63, align 8
  %64 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %65 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = ashr i32 %67, 1
  %69 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %70 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 %68, i32* %73, align 8
  %74 = load i64, i64* @I2C_M_RD, align 8
  %75 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %76 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store i64 %74, i64* %79, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %82 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  store i32* %80, i32** %85, align 8
  %86 = load i64, i64* %10, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %89 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  store i32 %87, i32* %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = ashr i32 %93, 8
  %95 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %96 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %94, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, 255
  %101 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %102 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @DATA_BUS_ACCESS_MODE_8BIT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %31
  %110 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %111 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, 32
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %109, %31
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @DATA_BUS_ACCESS_MODE_NO_ADDRESS_INCREMENT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %123 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, 16
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %121, %116
  br label %129

129:                                              ; preds = %199, %128
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %12, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i64, i64* %10, align 8
  br label %137

135:                                              ; preds = %129
  %136 = load i64, i64* %12, align 8
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i64 [ %134, %133 ], [ %136, %135 ]
  store i64 %138, i64* %13, align 8
  %139 = load i64, i64* %13, align 8
  %140 = trunc i64 %139 to i32
  %141 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %142 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %141, i32 0, i32 1
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 2
  store i32 %140, i32* %145, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %148 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %147, i32 0, i32 1
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 1
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  store i32* %146, i32** %151, align 8
  %152 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %153 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %157 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %156, i32 0, i32 1
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = call i32 @i2c_transfer(i32 %155, %struct.TYPE_9__* %158, i32 2)
  %160 = icmp ne i32 %159, 2
  br i1 %160, label %161, label %164

161:                                              ; preds = %137
  %162 = load i32, i32* @EREMOTEIO, align 4
  %163 = sub nsw i32 0, %162
  br label %165

164:                                              ; preds = %137
  br label %165

165:                                              ; preds = %164, %161
  %166 = phi i32 [ %163, %161 ], [ 0, %164 ]
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @EREMOTEIO, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %6, align 4
  br label %202

174:                                              ; preds = %165
  %175 = load i64, i64* %13, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 %175
  store i32* %177, i32** %9, align 8
  %178 = load i64, i64* %13, align 8
  %179 = load i64, i64* %10, align 8
  %180 = sub nsw i64 %179, %178
  store i64 %180, i64* %10, align 8
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @DATA_BUS_ACCESS_MODE_NO_ADDRESS_INCREMENT, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %174
  %186 = load i64, i64* %13, align 8
  %187 = sdiv i64 %186, 2
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %185, %174
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %14, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i64, i64* %10, align 8
  %198 = icmp ne i64 %197, 0
  br label %199

199:                                              ; preds = %196, %193
  %200 = phi i1 [ false, %193 ], [ %198, %196 ]
  br i1 %200, label %129, label %201

201:                                              ; preds = %199
  store i32 0, i32* %6, align 4
  br label %202

202:                                              ; preds = %201, %169, %24
  %203 = load i32, i32* %6, align 4
  ret i32 %203
}

declare dso_local i32 @dib9000_risc_apb_access_read(%struct.dib9000_state*, i32, i32, i32*, i32, i32*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
