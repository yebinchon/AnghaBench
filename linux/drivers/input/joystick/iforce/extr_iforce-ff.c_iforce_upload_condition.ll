; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-ff.c_iforce_upload_condition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-ff.c_iforce_upload_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iforce = type { %struct.iforce_core_effect* }
%struct.iforce_core_effect = type { i32, %struct.resource, %struct.resource }
%struct.resource = type { i32 }
%struct.ff_effect = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@FF_MOD1_IS_USED = common dso_local global i32 0, align 4
@FF_MOD2_IS_USED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iforce_upload_condition(%struct.iforce* %0, %struct.ff_effect* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iforce*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.ff_effect*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iforce_core_effect*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iforce* %0, %struct.iforce** %5, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %6, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %7, align 8
  %15 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %16 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.iforce*, %struct.iforce** %5, align 8
  %19 = getelementptr inbounds %struct.iforce, %struct.iforce* %18, i32 0, i32 0
  %20 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %20, i64 %22
  store %struct.iforce_core_effect* %23, %struct.iforce_core_effect** %9, align 8
  %24 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %9, align 8
  %25 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %24, i32 0, i32 2
  store %struct.resource* %25, %struct.resource** %10, align 8
  %26 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %9, align 8
  %27 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %26, i32 0, i32 1
  store %struct.resource* %27, %struct.resource** %11, align 8
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %28 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %29 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %33 [
    i32 128, label %31
    i32 129, label %32
  ]

31:                                               ; preds = %3
  store i32 64, i32* %12, align 4
  br label %34

32:                                               ; preds = %3
  store i32 65, i32* %12, align 4
  br label %34

33:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %209

34:                                               ; preds = %32, %31
  %35 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %36 = icmp ne %struct.ff_effect* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.iforce*, %struct.iforce** %5, align 8
  %39 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %40 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %41 = call i64 @need_condition_modifier(%struct.iforce* %38, %struct.ff_effect* %39, %struct.ff_effect* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %160

43:                                               ; preds = %37, %34
  %44 = load %struct.iforce*, %struct.iforce** %5, align 8
  %45 = load %struct.resource*, %struct.resource** %10, align 8
  %46 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %47 = icmp ne %struct.ff_effect* %46, null
  %48 = zext i1 %47 to i32
  %49 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %50 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %57 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %64 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %71 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %78 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %85 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @make_condition_modifier(%struct.iforce* %44, %struct.resource* %45, i32 %48, i32 %55, i32 %62, i32 %69, i32 %76, i32 %83, i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %43
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %4, align 4
  br label %209

96:                                               ; preds = %43
  %97 = load i32, i32* @FF_MOD1_IS_USED, align 4
  %98 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %9, align 8
  %99 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @set_bit(i32 %97, i32 %100)
  %102 = load %struct.iforce*, %struct.iforce** %5, align 8
  %103 = load %struct.resource*, %struct.resource** %11, align 8
  %104 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %105 = icmp ne %struct.ff_effect* %104, null
  %106 = zext i1 %105 to i32
  %107 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %108 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %115 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %114, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %122 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %129 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %136 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %143 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i64 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @make_condition_modifier(%struct.iforce* %102, %struct.resource* %103, i32 %106, i32 %113, i32 %120, i32 %127, i32 %134, i32 %141, i32 %148)
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %96
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %4, align 4
  br label %209

154:                                              ; preds = %96
  %155 = load i32, i32* @FF_MOD2_IS_USED, align 4
  %156 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %9, align 8
  %157 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @set_bit(i32 %155, i32 %158)
  br label %160

160:                                              ; preds = %154, %37
  %161 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %162 = icmp ne %struct.ff_effect* %161, null
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %165 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %166 = call i64 @need_core(%struct.ff_effect* %164, %struct.ff_effect* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %200

168:                                              ; preds = %163, %160
  %169 = load %struct.iforce*, %struct.iforce** %5, align 8
  %170 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %171 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.resource*, %struct.resource** %10, align 8
  %174 = getelementptr inbounds %struct.resource, %struct.resource* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.resource*, %struct.resource** %11, align 8
  %177 = getelementptr inbounds %struct.resource, %struct.resource* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %181 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %185 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %189 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %193 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %197 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @make_core(%struct.iforce* %169, i32 %172, i32 %175, i32 %178, i32 %179, i32 192, i32 %183, i32 %187, i32 %191, i32 %195, i32 %198)
  store i32 %199, i32* %14, align 4
  br label %200

200:                                              ; preds = %168, %163
  %201 = load i32, i32* %14, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = load i32, i32* %14, align 4
  br label %207

205:                                              ; preds = %200
  %206 = load i32, i32* %13, align 4
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi i32 [ %204, %203 ], [ %206, %205 ]
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %207, %152, %94, %33
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i64 @need_condition_modifier(%struct.iforce*, %struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @make_condition_modifier(%struct.iforce*, %struct.resource*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @need_core(%struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @make_core(%struct.iforce*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
