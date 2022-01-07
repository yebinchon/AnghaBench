; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_hw_print_display_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu8_hwmgr.c_smu8_hw_print_display_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc6_settings = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"New Display Configuration:\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"   cpu_cc6_disable: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"   cpu_pstate_disable: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"   nb_pstate_switch_disable: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"   cpu_pstate_separation_time: %d\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cc6_settings*)* @smu8_hw_print_display_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu8_hw_print_display_cfg(%struct.cc6_settings* %0) #0 {
  %2 = alloca %struct.cc6_settings*, align 8
  store %struct.cc6_settings* %0, %struct.cc6_settings** %2, align 8
  %3 = call i32 (i8*, ...) @PP_DBG_LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.cc6_settings*, %struct.cc6_settings** %2, align 8
  %5 = getelementptr inbounds %struct.cc6_settings, %struct.cc6_settings* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i8*, ...) @PP_DBG_LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = load %struct.cc6_settings*, %struct.cc6_settings** %2, align 8
  %9 = getelementptr inbounds %struct.cc6_settings, %struct.cc6_settings* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @PP_DBG_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load %struct.cc6_settings*, %struct.cc6_settings** %2, align 8
  %13 = getelementptr inbounds %struct.cc6_settings, %struct.cc6_settings* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, ...) @PP_DBG_LOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  %16 = load %struct.cc6_settings*, %struct.cc6_settings** %2, align 8
  %17 = getelementptr inbounds %struct.cc6_settings, %struct.cc6_settings* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @PP_DBG_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  ret void
}

declare dso_local i32 @PP_DBG_LOG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
