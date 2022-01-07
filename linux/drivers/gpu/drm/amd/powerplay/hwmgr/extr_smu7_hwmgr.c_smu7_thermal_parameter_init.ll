; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_thermal_parameter_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_thermal_parameter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i8*, i8*, i8*, i64 }
%struct.pp_atomctrl_gpio_pin_assignment = type { i32 }
%struct.phm_ppt_v1_information = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }

@VDDC_PCC_GPIO_PINID = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@ixCNB_PWRMGT_CNTL = common dso_local global i32 0, align 4
@CNB_PWRMGT_CNTL = common dso_local global i32 0, align 4
@GNB_SLOW_MODE = common dso_local global i32 0, align 4
@GNB_SLOW = common dso_local global i32 0, align 4
@FORCE_NB_PS1 = common dso_local global i32 0, align 4
@DPM_ENABLED = common dso_local global i32 0, align 4
@PP_OD_FUZZY_FAN_CONTROL_MASK = common dso_local global i32 0, align 4
@PHM_PlatformCaps_ODFuzzyFanControlSupport = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_thermal_parameter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_thermal_parameter_init(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.pp_atomctrl_gpio_pin_assignment, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.phm_ppt_v1_information*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %7 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %8 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %10, %struct.phm_ppt_v1_information** %6, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %12 = load i32, i32* @VDDC_PCC_GPIO_PINID, align 4
  %13 = call i64 @atomctrl_get_pp_assign_pin(%struct.pp_hwmgr* %11, i32 %12, %struct.pp_atomctrl_gpio_pin_assignment* %4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %1
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %20 = load i32, i32* @ixCNB_PWRMGT_CNTL, align 4
  %21 = call i32 @cgs_read_ind_register(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = getelementptr inbounds %struct.pp_atomctrl_gpio_pin_assignment, %struct.pp_atomctrl_gpio_pin_assignment* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %49 [
    i32 0, label %24
    i32 1, label %29
    i32 2, label %34
    i32 3, label %39
    i32 4, label %44
  ]

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CNB_PWRMGT_CNTL, align 4
  %27 = load i32, i32* @GNB_SLOW_MODE, align 4
  %28 = call i32 @PHM_SET_FIELD(i32 %25, i32 %26, i32 %27, i32 1)
  store i32 %28, i32* %5, align 4
  br label %50

29:                                               ; preds = %15
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @CNB_PWRMGT_CNTL, align 4
  %32 = load i32, i32* @GNB_SLOW_MODE, align 4
  %33 = call i32 @PHM_SET_FIELD(i32 %30, i32 %31, i32 %32, i32 2)
  store i32 %33, i32* %5, align 4
  br label %50

34:                                               ; preds = %15
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @CNB_PWRMGT_CNTL, align 4
  %37 = load i32, i32* @GNB_SLOW, align 4
  %38 = call i32 @PHM_SET_FIELD(i32 %35, i32 %36, i32 %37, i32 1)
  store i32 %38, i32* %5, align 4
  br label %50

39:                                               ; preds = %15
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @CNB_PWRMGT_CNTL, align 4
  %42 = load i32, i32* @FORCE_NB_PS1, align 4
  %43 = call i32 @PHM_SET_FIELD(i32 %40, i32 %41, i32 %42, i32 1)
  store i32 %43, i32* %5, align 4
  br label %50

44:                                               ; preds = %15
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @CNB_PWRMGT_CNTL, align 4
  %47 = load i32, i32* @DPM_ENABLED, align 4
  %48 = call i32 @PHM_SET_FIELD(i32 %45, i32 %46, i32 %47, i32 1)
  store i32 %48, i32* %5, align 4
  br label %50

49:                                               ; preds = %15
  br label %50

50:                                               ; preds = %49, %44, %39, %34, %29, %24
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %52 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %55 = load i32, i32* @ixCNB_PWRMGT_CNTL, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @cgs_write_ind_register(i32 %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %1
  %59 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %60 = icmp eq %struct.phm_ppt_v1_information* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %239

62:                                               ; preds = %58
  %63 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %64 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %238

69:                                               ; preds = %62
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %71 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 11
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %238

76:                                               ; preds = %69
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %78 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %84 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 10
  store i8* %82, i8** %86, align 8
  %87 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %88 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %94 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 9
  store i8* %92, i8** %96, align 8
  %97 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %98 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %102 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store i32 100, i32* %104, align 4
  %105 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %106 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %112 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 8
  store i8* %110, i8** %114, align 8
  %115 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %116 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  %119 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %120 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp sge i32 %123, 50
  br i1 %124, label %125, label %132

125:                                              ; preds = %76
  %126 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %127 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %126, i32 0, i32 0
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 50
  br label %133

132:                                              ; preds = %76
  br label %133

133:                                              ; preds = %132, %125
  %134 = phi i32 [ %131, %125 ], [ 0, %132 ]
  %135 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %136 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %135, i32 0, i32 0
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 4
  %139 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %140 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %139, i32 0, i32 0
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %145 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %144, i32 0, i32 0
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  store i32 %143, i32* %147, align 4
  %148 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %149 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %148, i32 0, i32 0
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  store i32 1, i32* %151, align 4
  %152 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %153 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %152, i32 0, i32 0
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 3
  store i32 1, i32* %155, align 4
  %156 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %157 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %162 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 6
  store i64 %160, i64* %164, align 8
  %165 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %166 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %171 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 4
  store i32 %169, i32* %173, align 8
  %174 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %175 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %174, i32 0, i32 0
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %180 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 4
  store i32 %178, i32* %183, align 4
  %184 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %185 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %184, i32 0, i32 0
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %190 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  store i32 %188, i32* %193, align 4
  %194 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %195 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %194, i32 0, i32 0
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %200 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  store i32 %198, i32* %203, align 4
  %204 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %205 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %204, i32 0, i32 0
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %210 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 2
  store i32 %208, i32* %213, align 4
  %214 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %6, align 8
  %215 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %214, i32 0, i32 0
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %220 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 3
  store i32 %218, i32* %223, align 4
  %224 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %225 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @PP_OD_FUZZY_FAN_CONTROL_MASK, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %133
  %231 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %232 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @PHM_PlatformCaps_ODFuzzyFanControlSupport, align 4
  %236 = call i32 @phm_cap_set(i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %230, %133
  br label %238

238:                                              ; preds = %237, %69, %62
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %238, %61
  %240 = load i32, i32* %2, align 4
  ret i32 %240
}

declare dso_local i64 @atomctrl_get_pp_assign_pin(%struct.pp_hwmgr*, i32, %struct.pp_atomctrl_gpio_pin_assignment*) #1

declare dso_local i32 @cgs_read_ind_register(i32, i32, i32) #1

declare dso_local i32 @PHM_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @cgs_write_ind_register(i32, i32, i32, i32) #1

declare dso_local i32 @phm_cap_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
