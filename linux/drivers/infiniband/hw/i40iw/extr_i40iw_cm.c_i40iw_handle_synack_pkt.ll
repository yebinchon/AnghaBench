; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_handle_synack_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_handle_synack_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32, i8* }
%struct.i40iw_puda_buf = type { i64 }
%struct.tcphdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"check syn fail\0A\00", align 1
@I40IW_DEBUG_CM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cm_node=%p tcp_options failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"cm_node=%p i40iw_send_mpa_request failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*, %struct.i40iw_puda_buf*)* @i40iw_handle_synack_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_handle_synack_pkt(%struct.i40iw_cm_node* %0, %struct.i40iw_puda_buf* %1) #0 {
  %3 = alloca %struct.i40iw_cm_node*, align 8
  %4 = alloca %struct.i40iw_puda_buf*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %3, align 8
  store %struct.i40iw_puda_buf* %1, %struct.i40iw_puda_buf** %4, align 8
  %9 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %10 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.tcphdr*
  store %struct.tcphdr* %12, %struct.tcphdr** %5, align 8
  %13 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %14 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = sub i64 %17, 12
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %21 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @ntohl(i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %25 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %115 [
    i32 129, label %27
    i32 132, label %82
    i32 133, label %85
    i32 139, label %99
    i32 137, label %114
    i32 136, label %114
    i32 135, label %114
    i32 134, label %114
    i32 130, label %114
    i32 138, label %114
    i32 128, label %114
    i32 131, label %114
  ]

27:                                               ; preds = %2
  %28 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %29 = call i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node* %28)
  %30 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %31 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %32 = call i32 @i40iw_check_syn(%struct.i40iw_cm_node* %30, %struct.tcphdr* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %116

36:                                               ; preds = %27
  %37 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %38 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @ntohl(i32 %39)
  %41 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %42 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i8* %40, i8** %43, align 8
  %44 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %45 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @i40iw_handle_tcp_options(%struct.i40iw_cm_node* %44, %struct.tcphdr* %45, i32 %46, i32 0)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %36
  %51 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %52 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @I40IW_DEBUG_CM, align 4
  %55 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %56 = call i32 @i40iw_debug(i32 %53, i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.i40iw_cm_node* %55)
  br label %116

57:                                               ; preds = %36
  %58 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %59 = call i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node* %58)
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr i8, i8* %60, i64 1
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %64 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %67 = call i32 @i40iw_send_ack(%struct.i40iw_cm_node* %66)
  %68 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %69 = call i32 @i40iw_send_mpa_request(%struct.i40iw_cm_node* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %57
  %73 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %74 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @I40IW_DEBUG_CM, align 4
  %77 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %78 = call i32 @i40iw_debug(i32 %75, i32 %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), %struct.i40iw_cm_node* %77)
  br label %116

79:                                               ; preds = %57
  %80 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %81 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %80, i32 0, i32 0
  store i32 131, i32* %81, align 8
  br label %116

82:                                               ; preds = %2
  %83 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %84 = call i32 @i40iw_passive_open_err(%struct.i40iw_cm_node* %83, i32 1)
  br label %116

85:                                               ; preds = %2
  %86 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %87 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @ntohl(i32 %88)
  %90 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %91 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i8* %89, i8** %92, align 8
  %93 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %94 = call i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node* %93)
  %95 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %96 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %95, i32 0, i32 0
  store i32 139, i32* %96, align 8
  %97 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %98 = call i32 @i40iw_send_reset(%struct.i40iw_cm_node* %97)
  br label %116

99:                                               ; preds = %2
  %100 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %101 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @ntohl(i32 %102)
  %104 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %105 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i8* %103, i8** %106, align 8
  %107 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %108 = call i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node* %107)
  %109 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %110 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %109, i32 0, i32 1
  %111 = call i32 @atomic_inc(i32* %110)
  %112 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %113 = call i32 @i40iw_send_reset(%struct.i40iw_cm_node* %112)
  br label %116

114:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  br label %115

115:                                              ; preds = %2, %114
  br label %116

116:                                              ; preds = %34, %115, %99, %85, %82, %79, %72, %50
  ret void
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_check_syn(%struct.i40iw_cm_node*, %struct.tcphdr*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

declare dso_local i32 @i40iw_handle_tcp_options(%struct.i40iw_cm_node*, %struct.tcphdr*, i32, i32) #1

declare dso_local i32 @i40iw_debug(i32, i32, i8*, %struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_send_ack(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_send_mpa_request(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_passive_open_err(%struct.i40iw_cm_node*, i32) #1

declare dso_local i32 @i40iw_send_reset(%struct.i40iw_cm_node*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
