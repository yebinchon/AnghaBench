; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_free_retrans_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_free_retrans_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32, %struct.i40iw_timer_entry*, %struct.i40iw_device* }
%struct.i40iw_timer_entry = type { i64 }
%struct.i40iw_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*)* @i40iw_free_retrans_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_free_retrans_entry(%struct.i40iw_cm_node* %0) #0 {
  %2 = alloca %struct.i40iw_cm_node*, align 8
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca %struct.i40iw_timer_entry*, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %2, align 8
  %5 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %6 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %5, i32 0, i32 2
  %7 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  store %struct.i40iw_device* %7, %struct.i40iw_device** %3, align 8
  %8 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %9 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %8, i32 0, i32 1
  %10 = load %struct.i40iw_timer_entry*, %struct.i40iw_timer_entry** %9, align 8
  store %struct.i40iw_timer_entry* %10, %struct.i40iw_timer_entry** %4, align 8
  %11 = load %struct.i40iw_timer_entry*, %struct.i40iw_timer_entry** %4, align 8
  %12 = icmp ne %struct.i40iw_timer_entry* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %15 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %14, i32 0, i32 1
  store %struct.i40iw_timer_entry* null, %struct.i40iw_timer_entry** %15, align 8
  %16 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %17 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %16, i32 0, i32 0
  %18 = load %struct.i40iw_timer_entry*, %struct.i40iw_timer_entry** %4, align 8
  %19 = getelementptr inbounds %struct.i40iw_timer_entry, %struct.i40iw_timer_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @i40iw_free_sqbuf(i32* %17, i8* %21)
  %23 = load %struct.i40iw_timer_entry*, %struct.i40iw_timer_entry** %4, align 8
  %24 = call i32 @kfree(%struct.i40iw_timer_entry* %23)
  %25 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %26 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %25, i32 0, i32 0
  %27 = call i32 @atomic_dec(i32* %26)
  br label %28

28:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @i40iw_free_sqbuf(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.i40iw_timer_entry*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
