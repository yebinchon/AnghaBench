; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_get_hang_state_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_get_hang_state_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_vc4_get_hang_state = type { i64, i32 }
%struct.drm_vc4_get_hang_state_bo = type { i64, i32, i32 }
%struct.vc4_hang_state = type { i32*, %struct.drm_vc4_get_hang_state }
%struct.vc4_dev = type { i32, %struct.vc4_hang_state*, i32 }
%struct.vc4_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"VC4_GET_HANG_STATE with no VC4 V3D probed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_get_hang_state_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_vc4_get_hang_state*, align 8
  %9 = alloca %struct.drm_vc4_get_hang_state_bo*, align 8
  %10 = alloca %struct.vc4_hang_state*, align 8
  %11 = alloca %struct.drm_vc4_get_hang_state*, align 8
  %12 = alloca %struct.vc4_dev*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.vc4_bo*, align 8
  %17 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to %struct.drm_vc4_get_hang_state*
  store %struct.drm_vc4_get_hang_state* %19, %struct.drm_vc4_get_hang_state** %8, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %20)
  store %struct.vc4_dev* %21, %struct.vc4_dev** %12, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.vc4_dev*, %struct.vc4_dev** %12, align 8
  %23 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %194

30:                                               ; preds = %3
  %31 = load %struct.vc4_dev*, %struct.vc4_dev** %12, align 8
  %32 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.vc4_dev*, %struct.vc4_dev** %12, align 8
  %36 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %35, i32 0, i32 1
  %37 = load %struct.vc4_hang_state*, %struct.vc4_hang_state** %36, align 8
  store %struct.vc4_hang_state* %37, %struct.vc4_hang_state** %10, align 8
  %38 = load %struct.vc4_hang_state*, %struct.vc4_hang_state** %10, align 8
  %39 = icmp ne %struct.vc4_hang_state* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %30
  %41 = load %struct.vc4_dev*, %struct.vc4_dev** %12, align 8
  %42 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %194

47:                                               ; preds = %30
  %48 = load %struct.vc4_hang_state*, %struct.vc4_hang_state** %10, align 8
  %49 = getelementptr inbounds %struct.vc4_hang_state, %struct.vc4_hang_state* %48, i32 0, i32 1
  store %struct.drm_vc4_get_hang_state* %49, %struct.drm_vc4_get_hang_state** %11, align 8
  %50 = load %struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state** %8, align 8
  %51 = getelementptr inbounds %struct.drm_vc4_get_hang_state, %struct.drm_vc4_get_hang_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state** %11, align 8
  %54 = getelementptr inbounds %struct.drm_vc4_get_hang_state, %struct.drm_vc4_get_hang_state* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = load %struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state** %11, align 8
  %59 = getelementptr inbounds %struct.drm_vc4_get_hang_state, %struct.drm_vc4_get_hang_state* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state** %8, align 8
  %62 = getelementptr inbounds %struct.drm_vc4_get_hang_state, %struct.drm_vc4_get_hang_state* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.vc4_dev*, %struct.vc4_dev** %12, align 8
  %64 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %63, i32 0, i32 0
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  store i32 0, i32* %4, align 4
  br label %194

