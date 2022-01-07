; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/stats/extr_stats.c_mod_stats_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_stats = type { i32 }
%struct.dc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dal_logger* }
%struct.dal_logger = type { i32 }
%struct.core_stats = type { i32, i32, i32, %struct.stats_event_cache*, %struct.stats_time_cache*, %struct.dc* }
%struct.stats_event_cache = type { i32, i32 }
%struct.stats_time_cache = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8* }
%struct.log_entry = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"==Display Caps==\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"==Display Stats==\0A\00", align 1
@.str.2 = private unnamed_addr constant [96 x i8] c"%10s %10s %10s %10s %10s %11s %11s %17s %10s %14s %10s %10s %10s %10s %10s %10s %10s %10s %10s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"render\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"avgRender\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"minWindow\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"midPoint\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"maxWindow\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"vsyncToFlip\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"flipToVsync\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"vsyncsBetweenFlip\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"numFrame\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"insertDuration\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"vTotalMin\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"vTotalMax\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"eventTrigs\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"vSyncTime1\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"vSyncTime2\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"vSyncTime3\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"vSyncTime4\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"vSyncTime5\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"==Event==%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [96 x i8] c"%10u %10u %10u %10u %10u %11u %11u %17u %10u %14u %10u %10u %10u %10u %10u %10u %10u %10u %10u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_stats_dump(%struct.mod_stats* %0) #0 {
  %2 = alloca %struct.mod_stats*, align 8
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dal_logger*, align 8
  %5 = alloca %struct.core_stats*, align 8
  %6 = alloca %struct.stats_time_cache*, align 8
  %7 = alloca %struct.stats_event_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.log_entry, align 4
  %12 = alloca i32, align 4
  store %struct.mod_stats* %0, %struct.mod_stats** %2, align 8
  store %struct.dc* null, %struct.dc** %3, align 8
  store %struct.dal_logger* null, %struct.dal_logger** %4, align 8
  store %struct.core_stats* null, %struct.core_stats** %5, align 8
  store %struct.stats_time_cache* null, %struct.stats_time_cache** %6, align 8
  store %struct.stats_event_cache* null, %struct.stats_event_cache** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.mod_stats*, %struct.mod_stats** %2, align 8
  %14 = icmp eq %struct.mod_stats* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %222

