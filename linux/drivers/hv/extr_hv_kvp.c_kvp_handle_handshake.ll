; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_kvp.c_kvp_handle_handshake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_kvp.c_kvp_handle_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_kvp_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@dm_reg_value = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"KVP: IP injection functionality not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"KVP: Upgrade the KVP daemon\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"KVP: incompatible daemon\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"KVP: KVP version: %d, Daemon version: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"KVP: userspace daemon ver. %d connected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_kvp_msg*)* @kvp_handle_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_handle_handshake(%struct.hv_kvp_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_kvp_msg*, align 8
  store %struct.hv_kvp_msg* %0, %struct.hv_kvp_msg** %3, align 8
  %4 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %5 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %12 [
    i32 129, label %8
    i32 128, label %11
  ]

8:                                                ; preds = %1
  store i32 129, i32* @dm_reg_value, align 4
  %9 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %21

11:                                               ; preds = %1
  store i32 128, i32* @dm_reg_value, align 4
  br label %21

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %14 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %15 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 128, i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %11, %8
  %22 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %23 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @dm_reg_value, align 4
  %28 = call i32 @kvp_register(i32 %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %21, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @kvp_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
