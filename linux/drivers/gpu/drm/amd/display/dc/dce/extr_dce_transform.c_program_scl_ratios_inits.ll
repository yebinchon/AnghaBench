; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_program_scl_ratios_inits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_program_scl_ratios_inits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32 }
%struct.scl_ratios_inits = type { %struct.TYPE_3__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SCL_HORZ_FILTER_SCALE_RATIO = common dso_local global i32 0, align 4
@SCL_H_SCALE_RATIO = common dso_local global i32 0, align 4
@SCL_VERT_FILTER_SCALE_RATIO = common dso_local global i32 0, align 4
@SCL_V_SCALE_RATIO = common dso_local global i32 0, align 4
@SCL_HORZ_FILTER_INIT = common dso_local global i32 0, align 4
@SCL_H_INIT_INT = common dso_local global i32 0, align 4
@SCL_H_INIT_FRAC = common dso_local global i32 0, align 4
@SCL_VERT_FILTER_INIT = common dso_local global i32 0, align 4
@SCL_V_INIT_INT = common dso_local global i32 0, align 4
@SCL_V_INIT_FRAC = common dso_local global i32 0, align 4
@SCL_AUTOMATIC_MODE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, %struct.scl_ratios_inits*)* @program_scl_ratios_inits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_scl_ratios_inits(%struct.dce_transform* %0, %struct.scl_ratios_inits* %1) #0 {
  %3 = alloca %struct.dce_transform*, align 8
  %4 = alloca %struct.scl_ratios_inits*, align 8
  store %struct.dce_transform* %0, %struct.dce_transform** %3, align 8
  store %struct.scl_ratios_inits* %1, %struct.scl_ratios_inits** %4, align 8
  %5 = load i32, i32* @SCL_HORZ_FILTER_SCALE_RATIO, align 4
  %6 = load i32, i32* @SCL_H_SCALE_RATIO, align 4
  %7 = load %struct.scl_ratios_inits*, %struct.scl_ratios_inits** %4, align 8
  %8 = getelementptr inbounds %struct.scl_ratios_inits, %struct.scl_ratios_inits* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @REG_SET(i32 %5, i32 0, i32 %6, i32 %9)
  %11 = load i32, i32* @SCL_VERT_FILTER_SCALE_RATIO, align 4
  %12 = load i32, i32* @SCL_V_SCALE_RATIO, align 4
  %13 = load %struct.scl_ratios_inits*, %struct.scl_ratios_inits** %4, align 8
  %14 = getelementptr inbounds %struct.scl_ratios_inits, %struct.scl_ratios_inits* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @REG_SET(i32 %11, i32 0, i32 %12, i32 %15)
  %17 = load i32, i32* @SCL_HORZ_FILTER_INIT, align 4
  %18 = load i32, i32* @SCL_H_INIT_INT, align 4
  %19 = load %struct.scl_ratios_inits*, %struct.scl_ratios_inits** %4, align 8
  %20 = getelementptr inbounds %struct.scl_ratios_inits, %struct.scl_ratios_inits* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SCL_H_INIT_FRAC, align 4
  %24 = load %struct.scl_ratios_inits*, %struct.scl_ratios_inits** %4, align 8
  %25 = getelementptr inbounds %struct.scl_ratios_inits, %struct.scl_ratios_inits* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @REG_SET_2(i32 %17, i32 0, i32 %18, i32 %22, i32 %23, i32 %27)
  %29 = load i32, i32* @SCL_VERT_FILTER_INIT, align 4
  %30 = load i32, i32* @SCL_V_INIT_INT, align 4
  %31 = load %struct.scl_ratios_inits*, %struct.scl_ratios_inits** %4, align 8
  %32 = getelementptr inbounds %struct.scl_ratios_inits, %struct.scl_ratios_inits* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SCL_V_INIT_FRAC, align 4
  %36 = load %struct.scl_ratios_inits*, %struct.scl_ratios_inits** %4, align 8
  %37 = getelementptr inbounds %struct.scl_ratios_inits, %struct.scl_ratios_inits* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @REG_SET_2(i32 %29, i32 0, i32 %30, i32 %34, i32 %35, i32 %39)
  %41 = load i32, i32* @SCL_AUTOMATIC_MODE_CONTROL, align 4
  %42 = call i32 @REG_WRITE(i32 %41, i32 0)
  ret void
}

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