16:                                               ; preds = %1
  %17 = load %struct.mod_stats*, %struct.mod_stats** %2, align 8
  %18 = call %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats* %17)
  store %struct.core_stats* %18, %struct.core_stats** %5, align 8
  %19 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %20 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %19, i32 0, i32 5
  %21 = load %struct.dc*, %struct.dc** %20, align 8
  store %struct.dc* %21, %struct.dc** %3, align 8
  %22 = load %struct.dc*, %struct.dc** %3, align 8
  %23 = getelementptr inbounds %struct.dc, %struct.dc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.dal_logger*, %struct.dal_logger** %25, align 8
  store %struct.dal_logger* %26, %struct.dal_logger** %4, align 8
  %27 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %28 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %27, i32 0, i32 4
  %29 = load %struct.stats_time_cache*, %struct.stats_time_cache** %28, align 8
  store %struct.stats_time_cache* %29, %struct.stats_time_cache** %6, align 8
  %30 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %31 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %30, i32 0, i32 3
  %32 = load %struct.stats_event_cache*, %struct.stats_event_cache** %31, align 8
  store %struct.stats_event_cache* %32, %struct.stats_event_cache** %7, align 8
  %33 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %11, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DISPLAY_STATS_BEGIN(i32 %34)
  %36 = call i32 (i8*, ...) @DISPLAY_STATS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 (i8*, ...) @DISPLAY_STATS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @DISPLAY_STATS(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %215, %16
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %42 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %218

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %48 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.stats_event_cache*, %struct.stats_event_cache** %7, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.stats_event_cache, %struct.stats_event_cache* %53, i64 %55
  %57 = getelementptr inbounds %struct.stats_event_cache, %struct.stats_event_cache* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %52, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %51
  %61 = load %struct.stats_event_cache*, %struct.stats_event_cache** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.stats_event_cache, %struct.stats_event_cache* %61, i64 %63
  %65 = getelementptr inbounds %struct.stats_event_cache, %struct.stats_event_cache* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @DISPLAY_STATS(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %214

70:                                               ; preds = %51, %45
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.core_stats*, %struct.core_stats** %5, align 8
  %73 = getelementptr inbounds %struct.core_stats, %struct.core_stats* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %213

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %78, i64 %80
  %82 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %77, %83
  br i1 %84, label %85, label %213

85:                                               ; preds = %76
  %86 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %86, i64 %88
  %90 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %92, i64 %94
  %96 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %98, i64 %100
  %102 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %101, i32 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %104, i64 %106
  %108 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %110, i64 %112
  %114 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %113, i32 0, i32 5
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %116, i64 %118
  %120 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %119, i32 0, i32 6
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %123 = load i32, i32* %8, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %122, i64 %124
  %126 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %125, i32 0, i32 7
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %128, i64 %130
  %132 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %131, i32 0, i32 8
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %135 = load i32, i32* %8, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %134, i64 %136
  %138 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %137, i32 0, i32 9
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %140, i64 %142
  %144 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %143, i32 0, i32 10
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %147 = load i32, i32* %8, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %146, i64 %148
  %150 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %149, i32 0, i32 11
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %153 = load i32, i32* %8, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %152, i64 %154
  %156 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %155, i32 0, i32 12
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %159 = load i32, i32* %8, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %158, i64 %160
  %162 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %161, i32 0, i32 13
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %165 = load i32, i32* %8, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %164, i64 %166
  %168 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %167, i32 0, i32 14
  %169 = load i8**, i8*** %168, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %173 = load i32, i32* %8, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %172, i64 %174
  %176 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %175, i32 0, i32 14
  %177 = load i8**, i8*** %176, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 1
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %181 = load i32, i32* %8, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %180, i64 %182
  %184 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %183, i32 0, i32 14
  %185 = load i8**, i8*** %184, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 2
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %189 = load i32, i32* %8, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %188, i64 %190
  %192 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %191, i32 0, i32 14
  %193 = load i8**, i8*** %192, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 3
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %197 = load i32, i32* %8, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %196, i64 %198
  %200 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %199, i32 0, i32 14
  %201 = load i8**, i8*** %200, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 4
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.stats_time_cache*, %struct.stats_time_cache** %6, align 8
  %205 = load i32, i32* %8, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %204, i64 %206
  %208 = getelementptr inbounds %struct.stats_time_cache, %struct.stats_time_cache* %207, i32 0, i32 15
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 (i8*, ...) @DISPLAY_STATS(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.23, i64 0, i64 0), i8* %91, i8* %97, i8* %103, i8* %109, i8* %115, i8* %121, i8* %127, i8* %133, i8* %139, i8* %145, i8* %151, i8* %157, i8* %163, i8* %171, i8* %179, i8* %187, i8* %195, i8* %203, i8* %209)
  %211 = load i32, i32* %8, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %85, %76, %70
  br label %214

214:                                              ; preds = %213, %60
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %12, align 4
  br label %39

218:                                              ; preds = %39
  %219 = getelementptr inbounds %struct.log_entry, %struct.log_entry* %11, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @DISPLAY_STATS_END(i32 %220)
  br label %222

222:                                              ; preds = %218, %15
  ret void
}

declare dso_local %struct.core_stats* @MOD_STATS_TO_CORE(%struct.mod_stats*) #1

declare dso_local i32 @DISPLAY_STATS_BEGIN(i32) #1

declare dso_local i32 @DISPLAY_STATS(i8*, ...) #1

declare dso_local i32 @DISPLAY_STATS_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
