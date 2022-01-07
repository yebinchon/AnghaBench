; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_send_mpa_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_send_mpa_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.i40iw_puda_buf = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"cm_node == NULL\0A\00", align 1
@MPA_KEY_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"mpa size = %d\0A\00", align 1
@SET_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"sq_buf == NULL\0A\00", align 1
@I40IW_TIMER_TYPE_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_cm_node*)* @i40iw_send_mpa_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_send_mpa_request(%struct.i40iw_cm_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40iw_cm_node*, align 8
  %4 = alloca %struct.i40iw_puda_buf*, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %3, align 8
  %5 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %6 = icmp ne %struct.i40iw_cm_node* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @i40iw_pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %51

9:                                                ; preds = %1
  %10 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %11 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %10, i32 0, i32 2
  %12 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %13 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32* %11, i32** %14, align 8
  %15 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %16 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %17 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %16, i32 0, i32 1
  %18 = load i32, i32* @MPA_KEY_REQUEST, align 4
  %19 = call i32 @i40iw_cm_build_mpa_frame(%struct.i40iw_cm_node* %15, %struct.TYPE_3__* %17, i32 %18)
  %20 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %21 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %24 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %9
  %29 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %30 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, ...) @i40iw_pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i32 -1, i32* %2, align 4
  br label %51

34:                                               ; preds = %9
  %35 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %36 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %37 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %36, i32 0, i32 1
  %38 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %39 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %38, i32 0, i32 0
  %40 = load i32, i32* @SET_ACK, align 4
  %41 = call %struct.i40iw_puda_buf* @i40iw_form_cm_frame(%struct.i40iw_cm_node* %35, i32* null, %struct.TYPE_3__* %37, i32* %39, i32 %40)
  store %struct.i40iw_puda_buf* %41, %struct.i40iw_puda_buf** %4, align 8
  %42 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %43 = icmp ne %struct.i40iw_puda_buf* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %34
  %45 = call i32 (i8*, ...) @i40iw_pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %51

46:                                               ; preds = %34
  %47 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %48 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %49 = load i32, i32* @I40IW_TIMER_TYPE_SEND, align 4
  %50 = call i32 @i40iw_schedule_cm_timer(%struct.i40iw_cm_node* %47, %struct.i40iw_puda_buf* %48, i32 %49, i32 1, i32 0)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %44, %28, %7
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @i40iw_pr_err(i8*, ...) #1

declare dso_local i32 @i40iw_cm_build_mpa_frame(%struct.i40iw_cm_node*, %struct.TYPE_3__*, i32) #1

declare dso_local %struct.i40iw_puda_buf* @i40iw_form_cm_frame(%struct.i40iw_cm_node*, i32*, %struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @i40iw_schedule_cm_timer(%struct.i40iw_cm_node*, %struct.i40iw_puda_buf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
