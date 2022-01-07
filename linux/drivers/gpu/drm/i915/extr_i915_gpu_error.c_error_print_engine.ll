; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_error_print_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_error_print_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_error_state_buf = type { i32 }
%struct.drm_i915_error_engine = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32*, %struct.TYPE_6__, i64, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s command stream:\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"  IDLE?: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"  START: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"  HEAD:  0x%08x [0x%08x]\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"  TAIL:  0x%08x [0x%08x, 0x%08x]\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"  CTL:   0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"  MODE:  0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"  HWS:   0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"  ACTHD: 0x%08x %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"  IPEIR: 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"  IPEHR: 0x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"  batch: [0x%08x_%08x, 0x%08x_%08x]\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"  BBADDR: 0x%08x_%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"  BB_STATE: 0x%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"  INSTPS: 0x%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"  INSTPM: 0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"  FADDR: 0x%08x %08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"  RC PSMI: 0x%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"  FAULT_REG: 0x%08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"  GFX_MODE: 0x%08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"  PDP%d: 0x%016llx\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"  PP_DIR_BASE: 0x%08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"  ring->head: 0x%08x\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"  ring->tail: 0x%08x\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"  hangcheck timestamp: %dms (%lu%s)\0A\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"; epoch\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"  engine reset count: %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"  ELSP[%d]:\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"  Active context: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_error_state_buf*, %struct.drm_i915_error_engine*, i64)* @error_print_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_print_engine(%struct.drm_i915_error_state_buf* %0, %struct.drm_i915_error_engine* %1, i64 %2) #0 {
  %4 = alloca %struct.drm_i915_error_state_buf*, align 8
  %5 = alloca %struct.drm_i915_error_engine*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.drm_i915_error_state_buf* %0, %struct.drm_i915_error_state_buf** %4, align 8
  store %struct.drm_i915_error_engine* %1, %struct.drm_i915_error_engine** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %12 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %13 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %12, i32 0, i32 29
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %19 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %20 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %19, i32 0, i32 28
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @yesno(i32 %21)
  %23 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %25 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %26 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %30 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %31 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %30, i32 0, i32 27
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %34 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %33, i32 0, i32 26
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %38 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %39 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %38, i32 0, i32 25
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %42 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %41, i32 0, i32 24
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %45 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %44, i32 0, i32 23
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %40, i32 %43, i32 %46)
  %48 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %49 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %50 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  %53 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %54 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %55 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %59 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %60 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %64 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %65 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = ashr i32 %66, 32
  %68 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %69 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %63, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %73 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %74 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %75)
  %77 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %78 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %79 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %80)
  %82 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %83 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %84 = call i32 @error_print_instdone(%struct.drm_i915_error_state_buf* %82, %struct.drm_i915_error_engine* %83)
  %85 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %86 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %85, i32 0, i32 22
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = icmp ne %struct.TYPE_5__* %87, null
  br i1 %88, label %89, label %112

89:                                               ; preds = %3
  %90 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %91 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %90, i32 0, i32 22
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %97 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %96, i32 0, i32 22
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %95, %100
  store i64 %101, i64* %9, align 8
  %102 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @upper_32_bits(i64 %103)
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @lower_32_bits(i64 %105)
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @upper_32_bits(i64 %107)
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @lower_32_bits(i64 %109)
  %111 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %104, i32 %106, i32 %108, i32 %110)
  br label %112

112:                                              ; preds = %89, %3
  %113 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %114 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @INTEL_GEN(i32 %115)
  %117 = icmp sge i32 %116, 4
  br i1 %117, label %118, label %138

118:                                              ; preds = %112
  %119 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %120 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %121 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 32
  %124 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %125 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %123, i32 %126)
  %128 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %129 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %130 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i32 %131)
  %133 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %134 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %135 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %134, i32 0, i32 9
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %133, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %118, %112
  %139 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %140 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %141 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %139, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %142)
  %144 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %145 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %146 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %145, i32 0, i32 21
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @upper_32_bits(i64 %147)
  %149 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %150 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %149, i32 0, i32 21
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @lower_32_bits(i64 %151)
  %153 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %148, i32 %152)
  %154 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %155 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @INTEL_GEN(i32 %156)
  %158 = icmp sge i32 %157, 6
  br i1 %158, label %159, label %170

