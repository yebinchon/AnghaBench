; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_dbg_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_dbg_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@HDMI_CFG_HDMI_NOT_DVI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mode:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DVI\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\09\09\09\09\09\00", align 1
@HDMI_CFG_HDCP_EN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"HDCP:\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@HDMI_CFG_ESS_NOT_OESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"HDCP mode:\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ESS enable\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"OESS enable\00", align 1
@HDMI_CFG_H_SYNC_POL_NEG = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"Hsync polarity:\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"inverted\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@HDMI_CFG_V_SYNC_POL_NEG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"Vsync polarity:\00", align 1
@HDMI_CFG_422_EN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"YUV422 format:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32)* @hdmi_dbg_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_dbg_cfg(%struct.seq_file* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = call i32 @seq_putc(%struct.seq_file* %6, i8 signext 9)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @HDMI_CFG_HDMI_NOT_DVI, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @DBGFS_PRINT_STR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = call i32 @seq_puts(%struct.seq_file* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @HDMI_CFG_HDCP_EN, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %25 = call i32 @DBGFS_PRINT_STR(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = call i32 @seq_puts(%struct.seq_file* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @HDMI_CFG_ESS_NOT_OESS, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)
  %35 = call i32 @DBGFS_PRINT_STR(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %34)
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = call i32 @seq_puts(%struct.seq_file* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @HDMI_CFG_H_SYNC_POL_NEG, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)
  %45 = call i32 @DBGFS_PRINT_STR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = call i32 @seq_puts(%struct.seq_file* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @HDMI_CFG_V_SYNC_POL_NEG, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)
  %55 = call i32 @DBGFS_PRINT_STR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = call i32 @seq_puts(%struct.seq_file* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @HDMI_CFG_422_EN, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %65 = call i32 @DBGFS_PRINT_STR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %64)
  ret void
}

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @DBGFS_PRINT_STR(i8*, i8*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
