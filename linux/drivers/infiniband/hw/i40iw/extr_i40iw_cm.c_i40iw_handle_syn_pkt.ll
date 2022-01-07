; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_handle_syn_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_handle_syn_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i40iw_puda_buf = type { i64 }
%struct.tcphdr = type { i32, i32 }
%struct.i40iw_cm_info = type { i32 }

@I40IW_CM_STATE_SYN_RCVD = common dso_local global i32 0, align 4
@I40IW_QHASH_TYPE_TCP_ESTABLISHED = common dso_local global i32 0, align 4
@I40IW_QHASH_MANAGE_TYPE_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*, %struct.i40iw_puda_buf*)* @i40iw_handle_syn_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_handle_syn_pkt(%struct.i40iw_cm_node* %0, %struct.i40iw_puda_buf* %1) #0 {
  %3 = alloca %struct.i40iw_cm_node*, align 8
  %4 = alloca %struct.i40iw_puda_buf*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40iw_cm_info, align 4
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %3, align 8
  store %struct.i40iw_puda_buf* %1, %struct.i40iw_puda_buf** %4, align 8
  %10 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %11 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.tcphdr*
  store %struct.tcphdr* %13, %struct.tcphdr** %5, align 8
  %14 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %15 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = sub i64 %18, 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %22 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohl(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %26 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %99 [
    i32 129, label %28
    i32 131, label %28
    i32 133, label %31
    i32 139, label %90
    i32 130, label %98
    i32 137, label %98
    i32 136, label %98
    i32 135, label %98
    i32 132, label %98
    i32 134, label %98
    i32 138, label %98
    i32 128, label %98
  ]

28:                                               ; preds = %2, %2
  %29 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %30 = call i32 @i40iw_active_open_err(%struct.i40iw_cm_node* %29, i32 1)
  br label %100

31:                                               ; preds = %2
  %32 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %33 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %32, i32 0, i32 5
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @atomic_read(i32* %35)
  %37 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %38 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %37, i32 0, i32 5
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %36, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %45 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %44, i32 0, i32 7
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %51 = call i32 @i40iw_passive_open_err(%struct.i40iw_cm_node* %50, i32 0)
  br label %100

52:                                               ; preds = %31
  %53 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %54 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @i40iw_handle_tcp_options(%struct.i40iw_cm_node* %53, %struct.tcphdr* %54, i32 %55, i32 1)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %61 = call i32 @i40iw_passive_open_err(%struct.i40iw_cm_node* %60, i32 0)
  br label %100

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  %65 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %66 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %69 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %71 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %70, i32 0, i32 5
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = call i32 @atomic_inc(i32* %73)
  %75 = load i32, i32* @I40IW_CM_STATE_SYN_RCVD, align 4
  %76 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %77 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %79 = call i32 @i40iw_get_addr_info(%struct.i40iw_cm_node* %78, %struct.i40iw_cm_info* %9)
  %80 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %81 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @I40IW_QHASH_TYPE_TCP_ESTABLISHED, align 4
  %84 = load i32, i32* @I40IW_QHASH_MANAGE_TYPE_ADD, align 4
  %85 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %86 = bitcast %struct.i40iw_cm_node* %85 to i8*
  %87 = call i32 @i40iw_manage_qhash(i32 %82, %struct.i40iw_cm_info* %9, i32 %83, i32 %84, i8* %86, i32 0)
  store i32 %87, i32* %6, align 4
  %88 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %89 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %88, i32 0, i32 2
  store i32 1, i32* %89, align 8
  br label %100

90:                                               ; preds = %2
  %91 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %92 = call i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node* %91)
  %93 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %94 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %93, i32 0, i32 3
  %95 = call i32 @atomic_inc(i32* %94)
  %96 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %97 = call i32 @i40iw_send_reset(%struct.i40iw_cm_node* %96)
  br label %100

98:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  br label %99

99:                                               ; preds = %2, %98
  br label %100

100:                                              ; preds = %99, %90, %62, %59, %43, %28
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @i40iw_active_open_err(%struct.i40iw_cm_node*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @i40iw_passive_open_err(%struct.i40iw_cm_node*, i32) #1

declare dso_local i32 @i40iw_handle_tcp_options(%struct.i40iw_cm_node*, %struct.tcphdr*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @i40iw_get_addr_info(%struct.i40iw_cm_node*, %struct.i40iw_cm_info*) #1

declare dso_local i32 @i40iw_manage_qhash(i32, %struct.i40iw_cm_info*, i32, i32, i8*, i32) #1

declare dso_local i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_send_reset(%struct.i40iw_cm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
