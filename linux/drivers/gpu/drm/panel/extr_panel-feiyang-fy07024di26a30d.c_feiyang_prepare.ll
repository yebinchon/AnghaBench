; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-feiyang-fy07024di26a30d.c_feiyang_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-feiyang-fy07024di26a30d.c_feiyang_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.feiyang_init_cmd = type { i32 }
%struct.drm_panel = type { i32 }
%struct.feiyang = type { i32, i32, i32, %struct.mipi_dsi_device* }
%struct.mipi_dsi_device = type { i32 }

@feiyang_init_cmds = common dso_local global %struct.feiyang_init_cmd* null, align 8
@FEIYANG_INIT_CMD_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @feiyang_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feiyang_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.feiyang*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.feiyang_init_cmd*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %9 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %10 = call %struct.feiyang* @panel_to_feiyang(%struct.drm_panel* %9)
  store %struct.feiyang* %10, %struct.feiyang** %4, align 8
  %11 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %12 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %11, i32 0, i32 3
  %13 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %12, align 8
  store %struct.mipi_dsi_device* %13, %struct.mipi_dsi_device** %5, align 8
  %14 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %15 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @regulator_enable(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %69

22:                                               ; preds = %1
  %23 = call i32 @msleep(i32 10)
  %24 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %25 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regulator_enable(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %69

32:                                               ; preds = %22
  %33 = call i32 @msleep(i32 20)
  %34 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %35 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @gpiod_set_value(i32 %36, i32 0)
  %38 = call i32 @msleep(i32 20)
  %39 = load %struct.feiyang*, %struct.feiyang** %4, align 8
  %40 = getelementptr inbounds %struct.feiyang, %struct.feiyang* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @gpiod_set_value(i32 %41, i32 1)
  %43 = call i32 @msleep(i32 200)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %65, %32
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.feiyang_init_cmd*, %struct.feiyang_init_cmd** @feiyang_init_cmds, align 8
  %47 = call i32 @ARRAY_SIZE(%struct.feiyang_init_cmd* %46)
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = load %struct.feiyang_init_cmd*, %struct.feiyang_init_cmd** @feiyang_init_cmds, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.feiyang_init_cmd, %struct.feiyang_init_cmd* %50, i64 %52
  store %struct.feiyang_init_cmd* %53, %struct.feiyang_init_cmd** %8, align 8
  %54 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %55 = load %struct.feiyang_init_cmd*, %struct.feiyang_init_cmd** %8, align 8
  %56 = getelementptr inbounds %struct.feiyang_init_cmd, %struct.feiyang_init_cmd* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FEIYANG_INIT_CMD_LEN, align 4
  %59 = call i32 @mipi_dsi_dcs_write_buffer(%struct.mipi_dsi_device* %54, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %69

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %44

68:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %62, %30, %20
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.feiyang* @panel_to_feiyang(%struct.drm_panel*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.feiyang_init_cmd*) #1

declare dso_local i32 @mipi_dsi_dcs_write_buffer(%struct.mipi_dsi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
