; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_destroy_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_destroy_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { {}*, i32, i32 }
%struct.i40iw_device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"cm_id->provider_data was NULL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_destroy_listen(%struct.iw_cm_id* %0) #0 {
  %2 = alloca %struct.iw_cm_id*, align 8
  %3 = alloca %struct.i40iw_device*, align 8
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %2, align 8
  %4 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %5 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.i40iw_device* @to_iwdev(i32 %6)
  store %struct.i40iw_device* %7, %struct.i40iw_device** %3, align 8
  %8 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %9 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %14 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %13, i32 0, i32 0
  %15 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %16 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @i40iw_cm_del_listen(i32* %14, i32 %17, i32 1)
  br label %21

19:                                               ; preds = %1
  %20 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %12
  %22 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %23 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.iw_cm_id*)**
  %25 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %24, align 8
  %26 = load %struct.iw_cm_id*, %struct.iw_cm_id** %2, align 8
  %27 = call i32 %25(%struct.iw_cm_id* %26)
  ret i32 0
}

declare dso_local %struct.i40iw_device* @to_iwdev(i32) #1

declare dso_local i32 @i40iw_cm_del_listen(i32*, i32, i32) #1

declare dso_local i32 @i40iw_pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
