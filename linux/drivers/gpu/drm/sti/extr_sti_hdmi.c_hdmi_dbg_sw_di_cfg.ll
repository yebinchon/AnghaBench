; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_dbg_sw_di_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_dbg_sw_di_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"no transmission\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"single transmission\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"once every field\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"once every frame\00", align 1
@__const.hdmi_dbg_sw_di_cfg.en_di = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0)], align 16
@HDMI_IFRAME_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Data island 1:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\09\09\09\09\09\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Data island 2:\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Data island 3:\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Data island 4:\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Data island 5:\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Data island 6:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32)* @hdmi_dbg_sw_di_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_dbg_sw_di_cfg(%struct.seq_file* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8*], align 16
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast [4 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x i8*]* @__const.hdmi_dbg_sw_di_cfg.en_di to i8*), i64 32, i1 false)
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = call i32 @seq_putc(%struct.seq_file* %8, i8 signext 9)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @HDMI_IFRAME_MASK, align 4
  %12 = call i32 @HDMI_IFRAME_CFG_DI_N(i32 %11, i32 1)
  %13 = and i32 %10, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @DBGFS_PRINT_STR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 @seq_puts(%struct.seq_file* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @HDMI_IFRAME_MASK, align 4
  %23 = call i32 @HDMI_IFRAME_CFG_DI_N(i32 %22, i32 2)
  %24 = and i32 %21, %23
  %25 = ashr i32 %24, 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @DBGFS_PRINT_STR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = call i32 @seq_puts(%struct.seq_file* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @HDMI_IFRAME_MASK, align 4
  %35 = call i32 @HDMI_IFRAME_CFG_DI_N(i32 %34, i32 3)
  %36 = and i32 %33, %35
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @DBGFS_PRINT_STR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = call i32 @seq_puts(%struct.seq_file* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @HDMI_IFRAME_MASK, align 4
  %47 = call i32 @HDMI_IFRAME_CFG_DI_N(i32 %46, i32 4)
  %48 = and i32 %45, %47
  %49 = ashr i32 %48, 12
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @DBGFS_PRINT_STR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %53)
  %55 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %56 = call i32 @seq_puts(%struct.seq_file* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @HDMI_IFRAME_MASK, align 4
  %59 = call i32 @HDMI_IFRAME_CFG_DI_N(i32 %58, i32 5)
  %60 = and i32 %57, %59
  %61 = ashr i32 %60, 16
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @DBGFS_PRINT_STR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %65)
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = call i32 @seq_puts(%struct.seq_file* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @HDMI_IFRAME_MASK, align 4
  %71 = call i32 @HDMI_IFRAME_CFG_DI_N(i32 %70, i32 6)
  %72 = and i32 %69, %71
  %73 = ashr i32 %72, 20
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i8*], [4 x i8*]* %6, i64 0, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @DBGFS_PRINT_STR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %77)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #2

declare dso_local i32 @HDMI_IFRAME_CFG_DI_N(i32, i32) #2

declare dso_local i32 @DBGFS_PRINT_STR(i8*, i8*) #2

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
