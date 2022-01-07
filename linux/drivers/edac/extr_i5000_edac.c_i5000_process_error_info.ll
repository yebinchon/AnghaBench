; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5000_edac.c_i5000_process_error_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5000_edac.c_i5000_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.i5000_error_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.i5000_error_info*, i32)* @i5000_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5000_process_error_info(%struct.mem_ctl_info* %0, %struct.i5000_error_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.i5000_error_info*, align 8
  %6 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.i5000_error_info* %1, %struct.i5000_error_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %8 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @i5000_process_fatal_error_info(%struct.mem_ctl_info* %7, %struct.i5000_error_info* %8, i32 %9)
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %12 = load %struct.i5000_error_info*, %struct.i5000_error_info** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @i5000_process_nonfatal_error_info(%struct.mem_ctl_info* %11, %struct.i5000_error_info* %12, i32 %13)
  ret void
}

declare dso_local i32 @i5000_process_fatal_error_info(%struct.mem_ctl_info*, %struct.i5000_error_info*, i32) #1

declare dso_local i32 @i5000_process_nonfatal_error_info(%struct.mem_ctl_info*, %struct.i5000_error_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
