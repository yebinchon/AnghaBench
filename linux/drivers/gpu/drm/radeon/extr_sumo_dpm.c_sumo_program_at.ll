; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_at.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.sumo_power_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sumo_ps = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@SUMO_MAX_HARDWARE_POWERLEVELS = common dso_local global i32 0, align 4
@SUMO_R_DFLT0 = common dso_local global i32 0, align 4
@SUMO_R_DFLT1 = common dso_local global i32 0, align 4
@SUMO_R_DFLT2 = common dso_local global i32 0, align 4
@SUMO_R_DFLT3 = common dso_local global i32 0, align 4
@SUMO_R_DFLT4 = common dso_local global i32 0, align 4
@SUMO_L_DFLT0 = common dso_local global i32 0, align 4
@SUMO_L_DFLT1 = common dso_local global i32 0, align 4
@SUMO_L_DFLT2 = common dso_local global i32 0, align 4
@SUMO_L_DFLT3 = common dso_local global i32 0, align 4
@SUMO_L_DFLT4 = common dso_local global i32 0, align 4
@SUMO_POWERSTATE_FLAGS_BOOST_STATE = common dso_local global i32 0, align 4
@BOOST_DPM_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*)* @sumo_program_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_program_at(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca %struct.sumo_power_info*, align 8
  %6 = alloca %struct.sumo_ps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %14)
  store %struct.sumo_power_info* %15, %struct.sumo_power_info** %5, align 8
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %17 = call %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps* %16)
  store %struct.sumo_ps* %17, %struct.sumo_ps** %6, align 8
  %18 = load i32, i32* @SUMO_MAX_HARDWARE_POWERLEVELS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @SUMO_MAX_HARDWARE_POWERLEVELS, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %25 = load i32, i32* @SUMO_R_DFLT0, align 4
  %26 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %25, i32* %26, align 16
  %27 = load i32, i32* @SUMO_R_DFLT1, align 4
  %28 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @SUMO_R_DFLT2, align 4
  %30 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @SUMO_R_DFLT3, align 4
  %32 = getelementptr inbounds i32, i32* %21, i64 3
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @SUMO_R_DFLT4, align 4
  %34 = getelementptr inbounds i32, i32* %21, i64 4
  store i32 %33, i32* %34, align 16
  %35 = load i32, i32* @SUMO_L_DFLT0, align 4
  %36 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %35, i32* %36, align 16
  %37 = load i32, i32* @SUMO_L_DFLT1, align 4
  %38 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @SUMO_L_DFLT2, align 4
  %40 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* @SUMO_L_DFLT3, align 4
  %42 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @SUMO_L_DFLT4, align 4
  %44 = getelementptr inbounds i32, i32* %24, i64 4
  store i32 %43, i32* %44, align 16
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %100, %2
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %48 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %103

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %54 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = icmp eq i32 %52, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.sumo_power_info*, %struct.sumo_power_info** %5, align 8
  %60 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  br label %66

62:                                               ; preds = %51
  %63 = load %struct.sumo_power_info*, %struct.sumo_power_info** %5, align 8
  %64 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i32 [ %61, %58 ], [ %65, %62 ]
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %70 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %68, %76
  %78 = sdiv i32 %77, 100
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %21, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %79, %83
  %85 = sdiv i32 %84, 100
  %86 = call i32 @CG_R(i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %24, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %87, %91
  %93 = sdiv i32 %92, 100
  %94 = call i32 @CG_L(i32 %93)
  %95 = or i32 %86, %94
  store i32 %95, i32* %10, align 4
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @sumo_write_at(%struct.radeon_device* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %66
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %45

103:                                              ; preds = %45
  %104 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %105 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SUMO_POWERSTATE_FLAGS_BOOST_STATE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %148

110:                                              ; preds = %103
  %111 = load %struct.sumo_power_info*, %struct.sumo_power_info** %5, align 8
  %112 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.sumo_power_info*, %struct.sumo_power_info** %5, align 8
  %116 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %114, %118
  %120 = sdiv i32 %119, 100
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %123 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %21, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %121, %128
  %130 = sdiv i32 %129, 100
  %131 = call i32 @CG_R(i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %134 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %24, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %132, %139
  %141 = sdiv i32 %140, 100
  %142 = call i32 @CG_L(i32 %141)
  %143 = or i32 %131, %142
  store i32 %143, i32* %10, align 4
  %144 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %145 = load i32, i32* @BOOST_DPM_LEVEL, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @sumo_write_at(%struct.radeon_device* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %110, %103
  %149 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %149)
  ret void
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CG_R(i32) #1

declare dso_local i32 @CG_L(i32) #1

declare dso_local i32 @sumo_write_at(%struct.radeon_device*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
