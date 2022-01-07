; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_allocate_method_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_allocate_method_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_mgmt_method_table = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_mgmt_method_table**)* @allocate_method_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_method_table(%struct.ib_mad_mgmt_method_table** %0) #0 {
  %2 = alloca %struct.ib_mad_mgmt_method_table**, align 8
  store %struct.ib_mad_mgmt_method_table** %0, %struct.ib_mad_mgmt_method_table*** %2, align 8
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call %struct.ib_mad_mgmt_method_table* @kzalloc(i32 4, i32 %3)
  %5 = load %struct.ib_mad_mgmt_method_table**, %struct.ib_mad_mgmt_method_table*** %2, align 8
  store %struct.ib_mad_mgmt_method_table* %4, %struct.ib_mad_mgmt_method_table** %5, align 8
  %6 = load %struct.ib_mad_mgmt_method_table**, %struct.ib_mad_mgmt_method_table*** %2, align 8
  %7 = load %struct.ib_mad_mgmt_method_table*, %struct.ib_mad_mgmt_method_table** %6, align 8
  %8 = icmp ne %struct.ib_mad_mgmt_method_table* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  br label %13

13:                                               ; preds = %10, %9
  %14 = phi i32 [ 0, %9 ], [ %12, %10 ]
  ret i32 %14
}

declare dso_local %struct.ib_mad_mgmt_method_table* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
