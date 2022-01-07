; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_setup_virt_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_setup_virt_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32 }
%struct.i40iw_qp = type { i32, %struct.i40iw_pbl }
%struct.i40iw_pbl = type { i64, %struct.i40iw_qp_mr }
%struct.i40iw_qp_mr = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.i40iw_qp_init_info = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, %struct.i40iw_qp*, %struct.i40iw_qp_init_info*)* @i40iw_setup_virt_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_setup_virt_qp(%struct.i40iw_device* %0, %struct.i40iw_qp* %1, %struct.i40iw_qp_init_info* %2) #0 {
  %4 = alloca %struct.i40iw_device*, align 8
  %5 = alloca %struct.i40iw_qp*, align 8
  %6 = alloca %struct.i40iw_qp_init_info*, align 8
  %7 = alloca %struct.i40iw_pbl*, align 8
  %8 = alloca %struct.i40iw_qp_mr*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %4, align 8
  store %struct.i40iw_qp* %1, %struct.i40iw_qp** %5, align 8
  store %struct.i40iw_qp_init_info* %2, %struct.i40iw_qp_init_info** %6, align 8
  %9 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %10 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %9, i32 0, i32 1
  store %struct.i40iw_pbl* %10, %struct.i40iw_pbl** %7, align 8
  %11 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %7, align 8
  %12 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %11, i32 0, i32 1
  store %struct.i40iw_qp_mr* %12, %struct.i40iw_qp_mr** %8, align 8
  %13 = load %struct.i40iw_qp_mr*, %struct.i40iw_qp_mr** %8, align 8
  %14 = getelementptr inbounds %struct.i40iw_qp_mr, %struct.i40iw_qp_mr* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %17 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.i40iw_qp_mr*, %struct.i40iw_qp_mr** %8, align 8
  %19 = getelementptr inbounds %struct.i40iw_qp_mr, %struct.i40iw_qp_mr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cpu_to_le64(i32 %20)
  %22 = load %struct.i40iw_qp_init_info*, %struct.i40iw_qp_init_info** %6, align 8
  %23 = getelementptr inbounds %struct.i40iw_qp_init_info, %struct.i40iw_qp_init_info* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %7, align 8
  %25 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %3
  %29 = load %struct.i40iw_qp_init_info*, %struct.i40iw_qp_init_info** %6, align 8
  %30 = getelementptr inbounds %struct.i40iw_qp_init_info, %struct.i40iw_qp_init_info* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.i40iw_qp_mr*, %struct.i40iw_qp_mr** %8, align 8
  %32 = getelementptr inbounds %struct.i40iw_qp_mr, %struct.i40iw_qp_mr* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.i40iw_qp_init_info*, %struct.i40iw_qp_init_info** %6, align 8
  %36 = getelementptr inbounds %struct.i40iw_qp_init_info, %struct.i40iw_qp_init_info* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.i40iw_qp_mr*, %struct.i40iw_qp_mr** %8, align 8
  %38 = getelementptr inbounds %struct.i40iw_qp_mr, %struct.i40iw_qp_mr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.i40iw_qp_init_info*, %struct.i40iw_qp_init_info** %6, align 8
  %42 = getelementptr inbounds %struct.i40iw_qp_init_info, %struct.i40iw_qp_init_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %56

43:                                               ; preds = %3
  %44 = load %struct.i40iw_qp_mr*, %struct.i40iw_qp_mr** %8, align 8
  %45 = getelementptr inbounds %struct.i40iw_qp_mr, %struct.i40iw_qp_mr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.i40iw_qp_init_info*, %struct.i40iw_qp_init_info** %6, align 8
  %49 = getelementptr inbounds %struct.i40iw_qp_init_info, %struct.i40iw_qp_init_info* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.i40iw_qp_mr*, %struct.i40iw_qp_mr** %8, align 8
  %51 = getelementptr inbounds %struct.i40iw_qp_mr, %struct.i40iw_qp_mr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.i40iw_qp_init_info*, %struct.i40iw_qp_init_info** %6, align 8
  %55 = getelementptr inbounds %struct.i40iw_qp_init_info, %struct.i40iw_qp_init_info* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %43, %28
  ret i32 0
}

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
