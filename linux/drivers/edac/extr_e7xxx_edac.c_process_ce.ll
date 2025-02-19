; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e7xxx_edac.c_process_ce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e7xxx_edac.c_process_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.e7xxx_error_info = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"e7xxx CE\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.e7xxx_error_info*)* @process_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_ce(%struct.mem_ctl_info* %0, %struct.e7xxx_error_info* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.e7xxx_error_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.e7xxx_error_info* %1, %struct.e7xxx_error_info** %4, align 8
  %10 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %4, align 8
  %12 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 6
  store i32 %15, i32* %6, align 4
  %16 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %4, align 8
  %17 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @e7xxx_find_channel(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %25 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @edac_mc_handle_error(i32 %24, %struct.mem_ctl_info* %25, i32 1, i32 %26, i32 0, i32 %27, i32 %28, i32 %29, i32 -1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @e7xxx_find_channel(i32) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
