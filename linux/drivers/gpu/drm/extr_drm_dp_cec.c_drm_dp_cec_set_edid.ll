; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_set_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_cec.c_drm_dp_cec_set_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.edid = type { i32 }

@CEC_CAP_DEFAULTS = common dso_local global i32 0, align 4
@CEC_CAP_NEEDS_HPD = common dso_local global i32 0, align 4
@CEC_CAP_RC = common dso_local global i32 0, align 4
@DP_CEC_SNOOPING_CAPABLE = common dso_local global i32 0, align 4
@CEC_CAP_MONITOR_ALL = common dso_local global i32 0, align 4
@DP_CEC_MULTIPLE_LA_CAPABLE = common dso_local global i32 0, align 4
@CEC_MAX_LOG_ADDRS = common dso_local global i32 0, align 4
@drm_dp_cec_adap_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_dp_cec_set_edid(%struct.drm_dp_aux* %0, %struct.edid* %1) #0 {
  %3 = alloca %struct.drm_dp_aux*, align 8
  %4 = alloca %struct.edid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %3, align 8
  store %struct.edid* %1, %struct.edid** %4, align 8
  %8 = load i32, i32* @CEC_CAP_DEFAULTS, align 4
  %9 = load i32, i32* @CEC_CAP_NEEDS_HPD, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %11 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %12 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %149

16:                                               ; preds = %2
  %17 = load i32, i32* @CEC_CAP_RC, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %22 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  %24 = call i32 @cancel_delayed_work_sync(i32* %23)
  %25 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %26 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %30 = call i32 @drm_dp_cec_cap(%struct.drm_dp_aux* %29, i32* %7)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %16
  %33 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %34 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = call i32 @cec_unregister_adapter(%struct.TYPE_9__* %36)
  %38 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %39 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %40, align 8
  br label %144

41:                                               ; preds = %16
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @DP_CEC_SNOOPING_CAPABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @CEC_CAP_MONITOR_ALL, align 4
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @DP_CEC_MULTIPLE_LA_CAPABLE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @CEC_MAX_LOG_ADDRS, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %50
  %58 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %59 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = icmp ne %struct.TYPE_9__* %61, null
  br i1 %62, label %63, label %94

63:                                               ; preds = %57
  %64 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %65 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %63
  %73 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %74 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %83 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load %struct.edid*, %struct.edid** %4, align 8
  %87 = call i32 @cec_s_phys_addr_from_edid(%struct.TYPE_9__* %85, %struct.edid* %86)
  br label %144

88:                                               ; preds = %72, %63
  %89 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %90 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = call i32 @cec_unregister_adapter(%struct.TYPE_9__* %92)
  br label %94

94:                                               ; preds = %88, %57
  %95 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %96 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %97 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call %struct.TYPE_9__* @cec_allocate_adapter(i32* @drm_dp_cec_adap_ops, %struct.drm_dp_aux* %95, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %104 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %105, align 8
  %106 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %107 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = call i64 @IS_ERR(%struct.TYPE_9__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %94
  %113 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %114 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %115, align 8
  br label %144

116:                                              ; preds = %94
  %117 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %118 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %122 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @cec_register_adapter(%struct.TYPE_9__* %120, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %116
  %128 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %129 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = call i32 @cec_delete_adapter(%struct.TYPE_9__* %131)
  %133 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %134 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %135, align 8
  br label %143

136:                                              ; preds = %116
  %137 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %138 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = load %struct.edid*, %struct.edid** %4, align 8
  %142 = call i32 @cec_s_phys_addr_from_edid(%struct.TYPE_9__* %140, %struct.edid* %141)
  br label %143

143:                                              ; preds = %136, %127
  br label %144

144:                                              ; preds = %143, %112, %81, %32
  %145 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %3, align 8
  %146 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = call i32 @mutex_unlock(i32* %147)
  br label %149

149:                                              ; preds = %144, %15
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_dp_cec_cap(%struct.drm_dp_aux*, i32*) #1

declare dso_local i32 @cec_unregister_adapter(%struct.TYPE_9__*) #1

declare dso_local i32 @cec_s_phys_addr_from_edid(%struct.TYPE_9__*, %struct.edid*) #1

declare dso_local %struct.TYPE_9__* @cec_allocate_adapter(i32*, %struct.drm_dp_aux*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i64 @cec_register_adapter(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @cec_delete_adapter(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
