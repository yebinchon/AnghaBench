; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cm_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"send_entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_cm_node*)* @i40iw_cm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_cm_close(%struct.i40iw_cm_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40iw_cm_node*, align 8
  %4 = alloca i32, align 4
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %6 = icmp ne %struct.i40iw_cm_node* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %12 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %43 [
    i32 131, label %14
    i32 130, label %14
    i32 132, label %14
    i32 143, label %14
    i32 147, label %14
    i32 134, label %14
    i32 135, label %14
    i32 145, label %19
    i32 142, label %24
    i32 141, label %24
    i32 139, label %24
    i32 129, label %24
    i32 144, label %24
    i32 137, label %25
    i32 136, label %30
    i32 128, label %30
    i32 140, label %30
    i32 146, label %30
    i32 138, label %30
    i32 133, label %33
  ]

14:                                               ; preds = %10, %10, %10, %10, %10, %10, %10
  %15 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %16 = call i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node* %15)
  %17 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %18 = call i32 @i40iw_send_reset(%struct.i40iw_cm_node* %17)
  br label %43

19:                                               ; preds = %10
  %20 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %21 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %20, i32 0, i32 0
  store i32 139, i32* %21, align 4
  %22 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %23 = call i32 @i40iw_send_fin(%struct.i40iw_cm_node* %22)
  br label %43

24:                                               ; preds = %10, %10, %10, %10, %10
  store i32 -1, i32* %4, align 4
  br label %43

25:                                               ; preds = %10
  %26 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %27 = call i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node* %26)
  %28 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %29 = call i32 @i40iw_send_reset(%struct.i40iw_cm_node* %28)
  br label %43

30:                                               ; preds = %10, %10, %10, %10, %10
  %31 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %32 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %31)
  br label %43

33:                                               ; preds = %10
  %34 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %35 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %42 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %41)
  br label %43

43:                                               ; preds = %10, %40, %30, %25, %24, %19, %14
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %7
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_send_reset(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_send_fin(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
