; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_group.c_rcar_du_group_setup_defr8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_group.c_rcar_du_group_setup_defr8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_group = type { i32, %struct.rcar_du_device* }
%struct.rcar_du_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DEFR8_CODE = common dso_local global i32 0, align 4
@DEFR8_DEFE8 = common dso_local global i32 0, align 4
@DEFR8_VSCS = common dso_local global i32 0, align 4
@DEFR8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_group*)* @rcar_du_group_setup_defr8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_group_setup_defr8(%struct.rcar_du_group* %0) #0 {
  %2 = alloca %struct.rcar_du_group*, align 8
  %3 = alloca %struct.rcar_du_device*, align 8
  %4 = alloca i32, align 4
  store %struct.rcar_du_group* %0, %struct.rcar_du_group** %2, align 8
  %5 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %6 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %5, i32 0, i32 1
  %7 = load %struct.rcar_du_device*, %struct.rcar_du_device** %6, align 8
  store %struct.rcar_du_device* %7, %struct.rcar_du_device** %3, align 8
  %8 = load i32, i32* @DEFR8_CODE, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %10 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %42

15:                                               ; preds = %1
  %16 = load i32, i32* @DEFR8_DEFE8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %20 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %15
  %24 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %25 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @DEFR8_DRGBS_DU(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %31 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %30, i32 0, i32 1
  %32 = load %struct.rcar_du_device*, %struct.rcar_du_device** %31, align 8
  %33 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load i32, i32* @DEFR8_VSCS, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %23
  br label %41

41:                                               ; preds = %40, %15
  br label %59

42:                                               ; preds = %1
  %43 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %44 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %47 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 2
  %50 = icmp eq i32 %45, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %53 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @DEFR8_DRGBS_DU(i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %51, %42
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %61 = load i32, i32* @DEFR8, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @rcar_du_group_write(%struct.rcar_du_group* %60, i32 %61, i32 %62)
  ret void
}

declare dso_local i32 @DEFR8_DRGBS_DU(i32) #1

declare dso_local i32 @rcar_du_group_write(%struct.rcar_du_group*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
