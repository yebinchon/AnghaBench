; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_ieq_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_puda.c_i40iw_ieq_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_vsi = type { i32, %struct.i40iw_puda_rsrc* }
%struct.i40iw_puda_rsrc = type { i32, i32, i32, i32 }
%struct.i40iw_puda_buf = type { i32 }
%struct.i40iw_sc_qp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_sc_vsi*, %struct.i40iw_puda_buf*)* @i40iw_ieq_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_ieq_receive(%struct.i40iw_sc_vsi* %0, %struct.i40iw_puda_buf* %1) #0 {
  %3 = alloca %struct.i40iw_sc_vsi*, align 8
  %4 = alloca %struct.i40iw_puda_buf*, align 8
  %5 = alloca %struct.i40iw_puda_rsrc*, align 8
  %6 = alloca %struct.i40iw_sc_qp*, align 8
  %7 = alloca i32, align 4
  store %struct.i40iw_sc_vsi* %0, %struct.i40iw_sc_vsi** %3, align 8
  store %struct.i40iw_puda_buf* %1, %struct.i40iw_puda_buf** %4, align 8
  %8 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %9 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %8, i32 0, i32 1
  %10 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %9, align 8
  store %struct.i40iw_puda_rsrc* %10, %struct.i40iw_puda_rsrc** %5, align 8
  store %struct.i40iw_sc_qp* null, %struct.i40iw_sc_qp** %6, align 8
  %11 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %5, align 8
  %12 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %15 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %18 = call %struct.i40iw_sc_qp* @i40iw_ieq_get_qp(i32 %16, %struct.i40iw_puda_buf* %17)
  store %struct.i40iw_sc_qp* %18, %struct.i40iw_sc_qp** %6, align 8
  %19 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %20 = icmp ne %struct.i40iw_sc_qp* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %5, align 8
  %23 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %5, align 8
  %27 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %28 = call i32 @i40iw_puda_ret_bufpool(%struct.i40iw_puda_rsrc* %26, %struct.i40iw_puda_buf* %27)
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %5, align 8
  %31 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %6, align 8
  %32 = load %struct.i40iw_puda_buf*, %struct.i40iw_puda_buf** %4, align 8
  %33 = call i32 @i40iw_ieq_handle_exception(%struct.i40iw_puda_rsrc* %30, %struct.i40iw_sc_qp* %31, %struct.i40iw_puda_buf* %32)
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %5, align 8
  %36 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %5, align 8
  %42 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.i40iw_puda_rsrc*, %struct.i40iw_puda_rsrc** %5, align 8
  %45 = getelementptr inbounds %struct.i40iw_puda_rsrc, %struct.i40iw_puda_rsrc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  ret void
}

declare dso_local %struct.i40iw_sc_qp* @i40iw_ieq_get_qp(i32, %struct.i40iw_puda_buf*) #1

declare dso_local i32 @i40iw_puda_ret_bufpool(%struct.i40iw_puda_rsrc*, %struct.i40iw_puda_buf*) #1

declare dso_local i32 @i40iw_ieq_handle_exception(%struct.i40iw_puda_rsrc*, %struct.i40iw_sc_qp*, %struct.i40iw_puda_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
