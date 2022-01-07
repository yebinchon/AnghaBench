; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_rm31.c_backside_setup_pid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_rm31.c_backside_setup_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_pid_param = type { i32, i32 }

@backside_fan = common dso_local global i32 0, align 4
@backside_param = common dso_local global %struct.wf_pid_param zeroinitializer, align 4
@backside_pid = common dso_local global i32 0, align 4
@dimms_param = common dso_local global %struct.wf_pid_param zeroinitializer, align 4
@dimms_pid = common dso_local global i32 0, align 4
@backside_tick = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"wf_rm31: Backside control loop started.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @backside_setup_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backside_setup_pid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.wf_pid_param, align 4
  %4 = load i32, i32* @backside_fan, align 4
  %5 = call i32 @wf_control_get_min(i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @backside_fan, align 4
  %7 = call i32 @wf_control_get_max(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = bitcast %struct.wf_pid_param* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.wf_pid_param* @backside_param to i8*), i64 8, i1 false)
  %9 = getelementptr inbounds %struct.wf_pid_param, %struct.wf_pid_param* %3, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @max(i32 %10, i32 %11)
  %13 = getelementptr inbounds %struct.wf_pid_param, %struct.wf_pid_param* %3, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.wf_pid_param, %struct.wf_pid_param* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @min(i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.wf_pid_param, %struct.wf_pid_param* %3, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = call i32 @wf_pid_init(i32* @backside_pid, %struct.wf_pid_param* %3)
  %20 = bitcast %struct.wf_pid_param* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.wf_pid_param* @dimms_param to i8*), i64 8, i1 false)
  %21 = call i32 @wf_pid_init(i32* @dimms_pid, %struct.wf_pid_param* %3)
  store i32 1, i32* @backside_tick, align 4
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wf_control_get_min(i32) #1

declare dso_local i32 @wf_control_get_max(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @wf_pid_init(i32*, %struct.wf_pid_param*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
