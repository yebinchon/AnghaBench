; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_get_listbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_puda_get_listbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_puda_buf = type { i32 }
%struct.list_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i40iw_puda_buf* (%struct.list_head*)* @i40iw_puda_get_listbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i40iw_puda_buf* @i40iw_puda_get_listbuf(%struct.list_head* %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca %struct.i40iw_puda_buf*, align 8
  store %struct.list_head* %0, %struct.list_head** %2, align 8
  store %struct.i40iw_puda_buf* null, %struct.i40iw_puda_buf** %3, align 8
  %4 = load %struct.list_head*, %struct.list_head** %2, align 8
  %5 = call i32 @list_empty(%struct.list_head* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load %struct.list_head*, %struct.list_head** %2, align 8
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.i40iw_puda_buf*
  store %struct.i40iw_puda_buf* %11, %struct.i40iw_puda_buf** %3, align 8
  %12 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  %13 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.list_head*
  %15 = call i32 @list_del(%struct.list_head* %14)
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %3, align 8
  ret %struct.i40iw_puda_buf* %17
}

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @list_del(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
