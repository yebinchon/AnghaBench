; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cm_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cm_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i64, %struct.iw_cm_id*, i32, %struct.TYPE_2__, %struct.i40iw_cm_node* }
%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)* }
%struct.TYPE_2__ = type { i64 }

@I40IW_SEND_RESET_EVENT = common dso_local global i32 0, align 4
@I40IW_CM_STATE_CLOSED = common dso_local global i8* null, align 8
@I40IW_CM_STATE_LISTENER_DESTROYED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"send reset failed\0A\00", align 1
@IW_CM_EVENT_CONNECT_REPLY = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@I40IW_CM_STATE_CLOSING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_cm_node*, i8*, i32)* @i40iw_cm_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_cm_reject(%struct.i40iw_cm_node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_cm_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iw_cm_id*, align 8
  %12 = alloca %struct.i40iw_cm_node*, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %14 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %13, i32 0, i32 1
  %15 = load %struct.iw_cm_id*, %struct.iw_cm_id** %14, align 8
  store %struct.iw_cm_id* %15, %struct.iw_cm_id** %11, align 8
  %16 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %17 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %16, i32 0, i32 4
  %18 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %17, align 8
  store %struct.i40iw_cm_node* %18, %struct.i40iw_cm_node** %12, align 8
  %19 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %20 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %122

26:                                               ; preds = %3
  %27 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %28 = call i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node* %27)
  %29 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %30 = icmp ne %struct.i40iw_cm_node* %29, null
  br i1 %30, label %82, label %31

31:                                               ; preds = %26
  %32 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %33 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %32, i32 0, i32 2
  %34 = call i32 @atomic_add_return(i32 1, i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @I40IW_SEND_RESET_EVENT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load i8*, i8** @I40IW_CM_STATE_CLOSED, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %42 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %44 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %43)
  br label %81

45:                                               ; preds = %31
  %46 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %47 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @I40IW_CM_STATE_LISTENER_DESTROYED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %53 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %52)
  br label %80

54:                                               ; preds = %45
  %55 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @i40iw_send_mpa_reject(%struct.i40iw_cm_node* %55, i8* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load i8*, i8** @I40IW_CM_STATE_CLOSED, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %65 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %67 = call i32 @i40iw_send_reset(%struct.i40iw_cm_node* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %61
  br label %79

73:                                               ; preds = %54
  %74 = load %struct.iw_cm_id*, %struct.iw_cm_id** %11, align 8
  %75 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %74, i32 0, i32 1
  %76 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %75, align 8
  %77 = load %struct.iw_cm_id*, %struct.iw_cm_id** %11, align 8
  %78 = call i32 %76(%struct.iw_cm_id* %77)
  br label %79

79:                                               ; preds = %73, %72
  br label %80

80:                                               ; preds = %79, %51
  br label %81

81:                                               ; preds = %80, %38
  br label %120

82:                                               ; preds = %26
  %83 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %84 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %83, i32 0, i32 1
  store %struct.iw_cm_id* null, %struct.iw_cm_id** %84, align 8
  %85 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %86 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @I40IW_CM_STATE_LISTENER_DESTROYED, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %92 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %91)
  %93 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %94 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %93)
  br label %119

95:                                               ; preds = %82
  %96 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %97 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %98 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %97, i32 0, i32 1
  %99 = load %struct.iw_cm_id*, %struct.iw_cm_id** %98, align 8
  %100 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %101 = load i32, i32* @ECONNREFUSED, align 4
  %102 = sub nsw i32 0, %101
  %103 = call i32 @i40iw_send_cm_event(%struct.i40iw_cm_node* %96, %struct.iw_cm_id* %99, i32 %100, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  %105 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %104)
  %106 = load i64, i64* @I40IW_CM_STATE_CLOSING, align 8
  %107 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %108 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %110 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %109, i32 0, i32 1
  %111 = load %struct.iw_cm_id*, %struct.iw_cm_id** %110, align 8
  store %struct.iw_cm_id* %111, %struct.iw_cm_id** %11, align 8
  %112 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %113 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %112)
  %114 = load %struct.iw_cm_id*, %struct.iw_cm_id** %11, align 8
  %115 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %114, i32 0, i32 0
  %116 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %115, align 8
  %117 = load %struct.iw_cm_id*, %struct.iw_cm_id** %11, align 8
  %118 = call i32 %116(%struct.iw_cm_id* %117)
  br label %119

119:                                              ; preds = %95, %90
  br label %120

120:                                              ; preds = %119, %81
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %24
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_send_mpa_reject(%struct.i40iw_cm_node*, i8*, i32) #1

declare dso_local i32 @i40iw_send_reset(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

declare dso_local i32 @i40iw_send_cm_event(%struct.i40iw_cm_node*, %struct.iw_cm_id*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
