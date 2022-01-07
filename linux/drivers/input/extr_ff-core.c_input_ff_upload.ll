; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_ff-core.c_input_ff_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_ff-core.c_input_ff_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32, i32, i32, %struct.ff_device* }
%struct.ff_device = type { i32, i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32, %struct.file**, %struct.ff_effect*, i32 }
%struct.ff_effect = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.file = type { i32 }

@EV_FF = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@FF_EFFECT_MIN = common dso_local global i64 0, align 8
@FF_EFFECT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"invalid or not supported effect type in upload\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FF_PERIODIC = common dso_local global i64 0, align 8
@FF_WAVEFORM_MIN = common dso_local global i64 0, align 8
@FF_WAVEFORM_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"invalid or not supported wave form in upload\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_ff_upload(%struct.input_dev* %0, %struct.ff_effect* %1, %struct.file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.ff_effect*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.ff_device*, align 8
  %9 = alloca %struct.ff_effect*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  %12 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %12, i32 0, i32 4
  %14 = load %struct.ff_device*, %struct.ff_device** %13, align 8
  store %struct.ff_device* %14, %struct.ff_device** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* @EV_FF, align 8
  %16 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @test_bit(i64 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %215

24:                                               ; preds = %3
  %25 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %26 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FF_EFFECT_MIN, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %45, label %30

30:                                               ; preds = %24
  %31 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %32 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FF_EFFECT_MAX, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %38 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @test_bit(i64 %39, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %36, %30, %24
  %46 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 1
  %48 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %215

51:                                               ; preds = %36
  %52 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %53 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @FF_PERIODIC, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %51
  %58 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %59 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @FF_WAVEFORM_MIN, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %84, label %65

65:                                               ; preds = %57
  %66 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %67 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @FF_WAVEFORM_MAX, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %84, label %73

73:                                               ; preds = %65
  %74 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %75 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @test_bit(i64 %78, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %73, %65, %57
  %85 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 1
  %87 = call i32 @dev_dbg(i32* %86, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %215

90:                                               ; preds = %73, %51
  %91 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %92 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %95 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @test_bit(i64 %93, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %90
  %100 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %101 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %102 = call i32 @compat_effect(%struct.ff_device* %100, %struct.ff_effect* %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %4, align 4
  br label %215

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %90
  %109 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %110 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %109, i32 0, i32 2
  %111 = call i32 @mutex_lock(i32* %110)
  %112 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %113 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %150

116:                                              ; preds = %108
  store i32 0, i32* %11, align 4
  br label %117

117:                                              ; preds = %134, %116
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %120 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %125 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %124, i32 0, i32 3
  %126 = load %struct.file**, %struct.file*** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.file*, %struct.file** %126, i64 %128
  %130 = load %struct.file*, %struct.file** %129, align 8
  %131 = icmp ne %struct.file* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %123
  br label %137

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %117

137:                                              ; preds = %132, %117
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %140 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp sge i32 %138, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, i32* @ENOSPC, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %10, align 4
  br label %210

146:                                              ; preds = %137
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %149 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  store %struct.ff_effect* null, %struct.ff_effect** %9, align 8
  br label %176

150:                                              ; preds = %108
  %151 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %152 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %11, align 4
  %154 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.file*, %struct.file** %7, align 8
  %157 = call i32 @check_effect_access(%struct.ff_device* %154, i32 %155, %struct.file* %156)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %150
  br label %210

161:                                              ; preds = %150
  %162 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %163 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %162, i32 0, i32 4
  %164 = load %struct.ff_effect*, %struct.ff_effect** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %164, i64 %166
  store %struct.ff_effect* %167, %struct.ff_effect** %9, align 8
  %168 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %169 = load %struct.ff_effect*, %struct.ff_effect** %9, align 8
  %170 = call i32 @check_effects_compatible(%struct.ff_effect* %168, %struct.ff_effect* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %161
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %10, align 4
  br label %210

175:                                              ; preds = %161
  br label %176

176:                                              ; preds = %175, %146
  %177 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %178 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %177, i32 0, i32 1
  %179 = load i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)** %178, align 8
  %180 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %181 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %182 = load %struct.ff_effect*, %struct.ff_effect** %9, align 8
  %183 = call i32 %179(%struct.input_dev* %180, %struct.ff_effect* %181, %struct.ff_effect* %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  br label %210

187:                                              ; preds = %176
  %188 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %189 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %188, i32 0, i32 0
  %190 = call i32 @spin_lock_irq(i32* %189)
  %191 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %192 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %191, i32 0, i32 4
  %193 = load %struct.ff_effect*, %struct.ff_effect** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %193, i64 %195
  %197 = load %struct.ff_effect*, %struct.ff_effect** %6, align 8
  %198 = bitcast %struct.ff_effect* %196 to i8*
  %199 = bitcast %struct.ff_effect* %197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %198, i8* align 8 %199, i64 24, i1 false)
  %200 = load %struct.file*, %struct.file** %7, align 8
  %201 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %202 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %201, i32 0, i32 3
  %203 = load %struct.file**, %struct.file*** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.file*, %struct.file** %203, i64 %205
  store %struct.file* %200, %struct.file** %206, align 8
  %207 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %208 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %207, i32 0, i32 0
  %209 = call i32 @spin_unlock_irq(i32* %208)
  br label %210

210:                                              ; preds = %187, %186, %172, %160, %143
  %211 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  %212 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %211, i32 0, i32 2
  %213 = call i32 @mutex_unlock(i32* %212)
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %210, %105, %84, %45, %21
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @compat_effect(%struct.ff_device*, %struct.ff_effect*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @check_effect_access(%struct.ff_device*, i32, %struct.file*) #1

declare dso_local i32 @check_effects_compatible(%struct.ff_effect*, %struct.ff_effect*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
