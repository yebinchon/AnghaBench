; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_edid.c_edid_get_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_edid.c_edid_get_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.intel_vgpu_i2c_edid }
%struct.intel_vgpu_i2c_edid = type { i64, i64, i32, i32, i32 }
%struct.intel_vgpu_edid_data = type { i8* }
%struct.TYPE_4__ = type { %struct.intel_vgpu_edid_data* }

@I2C_NOT_SPECIFIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Driver tries to read EDID without proper sequence!\0A\00", align 1
@EDID_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"edid_get_byte() exceeds the size of EDID!\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Reading EDID but EDID is not available!\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"No EDID available during the reading?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.intel_vgpu*)* @edid_get_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @edid_get_byte(%struct.intel_vgpu* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca %struct.intel_vgpu_i2c_edid*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.intel_vgpu_edid_data*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %8 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.intel_vgpu_i2c_edid* %9, %struct.intel_vgpu_i2c_edid** %4, align 8
  store i8 0, i8* %5, align 1
  %10 = load %struct.intel_vgpu_i2c_edid*, %struct.intel_vgpu_i2c_edid** %4, align 8
  %11 = getelementptr inbounds %struct.intel_vgpu_i2c_edid, %struct.intel_vgpu_i2c_edid* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @I2C_NOT_SPECIFIED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.intel_vgpu_i2c_edid*, %struct.intel_vgpu_i2c_edid** %4, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu_i2c_edid, %struct.intel_vgpu_i2c_edid* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %1
  %21 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i8 0, i8* %2, align 1
  br label %68

22:                                               ; preds = %15
  %23 = load %struct.intel_vgpu_i2c_edid*, %struct.intel_vgpu_i2c_edid** %4, align 8
  %24 = getelementptr inbounds %struct.intel_vgpu_i2c_edid, %struct.intel_vgpu_i2c_edid* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EDID_SIZE, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i8 0, i8* %2, align 1
  br label %68

30:                                               ; preds = %22
  %31 = load %struct.intel_vgpu_i2c_edid*, %struct.intel_vgpu_i2c_edid** %4, align 8
  %32 = getelementptr inbounds %struct.intel_vgpu_i2c_edid, %struct.intel_vgpu_i2c_edid* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i8 0, i8* %2, align 1
  br label %68

37:                                               ; preds = %30
  %38 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %39 = load %struct.intel_vgpu_i2c_edid*, %struct.intel_vgpu_i2c_edid** %4, align 8
  %40 = getelementptr inbounds %struct.intel_vgpu_i2c_edid, %struct.intel_vgpu_i2c_edid* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @intel_vgpu_has_monitor_on_port(%struct.intel_vgpu* %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %37
  %45 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %46 = load %struct.intel_vgpu_i2c_edid*, %struct.intel_vgpu_i2c_edid** %4, align 8
  %47 = getelementptr inbounds %struct.intel_vgpu_i2c_edid, %struct.intel_vgpu_i2c_edid* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_4__* @intel_vgpu_port(%struct.intel_vgpu* %45, i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.intel_vgpu_edid_data*, %struct.intel_vgpu_edid_data** %50, align 8
  store %struct.intel_vgpu_edid_data* %51, %struct.intel_vgpu_edid_data** %6, align 8
  %52 = load %struct.intel_vgpu_edid_data*, %struct.intel_vgpu_edid_data** %6, align 8
  %53 = getelementptr inbounds %struct.intel_vgpu_edid_data, %struct.intel_vgpu_edid_data* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.intel_vgpu_i2c_edid*, %struct.intel_vgpu_i2c_edid** %4, align 8
  %56 = getelementptr inbounds %struct.intel_vgpu_i2c_edid, %struct.intel_vgpu_i2c_edid* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  store i8 %59, i8* %5, align 1
  %60 = load %struct.intel_vgpu_i2c_edid*, %struct.intel_vgpu_i2c_edid** %4, align 8
  %61 = getelementptr inbounds %struct.intel_vgpu_i2c_edid, %struct.intel_vgpu_i2c_edid* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  br label %66

64:                                               ; preds = %37
  %65 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %44
  %67 = load i8, i8* %5, align 1
  store i8 %67, i8* %2, align 1
  br label %68

68:                                               ; preds = %66, %35, %28, %20
  %69 = load i8, i8* %2, align 1
  ret i8 %69
}

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i64 @intel_vgpu_has_monitor_on_port(%struct.intel_vgpu*, i32) #1

declare dso_local %struct.TYPE_4__* @intel_vgpu_port(%struct.intel_vgpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
