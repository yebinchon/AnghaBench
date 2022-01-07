; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_pm_resume_old.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_pm_resume_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i32, i32, %struct.TYPE_7__*, i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@CHIP_BARTS = common dso_local global i64 0, align 8
@CHIP_CAYMAN = common dso_local global i64 0, align 8
@SET_VOLTAGE_TYPE_ASIC_VDDC = common dso_local global i32 0, align 4
@SET_VOLTAGE_TYPE_ASIC_VDDCI = common dso_local global i32 0, align 4
@PM_METHOD_DYNPM = common dso_local global i64 0, align 8
@DYNPM_STATE_SUSPENDED = common dso_local global i64 0, align 8
@DYNPM_STATE_ACTIVE = common dso_local global i64 0, align 8
@RADEON_IDLE_LOOP_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @radeon_pm_resume_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_pm_resume_old(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %4 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CHIP_BARTS, align 8
  %7 = icmp sge i64 %5, %6
  br i1 %7, label %8, label %74

8:                                                ; preds = %1
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHIP_CAYMAN, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %74

14:                                               ; preds = %8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %14
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 15
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 15
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %32 = call i32 @radeon_atom_set_voltage(%struct.radeon_device* %26, i64 %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %19
  %34 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 14
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %41 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 14
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDCI, align 4
  %46 = call i32 @radeon_atom_set_voltage(%struct.radeon_device* %40, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %33
  %48 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 11
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %55 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 11
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @radeon_set_engine_clock(%struct.radeon_device* %54, i64 %58)
  br label %60

60:                                               ; preds = %53, %47
  %61 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 9
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %68 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 9
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @radeon_set_memory_clock(%struct.radeon_device* %67, i64 %71)
  br label %73

73:                                               ; preds = %66, %60
  br label %74

74:                                               ; preds = %73, %14, %8, %1
  %75 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 4
  %78 = call i32 @mutex_lock(i32* %77)
  %79 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 13
  store i64 0, i64* %88, align 8
  %89 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 11
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 12
  store i64 %92, i64* %95, align 8
  %96 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 9
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 10
  store i64 %99, i64* %102, align 8
  %103 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %104 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 6
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = icmp ne %struct.TYPE_7__* %106, null
  br i1 %107, label %108, label %145

108:                                              ; preds = %74
  %109 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %114 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 8
  store i32 %123, i32* %126, align 4
  %127 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 7
  store i32 %141, i32* %144, align 8
  br label %145

145:                                              ; preds = %108, %74
  %146 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %147 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @PM_METHOD_DYNPM, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %145
  %153 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %154 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @DYNPM_STATE_SUSPENDED, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %152
  %160 = load i64, i64* @DYNPM_STATE_ACTIVE, align 8
  %161 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %162 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  store i64 %160, i64* %163, align 8
  %164 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 5
  %167 = load i32, i32* @RADEON_IDLE_LOOP_MS, align 4
  %168 = call i32 @msecs_to_jiffies(i32 %167)
  %169 = call i32 @schedule_delayed_work(i32* %166, i32 %168)
  br label %170

170:                                              ; preds = %159, %152, %145
  %171 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %172 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 4
  %174 = call i32 @mutex_unlock(i32* %173)
  %175 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %176 = call i32 @radeon_pm_compute_clocks(%struct.radeon_device* %175)
  ret void
}

declare dso_local i32 @radeon_atom_set_voltage(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @radeon_set_engine_clock(%struct.radeon_device*, i64) #1

declare dso_local i32 @radeon_set_memory_clock(%struct.radeon_device*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @radeon_pm_compute_clocks(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
