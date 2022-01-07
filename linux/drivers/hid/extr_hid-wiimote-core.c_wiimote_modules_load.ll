; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_modules_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_wiimote_modules_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimod_ops = type { i32, i32 (%struct.wiimod_ops*, %struct.wiimote_data*)*, i32 (%struct.wiimod_ops*, %struct.wiimote_data*)* }
%struct.wiimote_data = type { %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }

@wiimote_devtype_mods = common dso_local global i64** null, align 8
@WIIMOD_NULL = common dso_local global i64 0, align 8
@wiimod_table = common dso_local global %struct.wiimod_ops** null, align 8
@WIIMOD_FLAG_INPUT = common dso_local global i32 0, align 4
@WIIMOTE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32)* @wiimote_modules_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimote_modules_load(%struct.wiimote_data* %0, i32 %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.wiimod_ops*, align 8
  %9 = alloca i32, align 4
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i64**, i64*** @wiimote_devtype_mods, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i64*, i64** %10, i64 %12
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %6, align 8
  %15 = load i64*, i64** %6, align 8
  store i64* %15, i64** %7, align 8
  br label %16

16:                                               ; preds = %34, %2
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WIIMOD_NULL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load %struct.wiimod_ops**, %struct.wiimod_ops*** @wiimod_table, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.wiimod_ops*, %struct.wiimod_ops** %22, i64 %24
  %26 = load %struct.wiimod_ops*, %struct.wiimod_ops** %25, align 8
  %27 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @WIIMOD_FLAG_INPUT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %37

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i64*, i64** %7, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %7, align 8
  br label %16

37:                                               ; preds = %32, %16
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %109

40:                                               ; preds = %37
  %41 = call %struct.TYPE_13__* (...) @input_allocate_device()
  %42 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %43 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %42, i32 0, i32 0
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %43, align 8
  %44 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %45 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = icmp ne %struct.TYPE_13__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %204

49:                                               ; preds = %40
  %50 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %51 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %54 = call i32 @input_set_drvdata(%struct.TYPE_13__* %52, %struct.wiimote_data* %53)
  %55 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %56 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %55, i32 0, i32 2
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 4
  %59 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %60 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32* %58, i32** %63, align 8
  %64 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %65 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %64, i32 0, i32 2
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %70 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  store i32 %68, i32* %73, align 4
  %74 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %75 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %74, i32 0, i32 2
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %80 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  store i32 %78, i32* %83, align 4
  %84 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %85 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %84, i32 0, i32 2
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %90 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  store i32 %88, i32* %93, align 4
  %94 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %95 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %100 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %99, i32 0, i32 0
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store i32 %98, i32* %103, align 4
  %104 = load i32, i32* @WIIMOTE_NAME, align 4
  %105 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %106 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 8
  br label %109

109:                                              ; preds = %49, %37
  %110 = load i64*, i64** %6, align 8
  store i64* %110, i64** %7, align 8
  br label %111

111:                                              ; preds = %138, %109
  %112 = load i64*, i64** %7, align 8
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @WIIMOD_NULL, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %111
  %117 = load %struct.wiimod_ops**, %struct.wiimod_ops*** @wiimod_table, align 8
  %118 = load i64*, i64** %7, align 8
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.wiimod_ops*, %struct.wiimod_ops** %117, i64 %119
  %121 = load %struct.wiimod_ops*, %struct.wiimod_ops** %120, align 8
  store %struct.wiimod_ops* %121, %struct.wiimod_ops** %8, align 8
  %122 = load %struct.wiimod_ops*, %struct.wiimod_ops** %8, align 8
  %123 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %122, i32 0, i32 1
  %124 = load i32 (%struct.wiimod_ops*, %struct.wiimote_data*)*, i32 (%struct.wiimod_ops*, %struct.wiimote_data*)** %123, align 8
  %125 = icmp ne i32 (%struct.wiimod_ops*, %struct.wiimote_data*)* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %116
  br label %138

127:                                              ; preds = %116
  %128 = load %struct.wiimod_ops*, %struct.wiimod_ops** %8, align 8
  %129 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %128, i32 0, i32 1
  %130 = load i32 (%struct.wiimod_ops*, %struct.wiimote_data*)*, i32 (%struct.wiimod_ops*, %struct.wiimote_data*)** %129, align 8
  %131 = load %struct.wiimod_ops*, %struct.wiimod_ops** %8, align 8
  %132 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %133 = call i32 %130(%struct.wiimod_ops* %131, %struct.wiimote_data* %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %168

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %126
  %139 = load i64*, i64** %7, align 8
  %140 = getelementptr inbounds i64, i64* %139, i32 1
  store i64* %140, i64** %7, align 8
  br label %111

141:                                              ; preds = %111
  %142 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %143 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %142, i32 0, i32 0
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = icmp ne %struct.TYPE_13__* %144, null
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %148 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %147, i32 0, i32 0
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = call i32 @input_register_device(%struct.TYPE_13__* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %146
  br label %168

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %141
  %156 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %157 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = call i32 @spin_lock_irq(i32* %158)
  %160 = load i32, i32* %4, align 4
  %161 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %162 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  %164 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %165 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  %167 = call i32 @spin_unlock_irq(i32* %166)
  br label %204

168:                                              ; preds = %153, %136
  br label %169

169:                                              ; preds = %191, %168
  %170 = load i64*, i64** %7, align 8
  %171 = getelementptr inbounds i64, i64* %170, i32 -1
  store i64* %171, i64** %7, align 8
  %172 = load i64*, i64** %6, align 8
  %173 = icmp ne i64* %170, %172
  br i1 %173, label %174, label %192

174:                                              ; preds = %169
  %175 = load %struct.wiimod_ops**, %struct.wiimod_ops*** @wiimod_table, align 8
  %176 = load i64*, i64** %7, align 8
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.wiimod_ops*, %struct.wiimod_ops** %175, i64 %177
  %179 = load %struct.wiimod_ops*, %struct.wiimod_ops** %178, align 8
  store %struct.wiimod_ops* %179, %struct.wiimod_ops** %8, align 8
  %180 = load %struct.wiimod_ops*, %struct.wiimod_ops** %8, align 8
  %181 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %180, i32 0, i32 2
  %182 = load i32 (%struct.wiimod_ops*, %struct.wiimote_data*)*, i32 (%struct.wiimod_ops*, %struct.wiimote_data*)** %181, align 8
  %183 = icmp ne i32 (%struct.wiimod_ops*, %struct.wiimote_data*)* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %174
  %185 = load %struct.wiimod_ops*, %struct.wiimod_ops** %8, align 8
  %186 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %185, i32 0, i32 2
  %187 = load i32 (%struct.wiimod_ops*, %struct.wiimote_data*)*, i32 (%struct.wiimod_ops*, %struct.wiimote_data*)** %186, align 8
  %188 = load %struct.wiimod_ops*, %struct.wiimod_ops** %8, align 8
  %189 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %190 = call i32 %187(%struct.wiimod_ops* %188, %struct.wiimote_data* %189)
  br label %191

191:                                              ; preds = %184, %174
  br label %169

192:                                              ; preds = %169
  %193 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %194 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %193, i32 0, i32 0
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  %196 = icmp ne %struct.TYPE_13__* %195, null
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %199 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %198, i32 0, i32 0
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %199, align 8
  %201 = call i32 @input_free_device(%struct.TYPE_13__* %200)
  %202 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %203 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %202, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %203, align 8
  br label %204

204:                                              ; preds = %48, %155, %197, %192
  ret void
}

declare dso_local %struct.TYPE_13__* @input_allocate_device(...) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_13__*, %struct.wiimote_data*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_13__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @input_free_device(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
