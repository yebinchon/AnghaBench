; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_initial_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_initial_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Initial config of virtual channel %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"VC(%d) busy when trying to configure it!\0A\00", align 1
@DSI_QUIRK_VC_OCP_WIDTH = common dso_local global i32 0, align 4
@DSI_VC_SOURCE_L4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_data*, i32)* @dsi_vc_initial_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_vc_initial_config(%struct.dsi_data* %0, i32 %1) #0 {
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @DSSDBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @DSI_VC_CTRL(i32 %9)
  %11 = call i32 @dsi_read_reg(%struct.dsi_data* %8, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @FLD_GET(i32 %12, i32 15, i32 15)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @DSSERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @FLD_MOD(i32 %19, i32 0, i32 1, i32 1)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @FLD_MOD(i32 %21, i32 0, i32 2, i32 2)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @FLD_MOD(i32 %23, i32 0, i32 3, i32 3)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @FLD_MOD(i32 %25, i32 0, i32 4, i32 4)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @FLD_MOD(i32 %27, i32 1, i32 7, i32 7)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @FLD_MOD(i32 %29, i32 1, i32 8, i32 8)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @FLD_MOD(i32 %31, i32 0, i32 9, i32 9)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %34 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DSI_QUIRK_VC_OCP_WIDTH, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %18
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @FLD_MOD(i32 %42, i32 3, i32 11, i32 10)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %18
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @FLD_MOD(i32 %45, i32 4, i32 29, i32 27)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @FLD_MOD(i32 %47, i32 4, i32 23, i32 21)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @DSI_VC_CTRL(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dsi_write_reg(%struct.dsi_data* %49, i32 %51, i32 %52)
  %54 = load i32, i32* @DSI_VC_SOURCE_L4, align 4
  %55 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %56 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %54, i32* %61, align 4
  ret void
}

declare dso_local i32 @DSSDBG(i8*, i32) #1

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i64 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.dsi_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
