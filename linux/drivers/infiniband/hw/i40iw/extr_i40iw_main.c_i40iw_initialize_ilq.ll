; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_initialize_ilq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_initialize_ilq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32 }
%struct.i40iw_puda_rsrc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@I40IW_PUDA_RSRC_TYPE_ILQ = common dso_local global i32 0, align 4
@i40iw_receive_ilq = common dso_local global i32 0, align 4
@i40iw_free_sqbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ilq create fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*)* @i40iw_initialize_ilq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_initialize_ilq(%struct.i40iw_device* %0) #0 {
  %2 = alloca %struct.i40iw_device*, align 8
  %3 = alloca %struct.i40iw_puda_rsrc_info, align 8
  %4 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %2, align 8
  %5 = call i32 @memset(%struct.i40iw_puda_rsrc_info* %3, i32 0, i32 56)
  %6 = load i32, i32* @I40IW_PUDA_RSRC_TYPE_ILQ, align 4
  %7 = getelementptr inbounds %struct.i40iw_puda_rsrc_info, %struct.i40iw_puda_rsrc_info* %3, i32 0, i32 10
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.i40iw_puda_rsrc_info, %struct.i40iw_puda_rsrc_info* %3, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = getelementptr inbounds %struct.i40iw_puda_rsrc_info, %struct.i40iw_puda_rsrc_info* %3, i32 0, i32 9
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.i40iw_puda_rsrc_info, %struct.i40iw_puda_rsrc_info* %3, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.i40iw_puda_rsrc_info, %struct.i40iw_puda_rsrc_info* %3, i32 0, i32 2
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds %struct.i40iw_puda_rsrc_info, %struct.i40iw_puda_rsrc_info* %3, i32 0, i32 3
  store i32 8192, i32* %12, align 4
  %13 = getelementptr inbounds %struct.i40iw_puda_rsrc_info, %struct.i40iw_puda_rsrc_info* %3, i32 0, i32 4
  store i32 8192, i32* %13, align 8
  %14 = getelementptr inbounds %struct.i40iw_puda_rsrc_info, %struct.i40iw_puda_rsrc_info* %3, i32 0, i32 5
  store i32 1024, i32* %14, align 4
  %15 = getelementptr inbounds %struct.i40iw_puda_rsrc_info, %struct.i40iw_puda_rsrc_info* %3, i32 0, i32 6
  store i32 16384, i32* %15, align 8
  %16 = load i32, i32* @i40iw_receive_ilq, align 4
  %17 = getelementptr inbounds %struct.i40iw_puda_rsrc_info, %struct.i40iw_puda_rsrc_info* %3, i32 0, i32 8
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @i40iw_free_sqbuf, align 4
  %19 = getelementptr inbounds %struct.i40iw_puda_rsrc_info, %struct.i40iw_puda_rsrc_info* %3, i32 0, i32 7
  store i32 %18, i32* %19, align 4
  %20 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %21 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %20, i32 0, i32 0
  %22 = call i32 @i40iw_puda_create_rsrc(i32* %21, %struct.i40iw_puda_rsrc_info* %3)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %1
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @memset(%struct.i40iw_puda_rsrc_info*, i32, i32) #1

declare dso_local i32 @i40iw_puda_create_rsrc(i32*, %struct.i40iw_puda_rsrc_info*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
