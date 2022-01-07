; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_tvout.c_tvout_dbg_vip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_tvout.c_tvout_dbg_vip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"Y_G\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Cb_B\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Cr_R\00", align 1
@__const.tvout_dbg_vip.reorder = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"EAV/SAV\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Limited range RGB/Y\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Limited range Cb/Cr\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"decided by register\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"8-bit\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"10-bit\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"12-bit\00", align 1
@__const.tvout_dbg_vip.round = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str.11 = private unnamed_addr constant [28 x i8] c"Main (color matrix enabled)\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Main (color matrix by-passed)\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Aux (color matrix enabled)\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Aux (color matrix by-passed)\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"Force value\00", align 1
@__const.tvout_dbg_vip.input_sel = private unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0)], align 16
@TVO_VIP_REORDER_MASK = common dso_local global i32 0, align 4
@TVO_VIP_REORDER_R_SHIFT = common dso_local global i32 0, align 4
@TVO_VIP_REORDER_G_SHIFT = common dso_local global i32 0, align 4
@TVO_VIP_REORDER_B_SHIFT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [28 x i8] c"%-24s %s->%s %s->%s %s->%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"Reorder:\00", align 1
@TVO_VIP_REORDER_CR_R_SEL = common dso_local global i64 0, align 8
@TVO_VIP_REORDER_Y_G_SEL = common dso_local global i64 0, align 8
@TVO_VIP_REORDER_CB_B_SEL = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"\09\09\09\09\09\00", align 1
@TVO_VIP_CLIP_MASK = common dso_local global i32 0, align 4
@TVO_VIP_CLIP_SHIFT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"%-24s %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"Clipping:\00", align 1
@TVO_VIP_RND_MASK = common dso_local global i32 0, align 4
@TVO_VIP_RND_SHIFT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [46 x i8] c"%-24s input data rounded to %s per component\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Round:\00", align 1
@TVO_VIP_SEL_INPUT_MASK = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"%-24s %s\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Input selection:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32)* @tvout_dbg_vip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tvout_dbg_vip(%struct.seq_file* %0, i32 %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i8*], align 16
  %11 = alloca [5 x i8*], align 16
  %12 = alloca [3 x i8*], align 16
  %13 = alloca [16 x i8*], align 16
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = bitcast [3 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([3 x i8*]* @__const.tvout_dbg_vip.reorder to i8*), i64 24, i1 false)
  %15 = bitcast [5 x i8*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 40, i1 false)
  %16 = bitcast i8* %15 to [5 x i8*]*
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8** %18, align 8
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8** %19, align 16
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8** %20, align 8
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %16, i32 0, i32 4
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8** %21, align 16
  %22 = bitcast [3 x i8*]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([3 x i8*]* @__const.tvout_dbg_vip.round to i8*), i64 24, i1 false)
  %23 = bitcast [16 x i8*]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([16 x i8*]* @__const.tvout_dbg_vip.input_sel to i8*), i64 128, i1 false)
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = call i32 @seq_putc(%struct.seq_file* %24, i8 signext 9)
  %26 = load i32, i32* @TVO_VIP_REORDER_MASK, align 4
  %27 = load i32, i32* @TVO_VIP_REORDER_R_SHIFT, align 4
  %28 = shl i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @TVO_VIP_REORDER_R_SHIFT, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @TVO_VIP_REORDER_MASK, align 4
  %35 = load i32, i32* @TVO_VIP_REORDER_G_SHIFT, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @TVO_VIP_REORDER_G_SHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @TVO_VIP_REORDER_MASK, align 4
  %43 = load i32, i32* @TVO_VIP_REORDER_B_SHIFT, align 4
  %44 = shl i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @TVO_VIP_REORDER_B_SHIFT, align 4
  %49 = ashr i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* @TVO_VIP_REORDER_CR_R_SEL, align 8
  %56 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* @TVO_VIP_REORDER_Y_G_SEL, align 8
  %63 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* @TVO_VIP_REORDER_CB_B_SEL, align 8
  %70 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* %54, i8* %57, i8* %61, i8* %64, i8* %68, i8* %71)
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = call i32 @seq_puts(%struct.seq_file* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %75 = load i32, i32* @TVO_VIP_CLIP_MASK, align 4
  %76 = load i32, i32* @TVO_VIP_CLIP_SHIFT, align 4
  %77 = shl i32 %75, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @TVO_VIP_CLIP_SHIFT, align 4
  %82 = ashr i32 %80, %81
  store i32 %82, i32* %8, align 4
  %83 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [5 x i8*], [5 x i8*]* %11, i64 0, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8* %87)
  %89 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %90 = call i32 @seq_puts(%struct.seq_file* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %91 = load i32, i32* @TVO_VIP_RND_MASK, align 4
  %92 = load i32, i32* @TVO_VIP_RND_SHIFT, align 4
  %93 = shl i32 %91, %92
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @TVO_VIP_RND_SHIFT, align 4
  %98 = ashr i32 %96, %97
  store i32 %98, i32* %8, align 4
  %99 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [3 x i8*], [3 x i8*]* %12, i64 0, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %99, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* %103)
  %105 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %106 = call i32 @seq_puts(%struct.seq_file* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0))
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @TVO_VIP_SEL_INPUT_MASK, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %8, align 4
  %110 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [16 x i8*], [16 x i8*]* %13, i64 0, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i8* %114)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
