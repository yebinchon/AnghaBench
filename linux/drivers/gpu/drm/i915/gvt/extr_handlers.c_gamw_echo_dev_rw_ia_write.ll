; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_gamw_echo_dev_rw_ia_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_gamw_echo_dev_rw_ia_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GAMW_ECO_ENABLE_64K_IPS_FIELD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"vgpu%d: ips enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"vgpu%d: ips disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Unsupported IPS setting %x, cannot enable 64K gtt.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32, i8*, i32)* @gamw_echo_dev_rw_ia_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gamw_echo_dev_rw_ia_write(%struct.intel_vgpu* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GAMW_ECO_ENABLE_64K_IPS_FIELD, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @INTEL_GEN(i32 %20)
  %22 = icmp sle i32 %21, 10
  br i1 %22, label %23, label %47

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @GAMW_ECO_ENABLE_64K_IPS_FIELD, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %29 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %46

32:                                               ; preds = %23
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %37 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %45

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %53

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %27
  br label %47

47:                                               ; preds = %46, %4
  %48 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @write_vreg(%struct.intel_vgpu* %48, i32 %49, i8* %50, i32 %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %40
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @gvt_dbg_core(i8*, i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i32) #1

declare dso_local i32 @write_vreg(%struct.intel_vgpu*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
