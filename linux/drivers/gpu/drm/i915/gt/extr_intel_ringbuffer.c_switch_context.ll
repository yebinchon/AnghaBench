; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_switch_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_switch_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32, %struct.TYPE_2__*, i32, %struct.intel_engine_cs* }
%struct.TYPE_2__ = type { i64 }
%struct.intel_engine_cs = type { i64, i32, i32 (%struct.i915_request.0*, i32)*, i32 }
%struct.i915_request.0 = type opaque
%struct.i915_address_space = type { i32 }
%struct.i915_ppgtt = type { i32 }

@BCS0 = common dso_local global i64 0, align 8
@MI_FORCE_RESTORE = common dso_local global i32 0, align 4
@RCS0 = common dso_local global i64 0, align 8
@MI_RESTORE_INHIBIT = common dso_local global i32 0, align 4
@EMIT_INVALIDATE = common dso_local global i32 0, align 4
@EMIT_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*)* @switch_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switch_context(%struct.i915_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_request*, align 8
  %4 = alloca %struct.intel_engine_cs*, align 8
  %5 = alloca %struct.i915_address_space*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i915_ppgtt*, align 8
  %10 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %3, align 8
  %11 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %12 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %11, i32 0, i32 3
  %13 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %12, align 8
  store %struct.intel_engine_cs* %13, %struct.intel_engine_cs** %4, align 8
  %14 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %15 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call %struct.i915_address_space* @vm_alias(%struct.TYPE_2__* %16)
  store %struct.i915_address_space* %17, %struct.i915_address_space** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %19 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @HAS_EXECLISTS(i32 %20)
  %22 = call i32 @GEM_BUG_ON(i32 %21)
  %23 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %24 = icmp ne %struct.i915_address_space* %23, null
  br i1 %24, label %25, label %74

25:                                               ; preds = %1
  %26 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %27 = call %struct.i915_ppgtt* @i915_vm_to_ppgtt(%struct.i915_address_space* %26)
  store %struct.i915_ppgtt* %27, %struct.i915_ppgtt** %9, align 8
  store i32 1, i32* %10, align 4
  %28 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %29 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BCS0, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %35 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_VALLEYVIEW(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 32, i32* %10, align 4
  br label %40

40:                                               ; preds = %39, %33, %25
  br label %41

41:                                               ; preds = %49, %40
  %42 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %43 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %9, align 8
  %44 = call i32 @load_pd_dir(%struct.i915_request* %42, %struct.i915_ppgtt* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %165

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %41, label %53

53:                                               ; preds = %49
  %54 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %9, align 8
  %55 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %58 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %53
  %63 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %64 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %9, align 8
  %69 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @MI_FORCE_RESTORE, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %62, %53
  br label %74

74:                                               ; preds = %73, %1
  %75 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %76 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %74
  %82 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %83 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @RCS0, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @GEM_BUG_ON(i32 %87)
  %89 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %90 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @i915_gem_context_is_kernel(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = load i32, i32* @MI_RESTORE_INHIBIT, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %94, %81
  %97 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @mi_set_context(%struct.i915_request* %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %154

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %74
  %105 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %106 = icmp ne %struct.i915_address_space* %105, null
  br i1 %106, label %107, label %147

107:                                              ; preds = %104
  %108 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %109 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %108, i32 0, i32 2
  %110 = load i32 (%struct.i915_request.0*, i32)*, i32 (%struct.i915_request.0*, i32)** %109, align 8
  %111 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %112 = bitcast %struct.i915_request* %111 to %struct.i915_request.0*
  %113 = load i32, i32* @EMIT_INVALIDATE, align 4
  %114 = call i32 %110(%struct.i915_request.0* %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %154

118:                                              ; preds = %107
  %119 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %120 = call i32 @flush_pd_dir(%struct.i915_request* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %154

124:                                              ; preds = %118
  %125 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %126 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %125, i32 0, i32 2
  %127 = load i32 (%struct.i915_request.0*, i32)*, i32 (%struct.i915_request.0*, i32)** %126, align 8
  %128 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %129 = bitcast %struct.i915_request* %128 to %struct.i915_request.0*
  %130 = load i32, i32* @EMIT_INVALIDATE, align 4
  %131 = call i32 %127(%struct.i915_request.0* %129, i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %154

135:                                              ; preds = %124
  %136 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %4, align 8
  %137 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %136, i32 0, i32 2
  %138 = load i32 (%struct.i915_request.0*, i32)*, i32 (%struct.i915_request.0*, i32)** %137, align 8
  %139 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %140 = bitcast %struct.i915_request* %139 to %struct.i915_request.0*
  %141 = load i32, i32* @EMIT_FLUSH, align 4
  %142 = call i32 %138(%struct.i915_request.0* %140, i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %154

146:                                              ; preds = %135
  br label %147

147:                                              ; preds = %146, %104
  %148 = load %struct.i915_request*, %struct.i915_request** %3, align 8
  %149 = call i32 @remap_l3(%struct.i915_request* %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %154

153:                                              ; preds = %147
  store i32 0, i32* %2, align 4
  br label %167

154:                                              ; preds = %152, %145, %134, %123, %117, %102
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.i915_address_space*, %struct.i915_address_space** %5, align 8
  %160 = call %struct.i915_ppgtt* @i915_vm_to_ppgtt(%struct.i915_address_space* %159)
  %161 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %158
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %157, %154
  br label %165

165:                                              ; preds = %164, %47
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %165, %153
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.i915_address_space* @vm_alias(%struct.TYPE_2__*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @HAS_EXECLISTS(i32) #1

declare dso_local %struct.i915_ppgtt* @i915_vm_to_ppgtt(%struct.i915_address_space*) #1

declare dso_local i64 @IS_VALLEYVIEW(i32) #1

declare dso_local i32 @load_pd_dir(%struct.i915_request*, %struct.i915_ppgtt*) #1

declare dso_local i64 @i915_gem_context_is_kernel(i32) #1

declare dso_local i32 @mi_set_context(%struct.i915_request*, i32) #1

declare dso_local i32 @flush_pd_dir(%struct.i915_request*) #1

declare dso_local i32 @remap_l3(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
