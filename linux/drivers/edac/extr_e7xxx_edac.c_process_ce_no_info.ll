; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e7xxx_edac.c_process_ce_no_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e7xxx_edac.c_process_ce_no_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"e7xxx CE log register overflow\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @process_ce_no_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_ce_no_info(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %3 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %5 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %6 = call i32 @edac_mc_handle_error(i32 %4, %struct.mem_ctl_info* %5, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
