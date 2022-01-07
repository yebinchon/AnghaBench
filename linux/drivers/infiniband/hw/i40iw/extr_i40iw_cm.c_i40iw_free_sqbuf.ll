; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_free_sqbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_free_sqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_vsi = type { %struct.i40iw_puda_rsrc* }
%struct.i40iw_puda_rsrc = type { i32 }
%struct.i40iw_puda_buf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_free_sqbuf(%struct.i40iw_sc_vsi* %0, i8* %1) #0 {
  %3 = alloca %struct.i40iw_sc_vsi*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.i40iw_puda_buf*, align 8
  %6 = alloca %struct.i40iw_puda_rsrc*, align 8
  store %struct.i40iw_sc_vsi* %0, %struct.i40iw_sc_vsi** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.i40iw_puda_buf*
  store %struct.i40iw_puda_buf* %8, %struct.i40iw_puda_buf** %5, align 8
  %9 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %10 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %9, i32 0, i32 0
  %11 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %10, align 8
  store %struct.i40iw_puda_rsrc* %11, %struct.i40iw_puda_rsrc** %6, align 8
  %12 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %13 = getelementptr inbounds %struct.i40iw_puda_buf, %struct.i40iw_puda_buf* %12, i32 0, i32 0
  %14 = call i32 @atomic_dec_return(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %6, align 8
  %18 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %5, align 8
  %19 = call i32 @i40iw_puda_ret_bufpool(%struct.i40iw_puda_rsrc* %17, %struct.i40iw_puda_buf* %18)
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @i40iw_puda_ret_bufpool(%struct.i40iw_puda_rsrc*, %struct.i40iw_puda_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
