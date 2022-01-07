; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_hqvdp_dbg_dump_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_hqvdp_dbg_dump_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.sti_hqvdp_cmd = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"\0A\09TOP:\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\0A\09 %-20s 0x%08X\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Config\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"\09Progressive\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"\09Interlaced, top field\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"\09Interlaced, bottom field\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"\09<UNKNOWN>\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"MemFormat\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"CurrentY\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"CurrentC\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"YSrcPitch\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"CSrcPitch\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"InputFrameSize\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\09%dx%d\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"InputViewportSize\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"\0A\09HVSRC:\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"OutputPictureSize\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"ParamCtrl\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"\0A\09 %-20s %s\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"yh_coef\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"ch_coef\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"yv_coef\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"cv_coef\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"\0A\09 %-20s\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"ScaleH\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c" %d/1\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c" 1/%d\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"tScaleV\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"\0A\09CSDI:\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"\0A\09 %-20s 0x%08X\09\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Bypass\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"Deinterlace, directional\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"<UNKNOWN>\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Config2\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"DcdiConfig\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.sti_hqvdp_cmd*)* @hqvdp_dbg_dump_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hqvdp_dbg_dump_cmd(%struct.seq_file* %0, %struct.sti_hqvdp_cmd* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.sti_hqvdp_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.sti_hqvdp_cmd* %1, %struct.sti_hqvdp_cmd** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = call i32 @seq_puts(%struct.seq_file* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %30 [
    i32 128, label %21
    i32 129, label %24
    i32 130, label %27
  ]

21:                                               ; preds = %2
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = call i32 @seq_puts(%struct.seq_file* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = call i32 @seq_puts(%struct.seq_file* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = call i32 @seq_puts(%struct.seq_file* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %33

30:                                               ; preds = %2
  %31 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %32 = call i32 @seq_puts(%struct.seq_file* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %27, %24, %21
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %50)
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %54 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %60 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %62)
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 %68)
  %70 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %71 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %72 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 65535
  %76 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %77 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 16
  %81 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %75, i32 %80)
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %84 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %86)
  %88 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %89 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 65535
  store i32 %92, i32* %5, align 4
  %93 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %94 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 16
  store i32 %97, i32* %6, align 4
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %103 = call i32 @seq_puts(%struct.seq_file* %102, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %104 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %105 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %106 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %108)
  %110 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %111 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 65535
  store i32 %114, i32* %7, align 4
  %115 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %116 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 16
  store i32 %119, i32* %8, align 4
  %120 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %125 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %126 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 %128)
  %130 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %131 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %132 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @hqvdp_dbg_get_lut(i32 %134)
  %136 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %135)
  %137 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %138 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %139 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @hqvdp_dbg_get_lut(i32 %141)
  %143 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 %142)
  %144 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %145 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %146 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @hqvdp_dbg_get_lut(i32 %148)
  %150 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 %149)
  %151 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %152 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %153 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @hqvdp_dbg_get_lut(i32 %155)
  %157 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %151, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i32 %156)
  %158 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %159 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %158, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp sgt i32 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %33
  %164 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* %5, align 4
  %167 = sdiv i32 %165, %166
  %168 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 %167)
  br label %175

169:                                              ; preds = %33
  %170 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* %7, align 4
  %173 = sdiv i32 %171, %172
  %174 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %169, %163
  %176 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %177 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %175
  %182 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %6, align 4
  %185 = sdiv i32 %183, %184
  %186 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 %185)
  br label %193

187:                                              ; preds = %175
  %188 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %8, align 4
  %191 = sdiv i32 %189, %190
  %192 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %188, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 %191)
  br label %193

193:                                              ; preds = %187, %181
  %194 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %195 = call i32 @seq_puts(%struct.seq_file* %194, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  %196 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %197 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %198 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %196, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %200)
  %202 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %203 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  switch i32 %205, label %212 [
    i32 131, label %206
    i32 132, label %209
  ]

206:                                              ; preds = %193
  %207 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %208 = call i32 @seq_puts(%struct.seq_file* %207, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0))
  br label %215

209:                                              ; preds = %193
  %210 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %211 = call i32 @seq_puts(%struct.seq_file* %210, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.31, i64 0, i64 0))
  br label %215

212:                                              ; preds = %193
  %213 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %214 = call i32 @seq_puts(%struct.seq_file* %213, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %209, %206
  %216 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %217 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %218 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %216, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i32 %220)
  %222 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %223 = load %struct.sti_hqvdp_cmd*, %struct.sti_hqvdp_cmd** %4, align 8
  %224 = getelementptr inbounds %struct.sti_hqvdp_cmd, %struct.sti_hqvdp_cmd* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %222, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i32 %226)
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @hqvdp_dbg_get_lut(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
