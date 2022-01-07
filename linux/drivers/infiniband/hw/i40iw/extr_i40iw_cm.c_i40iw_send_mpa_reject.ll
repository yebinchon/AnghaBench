; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_send_mpa_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_send_mpa_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i40iw_puda_buf = type { i32 }
%struct.i40iw_kmem_info = type { i32, i8* }

@MPA_KEY_REPLY = common dso_local global i32 0, align 4
@IETF_MPA_FLAGS_REJECT = common dso_local global i32 0, align 4
@SET_ACK = common dso_local global i32 0, align 4
@SET_FIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"no sqbuf\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@I40IW_CM_STATE_FIN_WAIT1 = common dso_local global i32 0, align 4
@I40IW_TIMER_TYPE_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_cm_node*, i8*, i32)* @i40iw_send_mpa_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_send_mpa_reject(%struct.i40iw_cm_node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_cm_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40iw_puda_buf*, align 8
  %9 = alloca %struct.i40iw_kmem_info, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %11 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %10, i32 0, i32 2
  %12 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %13 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %16 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %17 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %16, i32 0, i32 1
  %18 = load i32, i32* @MPA_KEY_REPLY, align 4
  %19 = call i32 @i40iw_cm_build_mpa_frame(%struct.i40iw_cm_node* %15, %struct.TYPE_5__* %17, i32 %18)
  %20 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %21 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @IETF_MPA_FLAGS_REJECT, align 4
  %24 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %25 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds %struct.i40iw_kmem_info, %struct.i40iw_kmem_info* %9, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds %struct.i40iw_kmem_info, %struct.i40iw_kmem_info* %9, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %34 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %35 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %34, i32 0, i32 1
  %36 = load i32, i32* @SET_ACK, align 4
  %37 = load i32, i32* @SET_FIN, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.i40iw_puda_buf* @i40iw_form_cm_frame(%struct.i40iw_cm_node* %33, i32* null, %struct.TYPE_5__* %35, %struct.i40iw_kmem_info* %9, i32 %38)
  store %struct.i40iw_puda_buf* %39, %struct.i40iw_puda_buf** %8, align 8
  %40 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %8, align 8
  %41 = icmp ne %struct.i40iw_puda_buf* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %3
  %43 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %54

46:                                               ; preds = %3
  %47 = load i32, i32* @I40IW_CM_STATE_FIN_WAIT1, align 4
  %48 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %49 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %51 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %8, align 8
  %52 = load i32, i32* @I40IW_TIMER_TYPE_SEND, align 4
  %53 = call i32 @i40iw_schedule_cm_timer(%struct.i40iw_cm_node* %50, %struct.i40iw_puda_buf* %51, i32 %52, i32 1, i32 0)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %46, %42
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @i40iw_cm_build_mpa_frame(%struct.i40iw_cm_node*, %struct.TYPE_5__*, i32) #1

declare dso_local %struct.i40iw_puda_buf* @i40iw_form_cm_frame(%struct.i40iw_cm_node*, i32*, %struct.TYPE_5__*, %struct.i40iw_kmem_info*, i32) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

declare dso_local i32 @i40iw_schedule_cm_timer(%struct.i40iw_cm_node*, %struct.i40iw_puda_buf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
