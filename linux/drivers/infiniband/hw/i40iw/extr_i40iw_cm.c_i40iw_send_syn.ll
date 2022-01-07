; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_send_syn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_send_syn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.i40iw_puda_buf = type { i32 }
%struct.i40iw_kmem_info = type { i8*, i32 }
%union.all_known_options = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@SET_SYN = common dso_local global i32 0, align 4
@TCP_OPTIONS_PADDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"no cm_node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OPTION_NUMBER_MSS = common dso_local global i32 0, align 4
@OPTION_NUMBER_WINDOW_SCALE = common dso_local global i32 0, align 4
@OPTION_NUMBER_END = common dso_local global i32 0, align 4
@SET_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"no sqbuf\0A\00", align 1
@I40IW_TIMER_TYPE_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_send_syn(%struct.i40iw_cm_node* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_cm_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i40iw_puda_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i40iw_kmem_info, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.all_known_options*, align 8
  %13 = alloca i32, align 4
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i32, i32* @SET_SYN, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @TCP_OPTIONS_PADDING, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 12, %16
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %20 = getelementptr inbounds %struct.i40iw_kmem_info, %struct.i40iw_kmem_info* %10, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %22 = icmp ne %struct.i40iw_cm_node* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %103

27:                                               ; preds = %2
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %19, i64 %29
  %31 = bitcast i8* %30 to %union.all_known_options*
  store %union.all_known_options* %31, %union.all_known_options** %12, align 8
  %32 = load i32, i32* @OPTION_NUMBER_MSS, align 4
  %33 = load %union.all_known_options*, %union.all_known_options** %12, align 8
  %34 = bitcast %union.all_known_options* %33 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load %union.all_known_options*, %union.all_known_options** %12, align 8
  %37 = bitcast %union.all_known_options* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 4, i32* %38, align 4
  %39 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %40 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @htons(i32 %42)
  %44 = load %union.all_known_options*, %union.all_known_options** %12, align 8
  %45 = bitcast %union.all_known_options* %44 to %struct.TYPE_4__*
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 4
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %19, i64 %52
  %54 = bitcast i8* %53 to %union.all_known_options*
  store %union.all_known_options* %54, %union.all_known_options** %12, align 8
  %55 = load i32, i32* @OPTION_NUMBER_WINDOW_SCALE, align 4
  %56 = load %union.all_known_options*, %union.all_known_options** %12, align 8
  %57 = bitcast %union.all_known_options* %56 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 4
  %59 = load %union.all_known_options*, %union.all_known_options** %12, align 8
  %60 = bitcast %union.all_known_options* %59 to %struct.TYPE_5__*
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 4, i32* %61, align 4
  %62 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %63 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %union.all_known_options*, %union.all_known_options** %12, align 8
  %67 = bitcast %union.all_known_options* %66 to %struct.TYPE_5__*
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, 4
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %19, i64 %74
  %76 = bitcast i8* %75 to %union.all_known_options*
  store %union.all_known_options* %76, %union.all_known_options** %12, align 8
  %77 = load i32, i32* @OPTION_NUMBER_END, align 4
  %78 = load %union.all_known_options*, %union.all_known_options** %12, align 8
  %79 = bitcast %union.all_known_options* %78 to i32*
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = load i64, i64* %5, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %27
  %85 = load i32, i32* @SET_ACK, align 4
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %27
  %89 = load i32, i32* %11, align 4
  %90 = getelementptr inbounds %struct.i40iw_kmem_info, %struct.i40iw_kmem_info* %10, i32 0, i32 1
  store i32 %89, i32* %90, align 8
  %91 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call %struct.i40iw_puda_buf* @i40iw_form_cm_frame(%struct.i40iw_cm_node* %91, %struct.i40iw_kmem_info* %10, i32* null, i32* null, i32 %92)
  store %struct.i40iw_puda_buf* %93, %struct.i40iw_puda_buf** %6, align 8
  %94 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %6, align 8
  %95 = icmp ne %struct.i40iw_puda_buf* %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %88
  %97 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %103

98:                                               ; preds = %88
  %99 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %100 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %6, align 8
  %101 = load i32, i32* @I40IW_TIMER_TYPE_SEND, align 4
  %102 = call i32 @i40iw_schedule_cm_timer(%struct.i40iw_cm_node* %99, %struct.i40iw_puda_buf* %100, i32 %101, i32 1, i32 0)
  store i32 %102, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %103

103:                                              ; preds = %98, %96, %23
  %104 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i40iw_pr_err(i8*) #2

declare dso_local i32 @htons(i32) #2

declare dso_local %struct.i40iw_puda_buf* @i40iw_form_cm_frame(%struct.i40iw_cm_node*, %struct.i40iw_kmem_info*, i32*, i32*, i32) #2

declare dso_local i32 @i40iw_schedule_cm_timer(%struct.i40iw_cm_node*, %struct.i40iw_puda_buf*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
