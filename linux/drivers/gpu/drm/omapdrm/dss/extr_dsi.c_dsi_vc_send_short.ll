; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_send_short.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_vc_send_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"dsi_vc_send_short(ch%d, dt %#x, b1 %#x, b2 %#x)\0A\00", align 1
@DSI_VC_SOURCE_L4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR FIFO FULL, aborting transfer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, i32, i32, i32, i32)* @dsi_vc_send_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vc_send_short(%struct.dsi_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsi_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %15 = call i32 @dsi_bus_is_locked(%struct.dsi_data* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %21 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, 255
  %29 = load i32, i32* %10, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = call i32 @DSSDBG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %24, %5
  %34 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @DSI_VC_SOURCE_L4, align 4
  %37 = call i32 @dsi_vc_config_source(%struct.dsi_data* %34, i32 %35, i32 %36)
  %38 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @DSI_VC_CTRL(i32 %39)
  %41 = call i32 @dsi_read_reg(%struct.dsi_data* %38, i32 %40)
  %42 = call i64 @FLD_GET(i32 %41, i32 16, i32 16)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = call i32 @DSSERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %73

48:                                               ; preds = %33
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %51 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 6
  %59 = or i32 %49, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = shl i32 %60, 0
  %62 = load i32, i32* %10, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %61, %63
  %65 = load i32, i32* %11, align 4
  %66 = shl i32 %65, 24
  %67 = or i32 %64, %66
  store i32 %67, i32* %12, align 4
  %68 = load %struct.dsi_data*, %struct.dsi_data** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @DSI_VC_SHORT_PACKET_HEADER(i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @dsi_write_reg(%struct.dsi_data* %68, i32 %70, i32 %71)
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %48, %44
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dsi_bus_is_locked(%struct.dsi_data*) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_vc_config_source(%struct.dsi_data*, i32, i32) #1

declare dso_local i64 @FLD_GET(i32, i32, i32) #1

declare dso_local i32 @dsi_read_reg(%struct.dsi_data*, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dsi_write_reg(%struct.dsi_data*, i32, i32) #1

declare dso_local i32 @DSI_VC_SHORT_PACKET_HEADER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
