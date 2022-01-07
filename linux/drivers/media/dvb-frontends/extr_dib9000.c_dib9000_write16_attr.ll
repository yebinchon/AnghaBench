; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_write16_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_write16_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { i32*, %struct.TYPE_9__*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32*, i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@DATA_BUS_ACCESS_MODE_16BIT = common dso_local global i32 0, align 4
@DATA_BUS_ACCESS_MODE_NO_ADDRESS_INCREMENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DATA_BUS_ACCESS_MODE_8BIT = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib9000_state*, i32, i32*, i64, i32)* @dib9000_write16_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_write16_attr(%struct.dib9000_state* %0, i32 %1, i32* %2, i64 %3, i32 %4) #0 {
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
  br i1 %20, label %21, label %40

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 1024
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @DATA_BUS_ACCESS_MODE_16BIT, align 4
  %28 = load i32, i32* @DATA_BUS_ACCESS_MODE_NO_ADDRESS_INCREMENT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @dib9000_risc_apb_access_write(%struct.dib9000_state* %25, i32 %26, i32 %31, i32* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %180

39:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %180

40:                                               ; preds = %21, %5
  %41 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %42 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 0
  %45 = call i32 @memset(%struct.TYPE_9__* %44, i32 0, i32 4)
  %46 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %47 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 1
  %51 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %52 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 8
  %56 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %57 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %62 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %65 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i32* %63, i32** %68, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add nsw i64 %69, 2
  %71 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %72 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  store i64 %70, i64* %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = ashr i32 %76, 8
  %78 = and i32 %77, 255
  %79 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %80 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 255
  %85 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %86 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @DATA_BUS_ACCESS_MODE_8BIT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %40
  %94 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %95 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, 32
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %93, %40
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @DATA_BUS_ACCESS_MODE_NO_ADDRESS_INCREMENT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %107 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, 16
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %105, %100
  br label %113

113:                                              ; preds = %176, %112
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %12, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i64, i64* %10, align 8
  br label %121

119:                                              ; preds = %113
  %120 = load i64, i64* %12, align 8
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i64 [ %118, %117 ], [ %120, %119 ]
  store i64 %122, i64* %13, align 8
  %123 = load i64, i64* %13, align 8
  %124 = add nsw i64 %123, 2
  %125 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %126 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %125, i32 0, i32 1
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  store i64 %124, i64* %129, align 8
  %130 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %131 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = load i32*, i32** %9, align 8
  %135 = load i64, i64* %13, align 8
  %136 = call i32 @memcpy(i32* %133, i32* %134, i64 %135)
  %137 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %138 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.dib9000_state*, %struct.dib9000_state** %7, align 8
  %142 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %141, i32 0, i32 1
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = call i32 @i2c_transfer(i32 %140, %struct.TYPE_9__* %143, i32 1)
  %145 = icmp ne i32 %144, 1
  br i1 %145, label %146, label %149

146:                                              ; preds = %121
  %147 = load i32, i32* @EREMOTEIO, align 4
  %148 = sub nsw i32 0, %147
  br label %150

149:                                              ; preds = %121
  br label %150

150:                                              ; preds = %149, %146
  %151 = phi i32 [ %148, %146 ], [ 0, %149 ]
  store i32 %151, i32* %14, align 4
  %152 = load i64, i64* %13, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 %152
  store i32* %154, i32** %9, align 8
  %155 = load i64, i64* %13, align 8
  %156 = load i64, i64* %10, align 8
  %157 = sub nsw i64 %156, %155
  store i64 %157, i64* %10, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @DATA_BUS_ACCESS_MODE_NO_ADDRESS_INCREMENT, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %169, label %162

162:                                              ; preds = %150
  %163 = load i64, i64* %13, align 8
  %164 = sdiv i64 %163, 2
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %162, %150
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %14, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i64, i64* %10, align 8
  %175 = icmp ne i64 %174, 0
  br label %176

176:                                              ; preds = %173, %170
  %177 = phi i1 [ false, %170 ], [ %175, %173 ]
  br i1 %177, label %113, label %178

178:                                              ; preds = %176
  %179 = load i32, i32* %14, align 4
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %178, %39, %36
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local i64 @dib9000_risc_apb_access_write(%struct.dib9000_state*, i32, i32, i32*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @i2c_transfer(i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
