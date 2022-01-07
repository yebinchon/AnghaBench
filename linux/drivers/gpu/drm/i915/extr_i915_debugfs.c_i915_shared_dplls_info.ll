; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_shared_dplls_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_shared_dplls_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drm_i915_private = type { i32, %struct.intel_shared_dpll*, %struct.drm_device }
%struct.intel_shared_dpll = type { %struct.TYPE_6__, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"DPLL%i: %s, id: %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c" crtc_mask: 0x%08x, active: 0x%x, on: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c" tracked hardware state:\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c" dpll:    0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c" dpll_md: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c" fp0:     0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c" fp1:     0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c" wrpll:   0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c" cfgcr0:  0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c" cfgcr1:  0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c" mg_refclkin_ctl:        0x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c" mg_clktop2_coreclkctl1: 0x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c" mg_clktop2_hsclkctl:    0x%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c" mg_pll_div0:  0x%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c" mg_pll_div1:  0x%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c" mg_pll_lf:    0x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c" mg_pll_frac_lock: 0x%08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c" mg_pll_ssc:   0x%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c" mg_pll_bias:  0x%08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c" mg_pll_tdc_coldst_bias: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_shared_dplls_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_shared_dplls_info(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_shared_dpll*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @node_to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 2
  store %struct.drm_device* %14, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = call i32 @drm_modeset_lock_all(%struct.drm_device* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %177, %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %180

23:                                               ; preds = %17
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 1
  %26 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %26, i64 %28
  store %struct.intel_shared_dpll* %29, %struct.intel_shared_dpll** %8, align 8
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %33 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %38 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %36, i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %45 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %49 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %52 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @yesno(i32 %53)
  %55 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50, i32 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %60 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 16
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %67 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 15
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %74 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 14
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %80 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %81 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  %86 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %87 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %88 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 12
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  %93 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %94 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %95 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 11
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %98)
  %100 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %101 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %102 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %105)
  %107 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %108 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %109 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %112)
  %114 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %115 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %116 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  %121 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %122 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %123 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %126)
  %128 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %129 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %130 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %133)
  %135 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %136 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %137 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %140)
  %142 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %143 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %144 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %147)
  %149 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %150 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %151 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %154)
  %156 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %157 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %158 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %156, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %161)
  %163 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %164 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %165 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 %168)
  %170 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %171 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %172 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %170, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %23
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %17

180:                                              ; preds = %17
  %181 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %182 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %181)
  ret i32 0
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @yesno(i32) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
