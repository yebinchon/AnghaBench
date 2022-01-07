; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32 }
%struct.i40iw_puda_buf = type { i64 }
%struct.tcphdr = type { i64, i64, i64, i64 }

@I40IW_PKT_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*, %struct.i40iw_puda_buf*)* @i40iw_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_process_packet(%struct.i40iw_cm_node* %0, %struct.i40iw_puda_buf* %1) #0 {
  %3 = alloca %struct.i40iw_cm_node*, align 8
  %4 = alloca %struct.i40iw_puda_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %3, align 8
  store %struct.i40iw_puda_buf* %1, %struct.i40iw_puda_buf** %4, align 8
  %9 = load i32, i32* @I40IW_PKT_TYPE_UNKNOWN, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %11 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.tcphdr*
  store %struct.tcphdr* %13, %struct.tcphdr** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %15 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 130, i32* %5, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %21 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  store i32 129, i32* %5, align 4
  %25 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %26 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 128, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %24
  br label %38

31:                                               ; preds = %19
  %32 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %33 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 131, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %31
  br label %38

38:                                               ; preds = %37, %30
  br label %39

39:                                               ; preds = %38, %18
  %40 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %41 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %72 [
    i32 129, label %47
    i32 128, label %51
    i32 131, label %55
    i32 130, label %68
  ]

47:                                               ; preds = %45
  %48 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %49 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %50 = call i32 @i40iw_handle_syn_pkt(%struct.i40iw_cm_node* %48, %struct.i40iw_puda_buf* %49)
  br label %87

51:                                               ; preds = %45
  %52 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %53 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %54 = call i32 @i40iw_handle_synack_pkt(%struct.i40iw_cm_node* %52, %struct.i40iw_puda_buf* %53)
  br label %87

55:                                               ; preds = %45
  %56 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %57 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %58 = call i32 @i40iw_handle_ack_pkt(%struct.i40iw_cm_node* %56, %struct.i40iw_puda_buf* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %66 = call i32 @i40iw_handle_fin_pkt(%struct.i40iw_cm_node* %65)
  br label %67

67:                                               ; preds = %64, %61, %55
  br label %87

68:                                               ; preds = %45
  %69 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %70 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %71 = call i32 @i40iw_handle_rst_pkt(%struct.i40iw_cm_node* %69, %struct.i40iw_puda_buf* %70)
  br label %87

72:                                               ; preds = %45
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %77 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %78 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.tcphdr*
  %81 = call i32 @i40iw_check_seq(%struct.i40iw_cm_node* %76, %struct.tcphdr* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  %84 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %85 = call i32 @i40iw_handle_fin_pkt(%struct.i40iw_cm_node* %84)
  br label %86

86:                                               ; preds = %83, %75, %72
  br label %87

87:                                               ; preds = %86, %68, %67, %51, %47
  ret void
}

declare dso_local i32 @i40iw_handle_syn_pkt(%struct.i40iw_cm_node*, %struct.i40iw_puda_buf*) #1

declare dso_local i32 @i40iw_handle_synack_pkt(%struct.i40iw_cm_node*, %struct.i40iw_puda_buf*) #1

declare dso_local i32 @i40iw_handle_ack_pkt(%struct.i40iw_cm_node*, %struct.i40iw_puda_buf*) #1

declare dso_local i32 @i40iw_handle_fin_pkt(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_handle_rst_pkt(%struct.i40iw_cm_node*, %struct.i40iw_puda_buf*) #1

declare dso_local i32 @i40iw_check_seq(%struct.i40iw_cm_node*, %struct.tcphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
