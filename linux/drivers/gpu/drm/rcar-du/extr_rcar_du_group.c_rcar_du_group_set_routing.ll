; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_group.c_rcar_du_group_set_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_group.c_rcar_du_group_set_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_group = type { i32, %struct.rcar_du_device* }
%struct.rcar_du_device = type { i32 }

@DORCR = common dso_local global i32 0, align 4
@DORCR_PG2T = common dso_local global i32 0, align 4
@DORCR_DK2S = common dso_local global i32 0, align 4
@DORCR_PG2D_MASK = common dso_local global i32 0, align 4
@DORCR_PG2D_DS1 = common dso_local global i32 0, align 4
@DORCR_PG2D_DS2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcar_du_group_set_routing(%struct.rcar_du_group* %0) #0 {
  %2 = alloca %struct.rcar_du_group*, align 8
  %3 = alloca %struct.rcar_du_device*, align 8
  %4 = alloca i32, align 4
  store %struct.rcar_du_group* %0, %struct.rcar_du_group** %2, align 8
  %5 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %6 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %5, i32 0, i32 1
  %7 = load %struct.rcar_du_device*, %struct.rcar_du_device** %6, align 8
  store %struct.rcar_du_device* %7, %struct.rcar_du_device** %3, align 8
  %8 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %9 = load i32, i32* @DORCR, align 4
  %10 = call i32 @rcar_du_group_read(%struct.rcar_du_group* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @DORCR_PG2T, align 4
  %12 = load i32, i32* @DORCR_DK2S, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @DORCR_PG2D_MASK, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %20 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %23 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %24, 2
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @DORCR_PG2D_DS1, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %39

31:                                               ; preds = %1
  %32 = load i32, i32* @DORCR_PG2T, align 4
  %33 = load i32, i32* @DORCR_DK2S, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DORCR_PG2D_DS2, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %31, %27
  %40 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %41 = load i32, i32* @DORCR, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @rcar_du_group_write(%struct.rcar_du_group* %40, i32 %41, i32 %42)
  %44 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %45 = call i32 @rcar_du_group_set_dpad_levels(%struct.rcar_du_group* %44)
  %46 = load %struct.rcar_du_group*, %struct.rcar_du_group** %2, align 8
  %47 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %46, i32 0, i32 1
  %48 = load %struct.rcar_du_device*, %struct.rcar_du_device** %47, align 8
  %49 = call i32 @rcar_du_set_dpad0_vsp1_routing(%struct.rcar_du_device* %48)
  ret i32 %49
}

declare dso_local i32 @rcar_du_group_read(%struct.rcar_du_group*, i32) #1

declare dso_local i32 @rcar_du_group_write(%struct.rcar_du_group*, i32, i32) #1

declare dso_local i32 @rcar_du_group_set_dpad_levels(%struct.rcar_du_group*) #1

declare dso_local i32 @rcar_du_set_dpad0_vsp1_routing(%struct.rcar_du_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
