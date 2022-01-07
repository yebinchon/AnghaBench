; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_group.c_rcar_du_group_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_group.c_rcar_du_group_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_group = type { i32, i32, %struct.rcar_du_device* }
%struct.rcar_du_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DEFR = common dso_local global i32 0, align 4
@DEFR_CODE = common dso_local global i32 0, align 4
@DEFR_DEFE = common dso_local global i32 0, align 4
@DEFR2 = common dso_local global i32 0, align 4
@DEFR2_CODE = common dso_local global i32 0, align 4
@DEFR2_DEFE2G = common dso_local global i32 0, align 4
@DEFR3 = common dso_local global i32 0, align 4
@DEFR3_CODE = common dso_local global i32 0, align 4
@DEFR3_DEFE3 = common dso_local global i32 0, align 4
@DEFR4 = common dso_local global i32 0, align 4
@DEFR4_CODE = common dso_local global i32 0, align 4
@DEFR5 = common dso_local global i32 0, align 4
@DEFR5_CODE = common dso_local global i32 0, align 4
@DEFR5_DEFE5 = common dso_local global i32 0, align 4
@DEFR10 = common dso_local global i32 0, align 4
@DEFR10_CODE = common dso_local global i32 0, align 4
@DEFR10_DEFE10 = common dso_local global i32 0, align 4
@DORCR = common dso_local global i32 0, align 4
@DORCR_PG1D_DS1 = common dso_local global i32 0, align 4
@DORCR_DPRS = common dso_local global i32 0, align 4
@DPTSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_group*)* @rcar_du_group_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_group_setup(%struct.rcar_du_group* %0) #0 {
  %2 = alloca %struct.rcar_du_group*, align 8
  %3 = alloca %struct.rcar_du_device*, align 8
  store %struct.rcar_du_group* %0, %struct.rcar_du_group** %2, align 8
  %4 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %5 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %4, i32 0, i32 2
  %6 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  store %struct.rcar_du_device* %6, %struct.rcar_du_device** %3, align 8
  %7 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %8 = load i32, i32* @DEFR, align 4
  %9 = load i32, i32* @DEFR_CODE, align 4
  %10 = load i32, i32* @DEFR_DEFE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @rcar_du_group_write(%struct.rcar_du_group* %7, i32 %8, i32 %11)
  %13 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %14 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %36

19:                                               ; preds = %1
  %20 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %21 = load i32, i32* @DEFR2, align 4
  %22 = load i32, i32* @DEFR2_CODE, align 4
  %23 = load i32, i32* @DEFR2_DEFE2G, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @rcar_du_group_write(%struct.rcar_du_group* %20, i32 %21, i32 %24)
  %26 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %27 = load i32, i32* @DEFR3, align 4
  %28 = load i32, i32* @DEFR3_CODE, align 4
  %29 = load i32, i32* @DEFR3_DEFE3, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @rcar_du_group_write(%struct.rcar_du_group* %26, i32 %27, i32 %30)
  %32 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %33 = load i32, i32* @DEFR4, align 4
  %34 = load i32, i32* @DEFR4_CODE, align 4
  %35 = call i32 @rcar_du_group_write(%struct.rcar_du_group* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %19, %1
  %37 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %38 = load i32, i32* @DEFR5, align 4
  %39 = load i32, i32* @DEFR5_CODE, align 4
  %40 = load i32, i32* @DEFR5_DEFE5, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @rcar_du_group_write(%struct.rcar_du_group* %37, i32 %38, i32 %41)
  %43 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %44 = call i32 @rcar_du_group_setup_pins(%struct.rcar_du_group* %43)
  %45 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %46 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %56

51:                                               ; preds = %36
  %52 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %53 = call i32 @rcar_du_group_setup_defr8(%struct.rcar_du_group* %52)
  %54 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %55 = call i32 @rcar_du_group_setup_didsr(%struct.rcar_du_group* %54)
  br label %56

56:                                               ; preds = %51, %36
  %57 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %58 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %61, 3
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %65 = load i32, i32* @DEFR10, align 4
  %66 = load i32, i32* @DEFR10_CODE, align 4
  %67 = load i32, i32* @DEFR10_DEFE10, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @rcar_du_group_write(%struct.rcar_du_group* %64, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %63, %56
  %71 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %72 = load i32, i32* @DORCR, align 4
  %73 = load i32, i32* @DORCR_PG1D_DS1, align 4
  %74 = load i32, i32* @DORCR_DPRS, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @rcar_du_group_write(%struct.rcar_du_group* %71, i32 %72, i32 %75)
  %77 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %78 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %77, i32 0, i32 1
  %79 = call i32 @mutex_lock(i32* %78)
  %80 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %81 = load i32, i32* @DPTSR, align 4
  %82 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %83 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 %84, 16
  %86 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %87 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %85, %88
  %90 = call i32 @rcar_du_group_write(%struct.rcar_du_group* %80, i32 %81, i32 %89)
  %91 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %92 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %91, i32 0, i32 1
  %93 = call i32 @mutex_unlock(i32* %92)
  ret void
}

declare dso_local i32 @rcar_du_group_write(%struct.rcar_du_group*, i32, i32) #1

declare dso_local i32 @rcar_du_group_setup_pins(%struct.rcar_du_group*) #1

declare dso_local i32 @rcar_du_group_setup_defr8(%struct.rcar_du_group*) #1

declare dso_local i32 @rcar_du_group_setup_didsr(%struct.rcar_du_group*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
