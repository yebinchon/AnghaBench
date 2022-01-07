; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_handle_rst_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_handle_rst_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.i40iw_puda_buf = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Bad state state = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*, %struct.i40iw_puda_buf*)* @i40iw_handle_rst_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_handle_rst_pkt(%struct.i40iw_cm_node* %0, %struct.i40iw_puda_buf* %1) #0 {
  %3 = alloca %struct.i40iw_cm_node*, align 8
  %4 = alloca %struct.i40iw_puda_buf*, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %3, align 8
  store %struct.i40iw_puda_buf* %1, %struct.i40iw_puda_buf** %4, align 8
  %5 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %6 = call i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node* %5)
  %7 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %8 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %61 [
    i32 131, label %10
    i32 134, label %10
    i32 135, label %31
    i32 140, label %35
    i32 132, label %35
    i32 136, label %35
    i32 133, label %42
    i32 141, label %45
    i32 138, label %46
    i32 139, label %46
    i32 137, label %46
    i32 130, label %56
  ]

10:                                               ; preds = %2, %2
  %11 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %12 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %27 [
    i32 128, label %14
    i32 129, label %26
  ]

14:                                               ; preds = %10
  %15 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %16 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %15, i32 0, i32 1
  store i32 129, i32* %16, align 4
  %17 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %18 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %17, i32 0, i32 0
  store i32 131, i32* %18, align 8
  %19 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %20 = call i32 @i40iw_send_syn(%struct.i40iw_cm_node* %19, i32 0)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %24 = call i32 @i40iw_active_open_err(%struct.i40iw_cm_node* %23, i32 0)
  br label %25

25:                                               ; preds = %22, %14
  br label %30

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %10, %26
  %28 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %29 = call i32 @i40iw_active_open_err(%struct.i40iw_cm_node* %28, i32 0)
  br label %30

30:                                               ; preds = %27, %25
  br label %62

31:                                               ; preds = %2
  %32 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %33 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %32, i32 0, i32 3
  %34 = call i32 @atomic_add_return(i32 1, i32* %33)
  br label %62

35:                                               ; preds = %2, %2, %2
  %36 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %37 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %41 = call i32 @i40iw_passive_open_err(%struct.i40iw_cm_node* %40, i32 0)
  br label %62

42:                                               ; preds = %2
  %43 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %44 = call i32 @i40iw_active_open_err(%struct.i40iw_cm_node* %43, i32 0)
  br label %62

45:                                               ; preds = %2
  br label %62

46:                                               ; preds = %2, %2, %2
  %47 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %48 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %50, align 8
  %52 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %53 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = call i32 %51(%struct.TYPE_2__* %54)
  br label %56

56:                                               ; preds = %2, %46
  %57 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %58 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %57, i32 0, i32 0
  store i32 141, i32* %58, align 8
  %59 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %60 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %59)
  br label %62

61:                                               ; preds = %2
  br label %62

62:                                               ; preds = %61, %56, %45, %42, %35, %31, %30
  ret void
}

declare dso_local i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_send_syn(%struct.i40iw_cm_node*, i32) #1

declare dso_local i32 @i40iw_active_open_err(%struct.i40iw_cm_node*, i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @i40iw_pr_err(i8*, i32) #1

declare dso_local i32 @i40iw_passive_open_err(%struct.i40iw_cm_node*, i32) #1

declare dso_local i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