67:                                               ; preds = %47
  %68 = load %struct.vc4_dev*, %struct.vc4_dev** %12, align 8
  %69 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %68, i32 0, i32 1
  store %struct.vc4_hang_state* null, %struct.vc4_hang_state** %69, align 8
  %70 = load %struct.vc4_dev*, %struct.vc4_dev** %12, align 8
  %71 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %70, i32 0, i32 0
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load %struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state** %8, align 8
  %75 = getelementptr inbounds %struct.drm_vc4_get_hang_state, %struct.drm_vc4_get_hang_state* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state** %11, align 8
  %78 = getelementptr inbounds %struct.drm_vc4_get_hang_state, %struct.drm_vc4_get_hang_state* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state** %8, align 8
  %80 = load %struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state** %11, align 8
  %81 = call i32 @memcpy(%struct.drm_vc4_get_hang_state* %79, %struct.drm_vc4_get_hang_state* %80, i32 16)
  %82 = load %struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state** %11, align 8
  %83 = getelementptr inbounds %struct.drm_vc4_get_hang_state, %struct.drm_vc4_get_hang_state* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.drm_vc4_get_hang_state_bo* @kcalloc(i64 %84, i32 16, i32 %85)
  store %struct.drm_vc4_get_hang_state_bo* %86, %struct.drm_vc4_get_hang_state_bo** %9, align 8
  %87 = load %struct.drm_vc4_get_hang_state_bo*, %struct.drm_vc4_get_hang_state_bo** %9, align 8
  %88 = icmp ne %struct.drm_vc4_get_hang_state_bo* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %67
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %15, align 4
  br label %187

92:                                               ; preds = %67
  store i64 0, i64* %14, align 8
  br label %93

93:                                               ; preds = %144, %92
  %94 = load i64, i64* %14, align 8
  %95 = load %struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state** %11, align 8
  %96 = getelementptr inbounds %struct.drm_vc4_get_hang_state, %struct.drm_vc4_get_hang_state* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ult i64 %94, %97
  br i1 %98, label %99, label %147

99:                                               ; preds = %93
  %100 = load %struct.vc4_hang_state*, %struct.vc4_hang_state** %10, align 8
  %101 = getelementptr inbounds %struct.vc4_hang_state, %struct.vc4_hang_state* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.vc4_bo* @to_vc4_bo(i32 %105)
  store %struct.vc4_bo* %106, %struct.vc4_bo** %16, align 8
  %107 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %108 = load %struct.vc4_hang_state*, %struct.vc4_hang_state** %10, align 8
  %109 = getelementptr inbounds %struct.vc4_hang_state, %struct.vc4_hang_state* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %14, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @drm_gem_handle_create(%struct.drm_file* %107, i32 %113, i64* %17)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %99
  %118 = load i64, i64* %14, align 8
  %119 = load %struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state** %11, align 8
  %120 = getelementptr inbounds %struct.drm_vc4_get_hang_state, %struct.drm_vc4_get_hang_state* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  br label %164

121:                                              ; preds = %99
  %122 = load i64, i64* %17, align 8
  %123 = load %struct.drm_vc4_get_hang_state_bo*, %struct.drm_vc4_get_hang_state_bo** %9, align 8
  %124 = load i64, i64* %14, align 8
  %125 = getelementptr inbounds %struct.drm_vc4_get_hang_state_bo, %struct.drm_vc4_get_hang_state_bo* %123, i64 %124
  %126 = getelementptr inbounds %struct.drm_vc4_get_hang_state_bo, %struct.drm_vc4_get_hang_state_bo* %125, i32 0, i32 0
  store i64 %122, i64* %126, align 8
  %127 = load %struct.vc4_bo*, %struct.vc4_bo** %16, align 8
  %128 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.drm_vc4_get_hang_state_bo*, %struct.drm_vc4_get_hang_state_bo** %9, align 8
  %132 = load i64, i64* %14, align 8
  %133 = getelementptr inbounds %struct.drm_vc4_get_hang_state_bo, %struct.drm_vc4_get_hang_state_bo* %131, i64 %132
  %134 = getelementptr inbounds %struct.drm_vc4_get_hang_state_bo, %struct.drm_vc4_get_hang_state_bo* %133, i32 0, i32 2
  store i32 %130, i32* %134, align 4
  %135 = load %struct.vc4_bo*, %struct.vc4_bo** %16, align 8
  %136 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.drm_vc4_get_hang_state_bo*, %struct.drm_vc4_get_hang_state_bo** %9, align 8
  %141 = load i64, i64* %14, align 8
  %142 = getelementptr inbounds %struct.drm_vc4_get_hang_state_bo, %struct.drm_vc4_get_hang_state_bo* %140, i64 %141
  %143 = getelementptr inbounds %struct.drm_vc4_get_hang_state_bo, %struct.drm_vc4_get_hang_state_bo* %142, i32 0, i32 1
  store i32 %139, i32* %143, align 8
  br label %144