159:                                              ; preds = %138
  %160 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %161 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %162 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %161, i32 0, i32 11
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %163)
  %165 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %166 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %167 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %166, i32 0, i32 12
  %168 = load i32, i32* %167, align 8
  %169 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %165, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %159, %138
  %171 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %172 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @HAS_PPGTT(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %216

176:                                              ; preds = %170
  %177 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %178 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %179 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %178, i32 0, i32 20
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %177, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %181)
  %183 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %184 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @INTEL_GEN(i32 %185)
  %187 = icmp sge i32 %186, 8
  br i1 %187, label %188, label %208

188:                                              ; preds = %176
  store i32 0, i32* %10, align 4
  br label %189

189:                                              ; preds = %204, %188
  %190 = load i32, i32* %10, align 4
  %191 = icmp slt i32 %190, 4
  br i1 %191, label %192, label %207

192:                                              ; preds = %189
  %193 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %196 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %195, i32 0, i32 20
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %193, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %194, i32 %202)
  br label %204

204:                                              ; preds = %192
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %189

207:                                              ; preds = %189
  br label %215

208:                                              ; preds = %176
  %209 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %210 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %211 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %210, i32 0, i32 20
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %209, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %208, %207
  br label %216

216:                                              ; preds = %215, %170
  %217 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %218 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %219 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %218, i32 0, i32 13
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %217, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i32 %220)
  %222 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %223 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %224 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %223, i32 0, i32 14
  %225 = load i32, i32* %224, align 8
  %226 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %222, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i32 %225)
  %227 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %228 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %229 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %228, i32 0, i32 15
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* %6, align 8
  %232 = sub i64 %230, %231
  %233 = call i32 @jiffies_to_msecs(i64 %232)
  %234 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %235 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %234, i32 0, i32 15
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %238 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %237, i32 0, i32 15
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* %6, align 8
  %241 = icmp eq i64 %239, %240
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0)
  %244 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %227, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i32 %233, i64 %236, i8* %243)
  %245 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %246 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %247 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %246, i32 0, i32 16
  %248 = load i32, i32* %247, align 8
  %249 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %245, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i32 %248)
  store i32 0, i32* %7, align 4
  br label %250

250:                                              ; preds = %269, %216
  %251 = load i32, i32* %7, align 4
  %252 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %253 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %252, i32 0, i32 17
  %254 = load i32, i32* %253, align 4
  %255 = icmp slt i32 %251, %254
  br i1 %255, label %256, label %272

256:                                              ; preds = %250
  %257 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %258 = load i32, i32* %7, align 4
  %259 = call i32 (%struct.drm_i915_error_state_buf*, i8*, i32, ...) @err_printf(%struct.drm_i915_error_state_buf* %257, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 %258)
  %260 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %261 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %262 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %261, i32 0, i32 19
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i64, i64* %6, align 8
  %268 = call i32 @error_print_request(%struct.drm_i915_error_state_buf* %260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i32* %266, i64 %267)
  br label %269

269:                                              ; preds = %256
  %270 = load i32, i32* %7, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %7, align 4
  br label %250

272:                                              ; preds = %250
  %273 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %4, align 8
  %274 = load %struct.drm_i915_error_engine*, %struct.drm_i915_error_engine** %5, align 8
  %275 = getelementptr inbounds %struct.drm_i915_error_engine, %struct.drm_i915_error_engine* %274, i32 0, i32 18
  %276 = call i32 @error_print_context(%struct.drm_i915_error_state_buf* %273, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i32* %275)
  ret void
}

declare dso_local i32 @err_printf(%struct.drm_i915_error_state_buf*, i8*, i32, ...) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @error_print_instdone(%struct.drm_i915_error_state_buf*, %struct.drm_i915_error_engine*) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i64 @HAS_PPGTT(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @error_print_request(%struct.drm_i915_error_state_buf*, i8*, i32*, i64) #1

declare dso_local i32 @error_print_context(%struct.drm_i915_error_state_buf*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
