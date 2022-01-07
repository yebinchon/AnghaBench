; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_r82600_edac.c_r82600_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_r82600_edac.c_r82600_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.r82600_error_info = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"MC%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @r82600_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r82600_check(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.r82600_error_info, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %4 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %5 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @edac_dbg(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %9 = call i32 @r82600_get_error_info(%struct.mem_ctl_info* %8, %struct.r82600_error_info* %3)
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %11 = call i32 @r82600_process_error_info(%struct.mem_ctl_info* %10, %struct.r82600_error_info* %3, i32 1)
  ret void
}

declare dso_local i32 @edac_dbg(i32, i8*, i32) #1

declare dso_local i32 @r82600_get_error_info(%struct.mem_ctl_info*, %struct.r82600_error_info*) #1

declare dso_local i32 @r82600_process_error_info(%struct.mem_ctl_info*, %struct.r82600_error_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