144:                                              ; preds = %121
  %145 = load i64, i64* %14, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %14, align 8
  br label %93

147:                                              ; preds = %93
  %148 = load %struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state** %8, align 8
  %149 = getelementptr inbounds %struct.drm_vc4_get_hang_state, %struct.drm_vc4_get_hang_state* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @u64_to_user_ptr(i32 %150)
  %152 = load %struct.drm_vc4_get_hang_state_bo*, %struct.drm_vc4_get_hang_state_bo** %9, align 8
  %153 = load %struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state** %11, align 8
  %154 = getelementptr inbounds %struct.drm_vc4_get_hang_state, %struct.drm_vc4_get_hang_state* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = mul i64 %155, 16
  %157 = trunc i64 %156 to i32
  %158 = call i64 @copy_to_user(i32 %151, %struct.drm_vc4_get_hang_state_bo* %152, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %147
  %161 = load i32, i32* @EFAULT, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %15, align 4
  br label %163

163:                                              ; preds = %160, %147
  br label %164

164:                                              ; preds = %163, %117
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %164
  store i64 0, i64* %14, align 8
  br label %168

168:                                              ; preds = %182, %167
  %169 = load i64, i64* %14, align 8
  %170 = load %struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state** %11, align 8
  %171 = getelementptr inbounds %struct.drm_vc4_get_hang_state, %struct.drm_vc4_get_hang_state* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ult i64 %169, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %168
  %175 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %176 = load %struct.drm_vc4_get_hang_state_bo*, %struct.drm_vc4_get_hang_state_bo** %9, align 8
  %177 = load i64, i64* %14, align 8
  %178 = getelementptr inbounds %struct.drm_vc4_get_hang_state_bo, %struct.drm_vc4_get_hang_state_bo* %176, i64 %177
  %179 = getelementptr inbounds %struct.drm_vc4_get_hang_state_bo, %struct.drm_vc4_get_hang_state_bo* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @drm_gem_handle_delete(%struct.drm_file* %175, i64 %180)
  br label %182

182:                                              ; preds = %174
  %183 = load i64, i64* %14, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %14, align 8
  br label %168

185:                                              ; preds = %168
  br label %186

186:                                              ; preds = %185, %164
  br label %187

187:                                              ; preds = %186, %89
  %188 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %189 = load %struct.vc4_hang_state*, %struct.vc4_hang_state** %10, align 8
  %190 = call i32 @vc4_free_hang_state(%struct.drm_device* %188, %struct.vc4_hang_state* %189)
  %191 = load %struct.drm_vc4_get_hang_state_bo*, %struct.drm_vc4_get_hang_state_bo** %9, align 8
  %192 = call i32 @kfree(%struct.drm_vc4_get_hang_state_bo* %191)
  %193 = load i32, i32* %15, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %187, %57, %40, %26
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.drm_vc4_get_hang_state*, %struct.drm_vc4_get_hang_state*, i32) #1

declare dso_local %struct.drm_vc4_get_hang_state_bo* @kcalloc(i64, i32, i32) #1

declare dso_local %struct.vc4_bo* @to_vc4_bo(i32) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32, i64*) #1

declare dso_local i64 @copy_to_user(i32, %struct.drm_vc4_get_hang_state_bo*, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @drm_gem_handle_delete(%struct.drm_file*, i64) #1

declare dso_local i32 @vc4_free_hang_state(%struct.drm_device*, %struct.vc4_hang_state*) #1

declare dso_local i32 @kfree(%struct.drm_vc4_get_hang_state_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
