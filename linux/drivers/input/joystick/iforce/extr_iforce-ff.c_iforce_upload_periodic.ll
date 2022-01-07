; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-ff.c_iforce_upload_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-ff.c_iforce_upload_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iforce = type { %struct.iforce_core_effect* }
%struct.iforce_core_effect = type { i32, %struct.resource, %struct.resource }
%struct.resource = type { i32 }
%struct.ff_effect = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@FF_MOD1_IS_USED = common dso_local global i32 0, align 4
@FF_MOD2_IS_USED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iforce_upload_periodic(%struct.iforce* %0, %struct.ff_effect* %1, %struct.ff_effect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iforce*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.ff_effect*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iforce_core_effect*, align 8
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iforce* %0, %struct.iforce** %5, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %6, align 8
  store %struct.ff_effect* %2, %struct.ff_effect** %7, align 8
  %16 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %17 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.iforce*, %struct.iforce** %5, align 8
  %20 = getelementptr inbounds %struct.iforce, %struct.iforce* %19, i32 0, i32 0
  %21 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %21, i64 %23
  store %struct.iforce_core_effect* %24, %struct.iforce_core_effect** %10, align 8
  %25 = load %struct.iforce*, %struct.iforce** %5, align 8
  %26 = getelementptr inbounds %struct.iforce, %struct.iforce* %25, i32 0, i32 0
  %27 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %27, i64 %29
  %31 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %30, i32 0, i32 2
  store %struct.resource* %31, %struct.resource** %11, align 8
  %32 = load %struct.iforce*, %struct.iforce** %5, align 8
  %33 = getelementptr inbounds %struct.iforce, %struct.iforce* %32, i32 0, i32 0
  %34 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %34, i64 %36
  %38 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %37, i32 0, i32 1
  store %struct.resource* %38, %struct.resource** %12, align 8
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %39 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %40 = icmp ne %struct.ff_effect* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %3
  %42 = load %struct.iforce*, %struct.iforce** %5, align 8
  %43 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %44 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %45 = call i64 @need_period_modifier(%struct.iforce* %42, %struct.ff_effect* %43, %struct.ff_effect* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %41, %3
  %48 = load %struct.iforce*, %struct.iforce** %5, align 8
  %49 = load %struct.resource*, %struct.resource** %11, align 8
  %50 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %51 = icmp ne %struct.ff_effect* %50, null
  %52 = zext i1 %51 to i32
  %53 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %54 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %59 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %64 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %69 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @make_period_modifier(%struct.iforce* %48, %struct.resource* %49, i32 %52, i32 %57, i32 %62, i32 %67, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %47
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %4, align 4
  br label %202

78:                                               ; preds = %47
  %79 = load i32, i32* @FF_MOD1_IS_USED, align 4
  %80 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %10, align 8
  %81 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @set_bit(i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %78, %41
  %85 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %86 = icmp ne %struct.ff_effect* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.iforce*, %struct.iforce** %5, align 8
  %89 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %90 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %91 = call i64 @need_envelope_modifier(%struct.iforce* %88, %struct.ff_effect* %89, %struct.ff_effect* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %134

93:                                               ; preds = %87, %84
  %94 = load %struct.iforce*, %struct.iforce** %5, align 8
  %95 = load %struct.resource*, %struct.resource** %12, align 8
  %96 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %97 = icmp ne %struct.ff_effect* %96, null
  %98 = zext i1 %97 to i32
  %99 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %100 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %106 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %112 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %118 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @make_envelope_modifier(%struct.iforce* %94, %struct.resource* %95, i32 %98, i32 %104, i32 %110, i32 %116, i32 %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %93
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %4, align 4
  br label %202

128:                                              ; preds = %93
  %129 = load i32, i32* @FF_MOD2_IS_USED, align 4
  %130 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %10, align 8
  %131 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @set_bit(i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %128, %87
  %135 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %136 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  switch i32 %139, label %145 [
    i32 129, label %140
    i32 128, label %141
    i32 130, label %142
    i32 131, label %143
    i32 132, label %144
  ]

140:                                              ; preds = %134
  store i32 32, i32* %8, align 4
  br label %146

141:                                              ; preds = %134
  store i32 33, i32* %8, align 4
  br label %146

142:                                              ; preds = %134
  store i32 34, i32* %8, align 4
  br label %146

143:                                              ; preds = %134
  store i32 35, i32* %8, align 4
  br label %146

144:                                              ; preds = %134
  store i32 36, i32* %8, align 4
  br label %146

145:                                              ; preds = %134
  store i32 32, i32* %8, align 4
  br label %146

146:                                              ; preds = %145, %144, %143, %142, %141, %140
  %147 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %148 = icmp ne %struct.ff_effect* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.ff_effect*, %struct.ff_effect** %7, align 8
  %151 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %152 = call i64 @need_core(%struct.ff_effect* %150, %struct.ff_effect* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %186

154:                                              ; preds = %149, %146
  %155 = load %struct.iforce*, %struct.iforce** %5, align 8
  %156 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %157 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.resource*, %struct.resource** %11, align 8
  %160 = getelementptr inbounds %struct.resource, %struct.resource* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.resource*, %struct.resource** %12, align 8
  %163 = getelementptr inbounds %struct.resource, %struct.resource* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %167 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %171 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %175 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %179 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %183 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @make_core(%struct.iforce* %155, i32 %158, i32 %161, i32 %164, i32 %165, i32 32, i32 %169, i32 %173, i32 %177, i32 %181, i32 %184)
  store i32 %185, i32* %15, align 4
  br label %186

186:                                              ; preds = %154, %149
  %187 = load i32, i32* %15, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load i32, i32* %15, align 4
  br label %200

191:                                              ; preds = %186
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32, i32* %14, align 4
  %196 = icmp ne i32 %195, 0
  br label %197

197:                                              ; preds = %194, %191
  %198 = phi i1 [ false, %191 ], [ %196, %194 ]
  %199 = zext i1 %198 to i32
  br label %200

200:                                              ; preds = %197, %189
  %201 = phi i32 [ %190, %189 ], [ %199, %197 ]
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %200, %126, %76
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i64 @need_period_modifier(%struct.iforce*, %struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @make_period_modifier(%struct.iforce*, %struct.resource*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @need_envelope_modifier(%struct.iforce*, %struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @make_envelope_modifier(%struct.iforce*, %struct.resource*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @need_core(%struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @make_core(%struct.iforce*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
