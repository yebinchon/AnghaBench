; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_send_cm_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_send_cm_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)* }
%struct.iw_cm_event = type opaque
%struct.iw_cm_event.0 = type { i32, i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [31 x i8] c"event type received type = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_cm_node*, %struct.iw_cm_id*, i32, i32)* @i40iw_send_cm_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_send_cm_event(%struct.i40iw_cm_node* %0, %struct.iw_cm_id* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_cm_node*, align 8
  %7 = alloca %struct.iw_cm_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iw_cm_event.0, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %6, align 8
  store %struct.iw_cm_id* %1, %struct.iw_cm_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i32 @memset(%struct.iw_cm_event.0* %10, i32 0, i32 40)
  %12 = load i32, i32* %8, align 4
  %13 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %10, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* %9, align 4
  %15 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %10, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %61 [
    i32 130, label %17
    i32 131, label %46
    i32 128, label %50
    i32 129, label %59
    i32 132, label %60
  ]

17:                                               ; preds = %4
  %18 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %19 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %24 = call i32 @i40iw_fill_sockaddr4(%struct.i40iw_cm_node* %23, %struct.iw_cm_event.0* %10)
  br label %28

25:                                               ; preds = %17
  %26 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %27 = call i32 @i40iw_fill_sockaddr6(%struct.i40iw_cm_node* %26, %struct.iw_cm_event.0* %10)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %30 = bitcast %struct.i40iw_cm_node* %29 to i8*
  %31 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %10, i32 0, i32 6
  store i8* %30, i8** %31, align 8
  %32 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %33 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %10, i32 0, i32 5
  store i8* %35, i8** %36, align 8
  %37 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %38 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %10, i32 0, i32 4
  store i32 %40, i32* %41, align 8
  %42 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %43 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %10, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  br label %64

46:                                               ; preds = %4
  %47 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %48 = load %struct.iw_cm_id*, %struct.iw_cm_id** %7, align 8
  %49 = call i32 @i40iw_get_cmevent_info(%struct.i40iw_cm_node* %47, %struct.iw_cm_id* %48, %struct.iw_cm_event.0* %10)
  br label %64

50:                                               ; preds = %4
  %51 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %52 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %10, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %6, align 8
  %56 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %10, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  br label %64

59:                                               ; preds = %4
  br label %64

60:                                               ; preds = %4
  br label %64

61:                                               ; preds = %4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 -1, i32* %5, align 4
  br label %71

64:                                               ; preds = %60, %59, %50, %46, %28
  %65 = load %struct.iw_cm_id*, %struct.iw_cm_id** %7, align 8
  %66 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %65, i32 0, i32 0
  %67 = load i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)*, i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)** %66, align 8
  %68 = load %struct.iw_cm_id*, %struct.iw_cm_id** %7, align 8
  %69 = bitcast %struct.iw_cm_event.0* %10 to %struct.iw_cm_event*
  %70 = call i32 %67(%struct.iw_cm_id* %68, %struct.iw_cm_event* %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %64, %61
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @memset(%struct.iw_cm_event.0*, i32, i32) #1

declare dso_local i32 @i40iw_fill_sockaddr4(%struct.i40iw_cm_node*, %struct.iw_cm_event.0*) #1

declare dso_local i32 @i40iw_fill_sockaddr6(%struct.i40iw_cm_node*, %struct.iw_cm_event.0*) #1

declare dso_local i32 @i40iw_get_cmevent_info(%struct.i40iw_cm_node*, %struct.iw_cm_id*, %struct.iw_cm_event.0*) #1

declare dso_local i32 @i40iw_pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
