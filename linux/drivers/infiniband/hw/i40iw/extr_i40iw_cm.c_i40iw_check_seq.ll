; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_check_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_check_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.tcphdr = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"seq number\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_cm_node*, %struct.tcphdr*)* @i40iw_check_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_check_seq(%struct.i40iw_cm_node* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.i40iw_cm_node*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %12 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %16 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %20 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohl(i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %24 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ntohl(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %28 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %45

35:                                               ; preds = %2
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @between(i64 %36, i64 %37, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %35
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %51 = call i32 @i40iw_indicate_pkt_err(%struct.i40iw_cm_node* %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @between(i64, i64, i64) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

declare dso_local i32 @i40iw_indicate_pkt_err(%struct.i40iw_cm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
