; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_config_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_config_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Source config of virtual channel %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"vc(%d) busy when trying to config for VP\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DSI_QUIRK_DCS_CMD_CONFIG_VC = common dso_local global i32 0, align 4
@DSI_VC_SOURCE_VP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, i32, i32)* @dsi_vc_config_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vc_config_source(%struct.dsi_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsi_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %10 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %75

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DSSDBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @dsi_sync_vc(%struct.dsi_data* %23, i32 %24)
  %26 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dsi_vc_enable(%struct.dsi_data* %26, i32 %27, i32 0)
  %29 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @DSI_VC_CTRL(i32 %30)
  %32 = call i32 @wait_for_bit_change(%struct.dsi_data* %29, i32 %31, i32 15, i32 0)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @DSSERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %75

39:                                               ; preds = %20
  %40 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @DSI_VC_CTRL(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @REG_FLD_MOD(%struct.dsi_data* %40, i32 %42, i32 %43, i32 1, i32 1)
  %45 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %46 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DSI_QUIRK_DCS_CMD_CONFIG_VC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %39
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @DSI_VC_SOURCE_VP, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @DSI_VC_CTRL(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @REG_FLD_MOD(%struct.dsi_data* %58, i32 %60, i32 %61, i32 30, i32 30)
  br label %63

63:                                               ; preds = %53, %39
  %64 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dsi_vc_enable(%struct.dsi_data* %64, i32 %65, i32 1)
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %69 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %67, i32* %74, align 4
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %63, %34, %19
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @DSSDBG(i8*, i32) #1

declare dso_local i32 @dsi_sync_vc(%struct.dsi_data*, i32) #1

declare dso_local i32 @dsi_vc_enable(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @wait_for_bit_change(%struct.dsi_data*, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dsi_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
